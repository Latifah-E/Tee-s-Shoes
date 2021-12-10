//
//  NewsData.swift
//  Tee's Shoes
//
//  Created by Smartcodes on 18/11/2021.
//

let news = [
    Article(image: "news0", title: "Adidas opens up a news store", read: "4 min read", posted: "1 day ago", context:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore", headline: "headline0", position: "1", objectee: .object1, context2:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore", headliner: "Nike Launches A New Slogan Just After Recent Merger"),
    Article(image: "news1", title: "Adidas opens up a news store", read: "5 min read",  posted:"2 days ago", context:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore",headline: "headline1", position: "2",objectee: .object2, context2:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore",headliner: "Nike Launches A New Slogan Just After Recent Merger"),
    Article(image: "news2", title: "Adidas opens up a news store", read: "2 min read",  posted:"45 mins ago", context:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore", headline: "headline2", position: "3", objectee: .object3, context2:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore", headliner: "Nike Launches A New Slogan Just After Recent Merger"),
    
]

struct Article {
    let image: String
    let title: String
    let read: String
    let posted: String
    let context: String
    let headline: String
    let position: String
    let objectee: ObjectView
    let context2: String
    let headliner: String
}
