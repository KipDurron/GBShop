//
//  ServerPath.swift
//  GBShop
//
//  Created by Илья Кадыров on 01.07.2021.
//

import Foundation

enum ServerPath: String {
    // MARK: - Hosts
    case localBaseUrl = "http://127.0.0.1:8080/"
    case herokuBaseUrl = "https://true-inukshuk-02623.herokuapp.com/"
    case geekBrainsBaseUrl = "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/"
    // MARK: - User paths
    case geekBrainsLoginPath = "login.json"
    case loginPath = "login"
    case registerPath = "register"
    case geekBrainsRegisterPath = "registerUser.json"
    case geekBrainsChangeUserDataPath = "changeUserData.json"
    case changeUserData = "changeUserData"
    case geekBrainsLogoutPath = "logout.json"
    case logoutPath = "logout"
    // MARK: - Product paths
    case geekBrainsGetAllProduct = "catalogData.json"
    case getAllProduct = "getAllProduct"
    case geekBrainsGetProductById = "getGoodById.json"
    case getProductById = "getProductById"

}
