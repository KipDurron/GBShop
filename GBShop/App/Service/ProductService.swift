//
//  ProductService.swift
//  GBShop
//
//  Created by Илья Кадыров on 26.07.2021.
//

import Foundation
import FirebaseAnalytics

class ProductService {

    func logEventGetAllProduct(success: Bool, content: String?) {
        Analytics.logEvent(CustomAnalyticsEvent.getAllProduct.rawValue,
                           parameters:  [
                            AnalyticsParameterSuccess: success,
                            AnalyticsParameterContent: content ?? ""
                          ])
    }
}
