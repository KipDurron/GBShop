//
//  LogoutResponse.swift
//  GBShop
//
//  Created by Илья Кадыров on 29.06.2021.
//

struct StandartResponse: Codable {
    let result: Int
    var errorMessage: String?
    var userMessage: String?

    enum CodingKeys: String, CodingKey {
        case result = "result"
        case errorMessage = "error_messag"
        case userMessage = "user_message"
    }
}
