//
//  StandartTextField.swift
//  GBShop
//
//  Created by Илья Кадыров on 14.07.2021.
//

import UIKit

class BaseTextField: UITextField {

    init(placeholder: String) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.borderStyle = .line
        self.placeholder = placeholder
        self.backgroundColor = .white
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
