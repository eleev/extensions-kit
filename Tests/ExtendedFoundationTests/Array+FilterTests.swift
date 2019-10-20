//
//  Array+FilterTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 06/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

final class ArrayFilterTests: XCTestCase {

    static var allTests = [
        ("testSkip", testSkip),
        ("testAll", testAll),
        ("testAny", testAny)
    ]
    
    let testArrayInt = [1,2,3,4,5,6,7,8,9,10]
    let testArrayString = ["a", "b", "c", "d", "e", "f", "g"]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSkip() {
        var result = testArrayInt.skip(5)
        XCTAssert(result == [6,7,8,9,10])
        result = testArrayInt.skip(2)
        XCTAssert(result == [3,4,5,6,7,8,9,10])
        result = testArrayInt.skip(10)
        XCTAssert(result == [])
        
        var resultS = testArrayString.skip(5)
        XCTAssert(resultS == ["f", "g"])
        resultS = testArrayString.skip(2)
        XCTAssert(resultS == ["c", "d", "e", "f", "g"])
        resultS = testArrayString.skip(10)
        XCTAssert(resultS == [])
    }

    func testAll() {
        var result = testArrayInt.all { $0 < 20 }
        XCTAssert(result == true)
        result = testArrayInt.all { $0 > -1 }
        XCTAssert(result == true)
        result = testArrayInt.all { $0 % 2 == 0 }
        XCTAssert(result == false)
        
        var resultS = testArrayString.all { $0.count == 1 }
        XCTAssert(resultS == true)
        resultS = testArrayString.all { $0.starts(with: "a") }
        XCTAssert(resultS == false)
    }
    
    func testAny() {
        var result = testArrayInt.any { $0 < 5 }
        XCTAssert(result == true)
        result = testArrayInt.any { $0 > 10 }
        XCTAssert(result == false)
        result = testArrayInt.any { $0 % 2 == 0 }
        XCTAssert(result == true)
        
        var resultS = testArrayString.any { $0.count == 1 }
        XCTAssert(resultS == true)
        resultS = testArrayString.any { $0.starts(with: "a") }
        XCTAssert(resultS == true)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
