//
//  UserAccountRouter.swift
//  GBShop
//
//  Created by Илья Кадыров on 14.07.2021.
//

import UIKit

class UserAccountRouter: UserAccountPresenterToRouterProtocol {

    internal weak var controller: UIViewController?
    internal let flowFactory = FlowFactory()

    func setController(controller: UIViewController) {
        self.controller = controller
    }

}
