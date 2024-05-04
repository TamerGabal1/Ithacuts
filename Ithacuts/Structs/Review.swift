//
//  Review.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 5/3/24.
//

import Foundation

struct Review: Codable, Equatable, Hashable, CustomStringConvertible, Identifiable{
    let description: String
    let id: Int
    let receiver_id: Int
    let sender_id: Int
}
