//
//  Person.swift
//  MVP-Level One
//
//  Created by Александр Печинкин on 03.05.2024.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
