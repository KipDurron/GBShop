//
//  ModuleFactory.swift
//  GBShop
//
//  Created by Илья Кадыров on 13.07.2021.
//
import UIKit

class FlowFactory {
    func makeAuthFlow() -> AuthViewController {
        let router = AuthRouter()
        let interactor = AuthInteractor()
        let presenter = AuthPresenter(interactor: interactor, router: router)
        let authViewController = AuthViewController(presenter: presenter)
        router.setController(controller: authViewController)
        interactor.setPresenter(presenter: presenter)
        presenter.setController(controller: authViewController)
        
        return authViewController
    }
    
    func makeErrorFlow(text: String) -> UIAlertController {
        let alert = UIAlertController(title: "Error", message: text, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(actionOk)
        return alert
    }
}
