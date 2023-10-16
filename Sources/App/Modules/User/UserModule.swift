//
//  UserModule.swift
//
//
//  Created by fenglh on 2023/10/16.
//

import Vapor
import Fluent

extension UserModel: SessionAuthenticatable {
    typealias SessionID = UUID
    var sessionID: SessionID { self.id! }
}

struct UserModule: Module {

    var router: RouteCollection? { UserRouter() }
    var migrations: [Migration] {
        [ UserMigration_v1_0_0(), ]
    }
}
