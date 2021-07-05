//
//  ReviewTests.swift
//  GBShopTests
//
//  Created by Илья Кадыров on 04.07.2021.
//

import XCTest
@testable import GBShop

class ReviewTests: XCTestCase {

    var requestFactory: RequestFactory!
    let expectation = XCTestExpectation(description: "for review requests")

    override func setUpWithError() throws {
        self.requestFactory = RequestFactory()
    }

    override func tearDownWithError() throws {
        self.requestFactory = nil
    }

    func testGetAllReview() throws {
        let reviewRequestFactory = requestFactory.makeReviewRequestFatory()

        reviewRequestFactory.getAllReview { response in
            switch response.result {
            case .success(let reviews):
                debugPrint(reviews)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail("\(error)")
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testAddReview() throws {
        let reviewRequestFactory = requestFactory.makeReviewRequestFatory()

        reviewRequestFactory.addReview(idUser: 123, idProduct: 456, text: "Текст отзыва") { response in
            switch response.result {
            case .success(let body):
                debugPrint(body)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail("\(error)")
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testDeleteReview() throws {
        let reviewRequestFactory = requestFactory.makeReviewRequestFatory()

        reviewRequestFactory.deleteReview(idReview: 123) { response in
            switch response.result {
            case .success(let body):
                debugPrint(body)
                self.expectation.fulfill()
            case .failure(let error):
                XCTFail("\(error)")
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }

}
