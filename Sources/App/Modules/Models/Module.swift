//
//  Module.swift
//  
//
//  Created by fenglh on 2023/10/13.
//

import Vapor
import Fluent

protocol Module {
    var router: RouteCollection? { get }
    var migrations: [Migration] { get }
    func configure(_ app: Application) throws
}

extension Module {
    var router: RouteCollection? { nil }
    var migrations: [Migration] { [] }

    func configure(_ app: Application) throws {
        for migration in self.migrations {
            app.migrations.add(migration)
        }
        if let router = self.router {
            try router.boot(routes: app.routes)
        }
    }
}
