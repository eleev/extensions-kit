//
//  Array+RemoveTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 28/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

final class ArrayRemoveTests: XCTestCase {

    static var allTests = [
        ("testRemove", testRemove)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRemove() {
        var test = [1,2,3,4,5,6,7,8]
        
        test.remove(object: 8)
        XCTAssert(test == [1,2,3,4,5,6,7])
        
        test.remove(objects: [1,2,4])
        XCTAssert(test == [3,5,6,7])
        
        test.remove(objects: 5,6)
        XCTAssert(test == [3,7])
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
