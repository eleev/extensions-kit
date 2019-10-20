//
//  Array+DifferenceTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 28/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

final class ArrayDifferenceTests: XCTestCase {

    static var allTests = [
        ("testDiff", testDiff)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDiff() {
        let testA = [1,2,3,4,5]
        let testB = [4,5,7,8,9]
        
        var result = testA.difference(elements: testB)
        XCTAssert(result == [1,2,3])
        
        result = testB.difference(elements: testA)
        XCTAssert(result == [7,8,9])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
