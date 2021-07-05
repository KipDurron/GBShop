//
//  File.swift
//  
//
//  Created by Илья Кадыров on 05.07.2021.
//

struct AddReviewRequest: Codable {

    let idUser: Int
    let idProduct: Int
    let text: String

    enum CodingKeys: String, CodingKey {
        case idUser = "id_user"
        case idProduct = "id_product"
        case text = "text"
    }
}
