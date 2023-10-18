//
//  BlogModule.swift
//
//
//  Created by fenglh on 2023/10/13.
//

import Vapor
import Fluent

struct BlogModule: Module {
    static var name: String = "blog"
    var router: RouteCollection? { BlogRouter() }
    var migrations: [Migration] {
        [
            BlogMigration_v1_0_0(),
            BlogMigration_v1_1_0()
        ]
    }
}
