//
//  Post.swift
//  startap
//
//  Created by Ksenia Svidunovich on 19.12.2024.
//

import Foundation

struct Post: Decodable, Identifiable, Equatable {
    let id: Int
    let title: String
    let text: String
    let likes: [Int]
    let dislikes: Int
    let startup_id: Int?
    let tag_list: [String]
    let category_list: [String]
    let cover: [String: String]
    let created_at: String
    
    var likeDislikeBalance: Int {
        return likes.count - dislikes
    }
}

//struct Tag: Decodable {
//    let id: Int
//    let name: String
//    let created_at: String
//    let updated_at: String
//    let taggings_count: Int
//}

