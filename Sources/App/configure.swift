import Fluent
import FluentSQLiteDriver
import Leaf
import Vapor
import LeafKit
import LiquidLocalDriver

// https://xuebaonline.com/Vapor%E7%B3%BB%E5%88%97%20(%E4%B8%89)%20:%20%E4%BD%BF%E7%94%A8Leaf%E6%9E%84%E5%BB%BA%E7%BD%91%E7%AB%99/

public func configure(_ app: Application) async throws {

    app.sessions.use(.fluent)
    app.migrations.add(SessionRecord.migration)
    app.middleware.use(app.sessions.middleware)
    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
    
    app.routes.defaultMaxBodySize = "10mb"
    app.fileStorages.use(.local(publicUrl: "http://localhost:8080",
                                publicPath: app.directory.publicDirectory,
                                workDirectory: "assets"), as: .local)
    
    app.leaf.cache.isEnabled = app.environment.isRelease
    app.views.use(.leaf)
    let workingDirectory = app.directory.workingDirectory
    app.leaf.configuration.rootDirectory = "/"
    let leafSource = ModularViewFiles(workingDirectory: workingDirectory, fileio: app.fileio)
    app.leaf.sources = LeafSources.singleSource(leafSource)
  

    let modules: [Module] = [
        UserModule(),
        FrontendModule(),
        AdminModule(),
        BlogModule()
    ]
    for module in modules {
        try module.configure(app)
    }
}
