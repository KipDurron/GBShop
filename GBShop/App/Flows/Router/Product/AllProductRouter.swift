//
//  AllProductRouter.swift
//  GBShop
//
//  Created by Илья Кадыров on 17.07.2021.
//

import UIKit

class AllProductRouter: AllProductPresenterToRouterProtocol {

    internal weak var controller: UIViewController?
    internal let flowFactory = FlowFactory()

    func setController(controller: UIViewController) {
        self.controller = controller
    }

}
