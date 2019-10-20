//
//  Array+UnionTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 06/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

final class ArrayUnionTests: XCTestCase {

    static var allTests = [
        ("testUnion", testUnion)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUnion() {
        let firstArray = [1,2,4,5,6,7,8]
        let secondArry = [8,9,10]
        
        let unionedIntArray = firstArray.union(values: secondArry)
        XCTAssert(unionedIntArray == [1, 2, 4, 5, 6, 7, 8, 9, 10])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
