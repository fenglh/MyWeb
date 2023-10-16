//
//  BlogCategoryModel.swift
//
//
//  Created by fenglh on 2023/10/12.
//

import Vapor
import Fluent
// model 相当于table中的row
final class BlogCategoryModel: Model {
    
    // 表名
    static let schema = "blog_categories"
    
    struct FieldKeys {
        static var title: FieldKey { "title" }
    }

    @ID(key: .id) var id: UUID?
    
    // 该key参数指定数据库中字段的名称。
    @Field(key: FieldKeys.title) var title: String
    
    //表示当前BlogCategoryModel 和 BlogPostModel的对应关系
    @Children(for: \.$category) var posts: [BlogPostModel]
    
    init() { }
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}


extension BlogCategoryModel {
    // ViewContext对象，可以安全地将其作为Leaf的上下文项传递。 这是因为模型可以包含敏感信息，只考虑带有密码哈希的用户，最好定义一个可编码的视图上下文并将数据库模型映射到其中。
    struct ViewContext: Encodable {
        var id: String
        var title: String
    
        init(model: BlogCategoryModel) {
            self.id = model.id!.uuidString
            self.title = model.title
        }
    }
    var viewContext: ViewContext {
        .init(model: self)
    }
}
