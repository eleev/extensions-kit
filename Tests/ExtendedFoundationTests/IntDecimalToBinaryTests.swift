//
//  IntDecimalToBinaryTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 09/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class IntDecimalToBinaryTests: XCTestCase {

    static var allTests = [
        ("testDecimalToBinary", testDecimalToBinary),
        ("testBinaryToDecimal", testBinaryToDecimal)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDecimalToBinary() {
//        Decimal    Binary
//        0           0000
//        1           0001
//        2           0010
//        3           0011
//        4           0100
//        5           0101
//        6           0110
//        7           0111
//        8           1000
//        9           1001
//        10          1010
//        11          1011
//        12          1100
//        13          1101
//        14          1110
//        15          1111
        
        let binary1 = 1.decimalToBinary()
        let binary2 = 2.decimalToBinary()
        let binary3 = 3.decimalToBinary()
        let binary4 = 4.decimalToBinary()
        let binary5 = 5.decimalToBinary()
        let binary6 = 6.decimalToBinary()
        let binary7 = 7.decimalToBinary()
        let binary8 = 8.decimalToBinary()
        let binary9 = 9.decimalToBinary()
        let binary10 = 10.decimalToBinary()
        let binary11 = 11.decimalToBinary()
        let binary12 = 12.decimalToBinary()
        let binary13 = 13.decimalToBinary()
        let binary14 = 14.decimalToBinary()
        let binary15 = 15.decimalToBinary()
    
        XCTAssert(binary1 == 1)
        XCTAssert(binary2 == 10)
        XCTAssert(binary3 == 11)
        XCTAssert(binary4 == 100)
        XCTAssert(binary5 == 101)
        XCTAssert(binary6 == 110)
        XCTAssert(binary7 == 111)
        XCTAssert(binary8 == 1000)
        XCTAssert(binary9 == 1001)
        XCTAssert(binary10 == 1010)
        XCTAssert(binary11 == 1011)
        XCTAssert(binary12 == 1100)
        XCTAssert(binary13 == 1101)
        XCTAssert(binary14 == 1110)
        XCTAssert(binary15 == 1111)
    }
    
    func testBinaryToDecimal() {
        let decimal1 = 1.binaryToDecimal()
        let decimal2 = 10.binaryToDecimal()
        let decimal3 = 11.binaryToDecimal()
        let decimal4 = 100.binaryToDecimal()
        let decimal5 = 101.binaryToDecimal()
        let decimal6 = 110.binaryToDecimal()
        let decimal7 = 111.binaryToDecimal()
        
        XCTAssert(decimal1 == 1)
        XCTAssert(decimal2 == 2)
        XCTAssert(decimal3 == 3)
        XCTAssert(decimal4 == 4)
        XCTAssert(decimal5 == 5)
        XCTAssert(decimal6 == 6)
        XCTAssert(decimal7 == 7)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
