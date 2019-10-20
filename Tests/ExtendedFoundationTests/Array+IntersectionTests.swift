//
//  Array+IntersectionTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 28/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

final class ArrayIntersectionTests: XCTestCase {

    static var allTests = [
        ("testIntersection", testIntersection)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIntersection() {
        let testA = [1,2,3,4,5]
        let testB = [4,5,6,7]
        
        var result = testA.intersection(values: testB)
        XCTAssert(result == [4,5])
        
        result = testB.intersection(values: testA)
        XCTAssert(result == [4,5])
        
        let wrongTestB = [6,7,8,9]
        result = testA.intersection(values: wrongTestB)
        XCTAssert(result == [])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
