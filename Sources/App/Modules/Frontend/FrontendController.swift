//
//  File.swift
//
//
//  Created by fenglh on 2023/10/11.
//

import Vapor
struct FrontendController {

     func homeView(req: Request) throws -> EventLoopFuture<View> {
        struct Context: Encodable {
            let title: String
            let header: String
            let message: String
        }

        let context = Context(title: "三角's Blog - 首页",
        header: "大家好,",
        message: "欢迎大家访问我的博客!")
        return req.view.render("home", context)
    }
}
