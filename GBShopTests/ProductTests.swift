//
//  ProductTests.swift
//  GBShopTests
//
//  Created by Илья Кадыров on 26.06.2021.
//

import XCTest
import Alamofire
@testable import GBShop

struct ProductStub: Codable {
    
    let id: Int
    let name: String
    let price: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case name = "product_name"
        case price = "price"
    }
}

class ProductTests: XCTestCase {
    
    var requestFactory: RequestFactory!
    let expectation = XCTestExpectation(description: "for product requests")

    override func setUpWithError() throws {
        self.requestFactory = RequestFactory()
        
    }

    override func tearDownWithError() throws {
        self.requestFactory = nil
    }

    func testGetAllProduct() throws {
        
        let productRequestFactory = requestFactory.makeProductRequestFatory()
        productRequestFactory.getAllProduct { (response: AFDataResponse<ProductStub>) in
            switch response.result {
            case .success(let products):
                debugPrint(products)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail()
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }

    func testGetProductById() throws {
        
        let productRequestFactory = requestFactory.makeProductRequestFatory()
        productRequestFactory.getProductById { (response: AFDataResponse<ProductStub>) in
            switch response.result {
            case .success(let product):
                debugPrint(products)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail()
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }
    

}
