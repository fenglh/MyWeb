//
//  AdminRouter.swift
//  
//
//  Created by fenglh on 2023/10/17.
//

import Foundation


import Vapor
struct AdminRouter: RouteCollection {
    let controller = AdminController()
    func boot(routes: RoutesBuilder) throws {
        routes.grouped(UserModelSessionAuthenticator()).get("admin", use: self.controller.homeView)
    }
}
