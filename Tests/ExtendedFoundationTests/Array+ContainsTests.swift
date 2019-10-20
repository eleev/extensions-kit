//
//  Array+ContainsTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 28/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

final class ArrayContainsTests: XCTestCase {

    static var allTests = [
        ("testContains", testContains)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testContains() {
        let testArray = [1,2,4,5,6,7,8,9,10]
        var result = testArray.contains(elements: 1,2,4,5)
        XCTAssert(result == true)
        
        result = testArray.contains(elements: 9,10,11,12)
        XCTAssert(result == false)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
