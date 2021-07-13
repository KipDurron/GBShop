//
//  AuthInteractor.swift
//  GBShop
//
//  Created by Илья Кадыров on 13.07.2021.
//
import Foundation

class AuthInteractor: AuthPresenterToInteractorProtocol {
    
    let requestFactory = RequestFactory()
    
    weak var presenter: AuthInteractorToPresenterProtocol?
    
    func setPresenter(presenter: AuthInteractorToPresenterProtocol) {
        self.presenter = presenter
    }
    
    func sendLoginRequest(login: String, password: String) {
        guard !login.isEmpty && !password.isEmpty else {
            self.presenter?.startShowError(text: "login or password is empty")
            return
        }
        let userRequestFactory = requestFactory.makeUserRequestFatory()
        
        userRequestFactory.login(userName: login, password: password) { response in
            DispatchQueue.main.async {
                switch response.result {
                case .success(_):
                    self.presenter?.startMoveToUserAccountView()
                case .failure(let error):

                    self.presenter?.startShowError(text: "\(error)")

                }
            }
        }
        
    }
}
