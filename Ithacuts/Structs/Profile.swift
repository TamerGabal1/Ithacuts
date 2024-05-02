//
//  Profile.swift
//  Ithacuts
//
//  Created by Paul Hwang on 5/2/24.
//

import Foundation

struct Profile: Hashable {
    let username: String
    let age: Int
    let preference: String
    let hairStyle: String
    let profilePhoto: [String]
}

var profiles = [
    Profile(username: "MadN00bSmoke", age: 10, preference: "mens hair", hairStyle: "3A", profilePhoto: ["xbox.logo"])
]