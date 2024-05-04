//
//  Barber.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import Foundation

struct Barber: Codable, Hashable{
    let bio: String
    let comments: [Comment]
    let contacts: String
    let id: Int
    let posts: [Post]?
    let received_reviews: [Review]
    let username: String
}

//[
//    {
//        "bio": "guy",
//        "comments": [],
//        "contacts": "702",
//        "id": 1,
//        "posts": [
//            {
//                "description": "look at my latest haircut",
//                "id": 1,
//                "image_path": null,
//                "title": "new cut",
//                "user_id": 1
//            }
//        ],
//        "received_reviews": [],
//        "reviews": [
//            {
//                "description": "does nice haircuts",
//                "id": 1,
//                "receiver_id": 2,
//                "sender_id": 1
//            }
//        ],
//        "username": "tey6"
//    },
//    {
//        "bio": "fella",
//        "comments": [
//            {
//                "description": "youre a great person",
//                "id": 1,
//                "post": {
//                    "description": "look at my latest haircut",
//                    "id": 1,
//                    "image_path": null,
//                    "title": "new cut",
//                    "user_id": 1
//                },
//                "post_id": 1,
//                "user_id": 2
//            }
//        ],
//        "contacts": "914",
//        "id": 2,
//        "posts": [],
//        "received_reviews": [
//            {
//                "description": "does nice haircuts",
//                "id": 1,
//                "receiver_id": 2,
//                "sender_id": 1
//            }
//        ],
//        "reviews": [],
//        "username": "iju2"
//    }
//]
