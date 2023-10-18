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
        static var avatar: FieldKey { "avatar" }
    }

    // MARK: - fields
    @ID() var id: UUID?
    @Field(key: FieldKeys.email) var email: String
    @Field(key: FieldKeys.password) var password: String
    @Field(key: FieldKeys.avatar) var avatar: String?

    init() { }

    init(id: UserModel.IDValue? = nil, email: String, password: String, avatar: String? = nil) {
        self.id = id
        self.email = email
        self.password = password
        self.avatar = avatar
    }
}
