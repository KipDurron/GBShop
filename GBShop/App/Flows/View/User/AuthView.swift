//
//  AuthView.swift
//  GBShop
//
//  Created by Илья Кадыров on 12.07.2021.
//

import UIKit

class AuthView: UIView {

    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "🏛 GBShop by Kadyrov Ilya"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
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

    private func setupTitleLabel() {
        self.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/4)
        ])
    }

    private func setupLoginTextField() {
        self.addSubview(loginTextField)
        NSLayoutConstraint.activate([
            loginTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginTextField.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor,
                                                constant:MarginSettingsEnum.betweenTextField.rawValue),
            loginTextField.widthAnchor.constraint(equalTo: titleLabel.widthAnchor)
        ])
    }

    private func setupPasswordTextField() {
        self.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor,
                                                   constant: MarginSettingsEnum.betweenTextField.rawValue),
            passwordTextField.widthAnchor.constraint(equalTo: titleLabel.widthAnchor)
        ])
    }

    private func setupLoginButton() {
        self.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor,
                                             constant:MarginSettingsEnum.betweenTextField.rawValue),
            loginButton.widthAnchor.constraint(equalTo: titleLabel.widthAnchor)
        ])
    }

    private func setupToSignUpButton() {
        self.addSubview(toSignUpButton)
        NSLayoutConstraint.activate([
            toSignUpButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            toSignUpButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor,
                                                constant:MarginSettingsEnum.betweenButton.rawValue),
            toSignUpButton.widthAnchor.constraint(equalTo: titleLabel.widthAnchor),
            toSignUpButton.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    private func setupContentView() {
        setupTitleLabel()
        setupLoginTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupToSignUpButton()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
