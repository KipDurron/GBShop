//
//  ConcreteProduct.swift
//  GBShop
//
//  Created by Илья Кадыров on 26.06.2021.
//

struct ConcreteProduct: Codable {

    let result: Int
    let name: String
    let price: Float

    enum CodingKeys: String, CodingKey {
        case result = "result"
        case name = "product_name"
        case price = "product_price"
    }
}
