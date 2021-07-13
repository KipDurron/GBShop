//
//  AuthRouter.swift
//  GBShop
//
//  Created by Илья Кадыров on 13.07.2021.
//
import UIKit

class AuthRouter: AuthPresenterToRouterProtocol {
    
    internal weak var controller: UIViewController?
    let flowFactory = FlowFactory()
    
    
    func setController(controller: UIViewController) {
        self.controller = controller
    }
    
    func moveToUserAccountView() {
        debugPrint("moveToUserAccountView")
    }

}
