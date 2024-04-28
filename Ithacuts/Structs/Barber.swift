//
//  Barber.swift
//  Ithacuts
//
//  Created by Tamer Gabal on 4/28/24.
//

import Foundation

struct Barber: Hashable{
    let name: String
    let profileImage: String
    let bio: String
    let images: [String]
    let rating: Int
    let comments: [Comment]?
}

var barbers = [
    Barber(name: "Tamer", profileImage: "figure.wave", bio: "your mom", images: ["bolt.fill"], rating: 7, comments: [Comment(user: "yo momma", body: "asdfgh", image: nil)]),
    Barber(name: "Paul", profileImage: "figure", bio: "womp womp", images: ["righttriangle"], rating: 4, comments: [Comment(user: "yo daddy", body: "kjl;khbj m", image: nil)]),
    Barber(name: "Tyler", profileImage: "figure.walk", bio: "pee pee", images: ["lock.doc"], rating: 10, comments: [Comment(user: "yo brother", body: "poo poo", image: nil)]),
    Barber(name: "Ian", profileImage: "figure.stand", bio: "goo goo", images: ["network"], rating: 8, comments: [Comment(user: "yo sister", body: "kjohioguh", image: nil)]),
]
