//
//  IntTests.swift
//  ios-extensionsTests
//
//  Created by Astemir Eleev on 29/04/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ios_extensions

class IntTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDigits() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let ten = 15
        let tenResult = ten.digitCount
        assert(tenResult == 2)
        
        let hundred = 133
        let hundredResult = hundred.digitCount
        assert(hundredResult == 3)
        
        let thousend = 1040
        let thousendResult = thousend.digitCount
        assert(thousendResult == 4)
        
        
        let tenThousend = 10204
        let tenThousendResult = tenThousend.digitCount
        assert(tenThousendResult == 5)
    }
    
    func testPower() {
        let four = 2^^2
        assert(four == 4)
        
        let sexteen = 2^^4
        assert(sexteen == 16)
        
        let twentySeven = 3^^3
        assert(twentySeven == 27)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
