//
//  BoolTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 14/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class BoolTests: XCTestCase {
    
    static var allTests = [
        ("testInt", testInt)
    ]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInt() {
        let falseBool = false
        XCTAssert(falseBool.int == 0)
        
        let trueBool = true
        XCTAssert(trueBool.int == 1)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
