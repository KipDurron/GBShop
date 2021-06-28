//
//  GBShopTests.swift
//  GBShopTests
//
//  Created by Илья Кадыров on 18.06.2021.
//

import XCTest
@testable import GBShop

class LoginTests: XCTestCase {
    
    var requestFactory: RequestFactory!
    let expectation = XCTestExpectation(description: "for login requests")

    override func setUpWithError() throws {
        self.requestFactory = RequestFactory()
    }

    override func tearDownWithError() throws {
        self.requestFactory = nil
    }

    func testLogin() throws {
        let auth = requestFactory.makeAuthRequestFatory()
        
        auth.login(userName: "Somebody", password: "mypassword") { response in
            switch response.result {
            case .success(let login):
                debugPrint(login)
                self.expectation.fulfill()
            case .failure(let error):
                print(error)
                XCTFail()
            }
        }
        wait(for: [expectation], timeout: 10.0)
    }

}
