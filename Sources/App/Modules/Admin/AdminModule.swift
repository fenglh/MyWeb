//
//  AdminModule.swift
//  
//
//  Created by fenglh on 2023/10/17.
//


import Vapor
import Fluent

struct AdminModule: Module {
    var router: RouteCollection? { AdminRouter() }
}
