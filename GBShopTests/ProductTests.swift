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
        productRequestFactory.getAllProduct(pageNumber: 1, idCategory: 1) { (response) in
            switch response.result {
            case .success(let products):
                debugPrint(products)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail("\(error)")
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }

    func testGetProductById() throws {

        let productRequestFactory = requestFactory.makeProductRequestFatory()
        productRequestFactory.getProductById(idProduct: 123) { (response) in
            switch response.result {
            case .success(let product):
                debugPrint(product)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail("\(error)")
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }

}
