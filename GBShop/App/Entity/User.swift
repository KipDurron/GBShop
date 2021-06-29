//
//  User.swift
//  GBShop
//
//  Created by Илья Кадыров on 23.06.2021.
//

import Foundation

struct User: Codable {
    let id: Int
    let login: String
    let name: String
    let lastname: String
    let password: String
    let email: String
    let gender: String
    let creditCard: String
    let bio: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
        case password = "password"
        case email = "email"
        case gender = "gender"
        case creditCard = "credit_card"
        case bio = "bio"
    }
}
