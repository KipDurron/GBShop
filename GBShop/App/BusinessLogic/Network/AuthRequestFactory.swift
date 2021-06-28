//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 23.06.2021.
//


import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}
