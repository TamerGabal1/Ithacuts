//
//  Post.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 5/3/24.
//

import Foundation

struct Post: Codable, Equatable, Hashable, CustomStringConvertible, Identifiable{
    let description: String
    let id: Int
    let image_path: String?
    let title: String
    let user_id: Int
}
