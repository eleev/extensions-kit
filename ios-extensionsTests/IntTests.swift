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
    
    func testFactorial() {
        var factorial = 1.factorial()
        assert(factorial == 1)

        factorial = 2.factorial()
        assert(factorial == 2)

        factorial = 3.factorial()
        assert(factorial == 6)
        
        factorial = 4.factorial()
        assert(factorial == 24)
        
        factorial = 5.factorial()
        assert(factorial == 120)
        
        factorial = 6.factorial()
        assert(factorial == 720)
        
        factorial = 7.factorial()
        assert(factorial == 5040)
        
        factorial = 8.factorial()
        assert(factorial == 40320)
    }
    
    func testEvenOdd() {
        var isOdd = 2.isOdd()
        assert(!isOdd)
        
        isOdd = 4.isOdd()
        assert(!isOdd)
        
        var isEven = 7.isEven()
        assert(!isEven)
        
        isEven = 6347859.isEven()
        assert(!isEven)
    }
    
    func testClamp() {
        // Upper bound
        let ten = 10
        let tenRes = ten.clamp(min: 0, 5)
        assert(tenRes == 5)
        
        // Lower bound
        let five = 5
        let fiveRes = five.clamp(min: 7, 12)
        assert(fiveRes == 7)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
