//
//  LoginResult.swift
//  GBShop
//
//  Created by Илья Кадыров on 23.06.2021.
//

struct LoginResponse: Codable {
    let result: Int
    let user: User
    let errorMessage: String?
}
