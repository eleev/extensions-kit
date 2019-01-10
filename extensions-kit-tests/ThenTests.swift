//
//  ThenTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 09/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class ThenTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThen() {
        class TempObject: Then {
            var name: String?
            var age: Int?
            var city: String?
        }
        
        let obj = TempObject().then {
            $0.age = 30
            $0.city = "New York"
            $0.name = "Willy"
        }
        
        XCTAssert(obj.age == 30)
        XCTAssert(obj.city == "New York")
        XCTAssert(obj.name == "Willy")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
