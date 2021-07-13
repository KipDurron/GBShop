//
//  PresenterToRouterProtocol.swift
//  GBShop
//
//  Created by Илья Кадыров on 13.07.2021.
//
import UIKit

protocol PresenterToRouterProtocol {
    var controller: UIViewController? {get set}
    var flowFactory: FlowFactory { get }
    func showError(text: String)
}

extension PresenterToRouterProtocol {
    
    func showError(text: String) {
        let alert = flowFactory.makeErrorFlow(text: text)
        self.controller?.present(alert, animated: true, completion: nil)
    }
    
}
