//
//  UserModel.swift
//  
//
//  Created by fenglh on 2023/10/16.
//

import Vapor
import Fluent

final class UserModel: Model {

    static let schema = "user_users"
    struct FieldKeys {
        static var email: FieldKey { "email" }
        static var password: FieldKey { "password" }
    }

    // MARK: - fields
    @ID() var id: UUID?
    @Field(key: FieldKeys.email) var email: String
    @Field(key: FieldKeys.password) var password: String

    init() { }

    init(id: UserModel.IDValue? = nil, email: String, password: String) {
        self.id = id
        self.email = email
        self.password = password
    }
}