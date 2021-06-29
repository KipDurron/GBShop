//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 23.06.2021.
//


import Alamofire

protocol UserRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResponse>) -> Void)
    func logout(idUser: Int, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void)
    func registration(user: User, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void)
    func changeUserData(user: User, completionHandler: @escaping (AFDataResponse<StandartResponse>) -> Void)
    
}
