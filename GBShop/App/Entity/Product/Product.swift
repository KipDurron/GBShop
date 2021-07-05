//
//  Product.swift
//  GBShop
//
//  Created by Илья Кадыров on 26.06.2021.
//



struct Product: Codable {
    
    let id: Int
    let name: String
    let price: Float
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case name = "product_name"
        case price = "product_price"
        case description = "product_description"
    }
}
