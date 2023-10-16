//
//  FrontendModule.swift
//
//
//  Created by fenglh on 2023/10/13.
//

import Vapor
import Fluent

struct FrontendModule: Module {
    var router: RouteCollection? {
        FrontendRouter()
    }
}
