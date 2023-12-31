//
//  File.swift
//  
//
//  Created by fenglh on 2023/10/17.
//


import Vapor
struct AdminController {
    func homeView(req: Request) throws -> EventLoopFuture<View> {
        let user = try req.auth.require(UserModel.self)

        struct Context: Encodable {
            let title: String
            let header: String
            let message: String
            let username: String
        }
        let context = Context(title: "myPage - Admin", header: "Hi \(user.email)", message: "welcome to the CMS!", username: user.email)
        return req.view.render("Admin/Home", context)
    }
}
