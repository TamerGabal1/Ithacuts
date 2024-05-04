//
//  Comment.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import Foundation

struct Comment: Codable, Equatable, Hashable {
    let user: String
    let body: String
    let image: String?
}
