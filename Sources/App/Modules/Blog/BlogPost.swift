//
//  File.swift
//  
//
//  Created by fenglh on 2023/10/11.
//

import Foundation
struct BlogPost: Encodable {
    let title: String
    let slug: String
    let image: String
    let excerpt: String
    let date: String
    let category: String?
    let content: String
}
