//
//  BasketRequestFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 07.07.2021.
//

import Alamofire

protocol BasketRequestFactory {
    func addToBasket(itemOfBasket: ItemOfBasket, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void)
    func deleteFromBasket(idUser: Int,
                   idProduct: Int,
                   completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void)
    func payBasket(idUser: Int,
                      completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void)
}
