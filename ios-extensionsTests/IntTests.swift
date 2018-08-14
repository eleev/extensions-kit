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
        let ten = 15
        let tenResult = ten.digitCount
        XCTAssert(tenResult == 2)
        
        let hundred = 133
        let hundredResult = hundred.digitCount
        XCTAssert(hundredResult == 3)
        
        let thousend = 1040
        let thousendResult = thousend.digitCount
        XCTAssert(thousendResult == 4)
        
        
        let tenThousend = 10204
        let tenThousendResult = tenThousend.digitCount
        XCTAssert(tenThousendResult == 5)
    }
    
    func testPower() {
        XCTAssert(2^^2 == 4)
        
        XCTAssert(2^^4 == 16)
        
        XCTAssert(3^^3 == 27)
    }
    
    func testFactorial() {
        XCTAssert(1.factorial() == 1)

        XCTAssert(2.factorial() == 2)

        XCTAssert(3.factorial() == 6)
        
        XCTAssert(4.factorial() == 24)
        
        XCTAssert(5.factorial() == 120)
    
        XCTAssert(6.factorial() == 720)
        
        XCTAssert(7.factorial() == 5040)
        
        XCTAssert(8.factorial() == 40320)
    }
    
    func testEvenOdd() {
        var isOdd = 2.isOdd()
        XCTAssert(!isOdd)
        
        isOdd = 4.isOdd()
        XCTAssert(!isOdd)
        
        var isEven = 7.isEven()
        XCTAssert(!isEven)
        
        isEven = 6347859.isEven()
        XCTAssert(!isEven)
    }
    
    func testClamp() {
        // Upper bound
        let ten = 10
        let tenRes = ten.clamp(min: 0, 5)
        XCTAssert(tenRes == 5)
        
        // Lower bound
        let five = 5
        let fiveRes = five.clamp(min: 7, 12)
        XCTAssert(fiveRes == 7)
        
        let closedFiveRes = five.clamp(in: 7...12)
        XCTAssert(closedFiveRes == 7)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
