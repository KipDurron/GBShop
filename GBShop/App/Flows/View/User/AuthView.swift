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
    
    var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.textColor = .black
        loginTextField.borderStyle = .line
        loginTextField.placeholder = "Login"
        return loginTextField
    }()

    var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textColor = .black
        passwordTextField.borderStyle = .line
        passwordTextField.placeholder = "Password"
        return passwordTextField
    }()
    
    var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Log in", for: .normal)
        loginButton.backgroundColor = .gray
        return loginButton
    }()
    
    var toSignUpButton: UIButton = {
        let toSignUpButton = UIButton()
        toSignUpButton.translatesAutoresizingMaskIntoConstraints = false
        toSignUpButton.setTitle("Sign up", for: .normal)
        toSignUpButton.backgroundColor = .gray
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
