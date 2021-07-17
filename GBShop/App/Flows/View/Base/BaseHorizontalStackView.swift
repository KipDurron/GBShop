//
//  BaseHorizontalStackView.swift
//  GBShop
//
//  Created by Илья Кадыров on 17.07.2021.
//

import UIKit

class BaseHorizontalStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.axis = .horizontal
        self.distribution = .equalSpacing
        self.alignment = .fill
        self.spacing = MarginSettingsEnum.intoHorizontalStack.rawValue
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
