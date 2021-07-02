//
//  GetAllProductResponse.swift
//  GBShop
//
//  Created by Илья Кадыров on 02.07.2021.
//



struct GetAllProductResponse: Codable {
    
    let result: Int
    let pageNumber: Int
    var errorMessage: String?
    let products: [Product]
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case pageNumber = "page_number"
        case products = "products"
        case errorMessage = "error_message"
    }
}
