//
//  User.swift
//  ToDoList
//
//  Created by Amjad Khan on 02/05/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
