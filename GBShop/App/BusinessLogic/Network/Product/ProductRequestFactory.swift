//
//  ProductRequestFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 26.06.2021.
//


import Alamofire
protocol ProductRequestFactory {
    func getAllProduct(completionHandler: @escaping (AFDataResponse<[Product]>) -> Void)
    func getProductById(id: Int, completionHandler: @escaping (AFDataResponse<ConcreteProduct>) -> Void)
}
