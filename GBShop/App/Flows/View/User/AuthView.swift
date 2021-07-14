//
//  AuthView.swift
//  GBShop
//
//  Created by Илья Кадыров on 12.07.2021.
//

import UIKit

class AuthView: UIView {
    
    let titleView: UILabel = {
        let textView = UILabel()
        textView.text = "🏛 GBShop by Kadyrov Ilya"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var loginTextField: BaseTextField = {
        let loginTextField = BaseTextField(placeholder: "Login")
        return loginTextField
    }()

    var passwordTextField: BaseTextField = {
        let passwordTextField =  BaseTextField(placeholder: "Password")
        return passwordTextField
    }()
    
    var loginButton: BaseButton = {
        let loginButton = BaseButton(title: "Log in")
        return loginButton
    }()
    
    var toSignUpButton: BaseButton = {
        let toSignUpButton = BaseButton(title: "Sign up")
        return toSignUpButton
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupContentView()
    }
    
    private func setupContentView() {
        self.addSubview(titleView)
        self.addSubview(loginTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(toSignUpButton)
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: self.topAnchor),
            titleView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/4),
            
            loginTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginTextField.topAnchor.constraint(equalTo: self.titleView.bottomAnchor, constant:MarginSettingsEnum.betweenTextField.rawValue),
            loginTextField.widthAnchor.constraint(equalTo: titleView.widthAnchor),
        
        
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor, constant: MarginSettingsEnum.betweenTextField.rawValue),
            passwordTextField.widthAnchor.constraint(equalTo: titleView.widthAnchor),
            
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: MarginSettingsEnum.betweenTextField.rawValue),
            loginButton.widthAnchor.constraint(equalTo: titleView.widthAnchor),
            
            toSignUpButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            toSignUpButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: MarginSettingsEnum.betweenButton.rawValue),
            toSignUpButton.widthAnchor.constraint(equalTo: titleView.widthAnchor),
            toSignUpButton.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
