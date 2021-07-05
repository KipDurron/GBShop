//
//  ProductRequestFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 26.06.2021.
//


import Alamofire
protocol ProductRequestFactory {
    func getAllProduct(pageNumber: Int, idCategory: Int, completionHandler: @escaping (AFDataResponse<GetAllProductResponse>) -> Void)
    func getProductById(idProduct: Int, completionHandler: @escaping (AFDataResponse<GetProductByIdResponse>) -> Void)
}
