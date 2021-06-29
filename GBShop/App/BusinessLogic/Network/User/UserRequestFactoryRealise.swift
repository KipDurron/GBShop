//
//  Auth.swift
//  GBShop
//
//  Created by Илья Кадыров on 23.06.2021.
//

import Foundation
import Alamofire

class UserRequestFactoryRealise: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension UserRequestFactoryRealise: UserRequestFactory {
    func changeUserData(user: User, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = ChangeUserDataRequestRouter(baseUrl: baseUrl, user: user)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func registration(user: User, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = RegisterRequestRouter(baseUrl: baseUrl, user: user)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func logout(idUser: Int, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void) {
        let requestModel = LogoutRequestRouter(baseUrl: baseUrl, idUser: idUser)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResponse>) -> Void) {
        let requestModel = LoginRequestRouter(baseUrl: baseUrl, login: userName, password: password)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension UserRequestFactoryRealise {
    struct LoginRequestRouter: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "login.json"
        
        let login: String
        let password: String
        var parameters: Parameters? {
            return [
                "username": login,
                "password": password
            ]
        }
    }
    
    struct LogoutRequestRouter: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "logout.json"
        let idUser: Int
        var parameters: Parameters? {
            return [
                "id_user": idUser
            ]
        }
    }
    
    struct RegisterRequestRouter: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "registerUser.json"
        let user: User
        var parameters: Parameters? {
            return [
                "username": user.name,
                "password": user.password,
                "email": user.email,
                "gender": user.gender,
                "credit_card": user.creditCard,
                "bio": user.bio
            ]
        }
    }
    
    struct ChangeUserDataRequestRouter: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "registerUser.json"
        let user: User
        var parameters: Parameters? {
            return [
                "id_user": 123,
                "username": user.name,
                "password": user.password,
                "email": user.email,
                "gender": user.gender,
                "credit_card": user.creditCard,
                "bio": user.bio
            ]
        }
    }
}

