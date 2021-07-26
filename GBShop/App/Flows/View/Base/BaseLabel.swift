//
//  BaseLabel.swift
//  GBShop
//
//  Created by Илья Кадыров on 17.07.2021.
//

import UIKit

class BaseLabel: UILabel {

    init(text: String) {
        super.init(frame: .zero)
        self.text = text
        configuration()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configuration()
    }

    private func configuration() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
