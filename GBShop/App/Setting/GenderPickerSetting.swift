//
//  GenderPickerSetting.swift
//  GBShop
//
//  Created by Илья Кадыров on 14.07.2021.
//

import Foundation

enum GenderPickerSetting: String {
    case man = "m"
    case woman = "w"
    
    func nameToString() -> String {
        return "\(self)"
    }
}
