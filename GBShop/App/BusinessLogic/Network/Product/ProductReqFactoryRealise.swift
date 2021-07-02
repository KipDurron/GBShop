//
//  ProductReqFactoryRealise.swift
//  GBShop
//
//  Created by Илья Кадыров on 26.06.2021.
//

import Alamofire

class ProductReqFactoryRealise: AbstractRequestFactory {
    
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


extension ProductReqFactoryRealise: ProductRequestFactory {
    func getAllProduct(pageNumber: Int, idCategory: Int, completionHandler: @escaping (AFDataResponse<GetAllProductResponse>) -> Void) {
        let requestModel = GetAllProductRouter(baseUrl: baseUrl, pageNumber: pageNumber, idCategory: idCategory)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func getProductById(id: Int, completionHandler: @escaping (AFDataResponse<ConcreteProduct>) -> Void) {
        let requestModel = GetProductByIdRouter(baseUrl: baseUrl)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    
}

extension ProductReqFactoryRealise {
    
    struct GetAllProductRouter: RequestRouter {
        
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = ServerPath.getAllProduct.rawValue
        let pageNumber: Int
        let idCategory: Int
        var parameters: Parameters? {
            return [
                "page_number": pageNumber,
                "id_category": idCategory
            ]
        }
    }
    
    struct GetProductByIdRouter: RequestRouter {
        
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "getGoodById.json"
        var parameters: Parameters?
    }
}
