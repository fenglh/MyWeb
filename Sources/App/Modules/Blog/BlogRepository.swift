//
//  File.swift
//  
//
//  Created by fenglh on 2023/10/11.
//

import Vapor
struct BlogRepository {
    func publishedPosts() -> [BlogPost] {
        [
        BlogPost(title: "Indonesia", slug: "indonesia",
            image: "/images/logo1.png",
            excerpt: "Et excepturi id harum ipsam doloremque.",
            date: "2019",
            category:nil,
            content: "111事实上事实上少时诵诗书是撒是撒是撒是撒事实上事实上少时诵诗书飒飒飒事实上事实上少时诵诗书是撒是撒"),

        BlogPost(title: "Mauritius", slug: "mauritius",
            image: "/images/logo1.png",
            excerpt: "Pariatur debitis quod occaecati quidem. ",
            date: "2016",
            category: "Islands",
            content: "222事实上事实上少时诵诗书是撒是撒是撒是撒事实上事实上少时诵诗书飒飒飒事实上事实上少时诵诗书是撒是撒"),

        BlogPost(title: "California", slug: "california",
            image: "/images/logo1.png",
            excerpt: "Voluptates ipsa eos sit distinctio.",
            date: "2015",
            category: nil,
            content: "333事实上事实上少时诵诗书是撒是撒是撒是撒事实上事实上少时诵诗书飒飒飒事实上事实上少时诵诗书是撒是撒"),

        BlogPost(title: "The Maldives", slug: "the-maldives",
            image: "/images/logo1.png",
            excerpt: "Possimus est labore recusandae asperiores fuga sequisit.",
            date: "2014",
            category: "Islands",
            content: "Dignissimos mollitia doloremque omnis repellendus quibusdam ut amet. Autem vitae enim consequuntur. Quis quo esse numquam doloremque esse. Neque accusantium sint tempore distinctio. Dolorem quibusdam et ab impedit necessitatibus cum. Eius voluptatem ducimus velit non."),

        BlogPost(title: "Sri Lanka", slug: "sri-lanka",
            image: "/images/logo1.png",
            excerpt: "Ratione est quo nemo",
             date:"2014",
            category: "Islands",
            content: "Deserunt nulla culpa quibusdam. Ducimus delectus ea ipsa  quisquam aut in dolor placeat dolore deleniti quia. Error aliquam harum  earum. Quos dignissimos dolores ratione illo. Dolores velit sunt sed quas  quis itaque sit omnis. Molestias explicabo aut eum amet blanditiis quia  similique soluta."),
        ]
    }
}
