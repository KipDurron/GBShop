//
//  File.swift
//  GBShop
//
//  Created by Илья Кадыров on 04.07.2021.
//

import Alamofire

class ReviewReqFactoryRealise: AbstractRequestFactory {

    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: ServerPath.localBaseUrl.rawValue)!

    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension ReviewReqFactoryRealise: ReviewRequestFactory {
    func deleteReview(idReview: Int, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = DeleteReviewRouter(baseUrl: baseUrl, idReview: idReview)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func addReview(idUser: Int,
                   idProduct: Int,
                   text: String,
                   completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = AddReviewRouter(baseUrl: baseUrl, idUser: idUser, idProduct: idProduct, text: text)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func getAllReview(completionHandler: @escaping (AFDataResponse<GetAllReviewResponse>) -> Void) {
        let requestModel = GetAllReviewRouter(baseUrl: baseUrl)
        self.request(request: requestModel, completionHandler: completionHandler)
    }

}

extension ReviewReqFactoryRealise {
    
    struct DeleteReviewRouter: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .delete
        let path: String = ServerPath.deleteReview.rawValue
        let idReview: Int
        var parameters: Parameters? {
            return [
                "id_review": idReview
            ]
        }
    }

    struct AddReviewRouter: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = ServerPath.addReview.rawValue
        let idUser: Int
        let idProduct: Int
        let text: String
        var parameters: Parameters? {
            return [
                "id_user": idUser,
                "id_product": idProduct,
                "text": text
            ]
        }
    }
    
    struct GetAllReviewRouter: RequestRouter {

        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = ServerPath.getAllReview.rawValue
        var parameters: Parameters?
    }


}

