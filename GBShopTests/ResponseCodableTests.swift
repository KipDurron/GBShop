//
//  ResponseCodableTests.swift
//  GBShopTests
//
//  Created by Илья Кадыров on 26.06.2021.
//

import XCTest
@testable import GBShop
import Alamofire

struct PostStub: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

enum ApiErrorStub: Error {
    case fatalError
}

struct ErrorParserStub: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
        return ApiErrorStub.fatalError
    }

    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
        return error
    }
}

class ResponseCodableTests: XCTestCase {

    let expectation = XCTestExpectation(description: "Download https://jsonplaceholder.typicode.com/posts/1")
    var errorParser: ErrorParserStub!

    override func setUpWithError() throws {
        errorParser = ErrorParserStub()
    }

    override func tearDownWithError() throws {
        errorParser = nil
    }

    func testShouldDownloadAndParse() {
        let errorParser = ErrorParserStub()

        AF.request("https://jsonplaceholder.typicode.com/posts/1")
            .responseCodable(errorParser: errorParser) {(response: AFDataResponse<PostStub>) in
                switch response.result {
                case .success(let postStud):
                    debugPrint(postStud)
                    self.expectation.fulfill()
                case .failure(let error):
                    XCTFail("\(error)")
                }
        }
        wait(for: [expectation], timeout: 10.0)

    }

}
