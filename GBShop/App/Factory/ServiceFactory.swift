//
//  ServiceFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 14.07.2021.
//

class ServiceFactory {
    func makeUserService() -> UserService {
        return UserService()
    }
    
    func makeProductService() -> ProductService {
        return ProductService()
    }
}
