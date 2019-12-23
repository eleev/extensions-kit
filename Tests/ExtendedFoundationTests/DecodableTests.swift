//
//  DecodableTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 24/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class DecodableTests: XCTestCase {

    static var allTests = [
        ("testFileDecoding", testFileDecoding)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFileDecoding() {
//        // We need this type of bundle in order to be able to "reach" the .json file inside the test target folder
//        let bundle = Bundle(for: type(of: self))
//
//        guard let decodedUser = try? User.decodeFromFile(named: "User", in: bundle) else {
//            XCTAssert(false)
//            return
//        }
//        print("decoded user: ", decodedUser)
//
//        XCTAssert(decodedUser.name == "Willy")
//        XCTAssert(decodedUser.age == 30)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


struct User: Codable {
    var name: String
    var age: Int
}
