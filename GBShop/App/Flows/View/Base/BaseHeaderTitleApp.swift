//
//  BaseHeaderTitleApp.swift
//  GBShop
//
//  Created by Илья Кадыров on 14.07.2021.
//

import UIKit

class BaseHeaderTitleApp: UILabel {
    init() {
        super.init(frame: .zero)
        self.text = "🏛 GBShop by Kadyrov Ilya"
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
