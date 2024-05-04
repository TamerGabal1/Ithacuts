//
//  Profile.swift
//  Ithacuts
//
//  Created by Paul Hwang on 5/2/24.
//

import Foundation

struct Profile: Codable, Equatable, Hashable {
    let username: String
    let age: Int?
    let preference: String?
    let hairStyle: String?
    let profilePhoto: [String]?
    let email: String
    let phoneNumber: String
}

var profiles = [
    Profile(username: "Sample User", age: 19, preference: "Mens Hair", hairStyle: "Mens, 1C", profilePhoto: ["xbox.logo"], email: "abc123@cornell.edu", phoneNumber: "(123) 456-7890")
]
