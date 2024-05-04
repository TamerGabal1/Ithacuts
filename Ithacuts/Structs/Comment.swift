//
//  Comment.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import Foundation

struct Comment: Codable, Equatable, Hashable {
    let description: String
    let id: Int
    let post: Post
    let post_id: Int
    let user_id: Int
}
