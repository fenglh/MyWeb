//
//  File.swift
//  
//
//  Created by fenglh on 2023/10/11.
//

import Vapor
struct BlogRouter: RouteCollection {
    let controller = BlogFrontendController()
    func boot(routes: RoutesBuilder) throws {
        routes.get("blog", use: self.controller.blogView)
        routes.get(.anything, use: self.controller.postView) 
    }
}
