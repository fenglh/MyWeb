//
//  File.swift
//
//
//  Created by fenglh on 2023/10/11.
//

import Vapor
struct FrontendRouter: RouteCollection {
    let controller = FrontendController()
    func boot(routes: RoutesBuilder) throws {
        routes.grouped(UserModelSessionAuthenticator()).get(use: self.controller.homeView)
    }
}
