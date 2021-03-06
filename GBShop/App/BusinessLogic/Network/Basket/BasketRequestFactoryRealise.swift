//
//  BasketRequestFactoryRealise.swift
//  GBShop
//
//  Created by Илья Кадыров on 07.07.2021.
//

import Alamofire
import Firebase

class BasketRequestFactoryRealise: AbstractRequestFactory {

    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    var baseUrl: URL {
        guard let baseUrl = URL(string: ServerPath.herokuBaseUrl.rawValue) else {
            Crashlytics.crashlytics().log("bad URL")
            fatalError("bad URL")
        }
        return baseUrl
    }

    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension BasketRequestFactoryRealise: BasketRequestFactory {
    func addToBasket(itemOfBasket: ItemOfBasket,
                     completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = AddToBasketRouter(baseUrl: baseUrl, itemOfBasket: itemOfBasket)
        self.request(request: requestModel, completionHandler: completionHandler)
    }

    func deleteFromBasket(idUser: Int,
                          idProduct: Int,
                          completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = DeleteFromBasketRouter(baseUrl: baseUrl, idUser: idUser, idProduct: idProduct)
        self.request(request: requestModel, completionHandler: completionHandler)
    }

    func payBasket(idUser: Int,
                   completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = PayBasketRouter(baseUrl: baseUrl, idUser: idUser)
        self.request(request: requestModel, completionHandler: completionHandler)
    }

}

extension BasketRequestFactoryRealise {

    struct AddToBasketRouter: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = ServerPath.addToBasket.rawValue
        let itemOfBasket: ItemOfBasket
        var parameters: Parameters? {
            return [
                "id_user": itemOfBasket.idUser,
                "id_product": itemOfBasket.idProduct,
                "quantity": itemOfBasket.quantity
            ]
        }
    }

    struct DeleteFromBasketRouter: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .delete
        let path: String = ServerPath.deleteFromBasket.rawValue
        let idUser: Int
        let idProduct: Int
        var parameters: Parameters? {
            return [
                "id_user": idUser,
                "id_product": idProduct
            ]
        }
    }

    struct PayBasketRouter: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = ServerPath.payBasket.rawValue
        let idUser: Int
        var parameters: Parameters? {
            return [
                "id_user": idUser
            ]
        }
    }

}
