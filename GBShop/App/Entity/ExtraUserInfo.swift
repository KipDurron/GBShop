//
//  ExtraUserInfo.swift
//  GBShop
//
//  Created by Илья Кадыров on 29.06.2021.
//

struct ExtraUserInfo: Codable {
    let id: Int
    let password: String
    let email: String
    let gender: String
    let creditCard: String
    let bio: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case password = "password"
        case email = "email"
        case gender = "gender"
        case creditCard = "credit_card"
        case bio = "bio"
    }
}
