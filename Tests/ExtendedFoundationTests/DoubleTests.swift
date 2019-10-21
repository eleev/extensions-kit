//
//  DoubleTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 27/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class DoubleTests: XCTestCase {
    
    static var allTests = [
        ("testCurrecyShortcuts", testCurrecyShortcuts),
        ("testRounded", testRounded)
    ]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCurrecyShortcuts() {
        let usd = 350.00.usd
        XCTAssert(usd == "$ 350.00")
        
        let usdDecimal = 450.34.usd
        XCTAssert(usdDecimal == "$ 450.34")
        
        let rub = 120.00.ruble
        XCTAssert(rub == "120,00 ₽")
    }
    
    func testRounded() {
        let rounded3 = 23.3434.rounded(toPlaces: 3)
        XCTAssert(rounded3 == 23.343)
        
        let rounded2 = 3.527.rounded(toPlaces: 2)
        XCTAssert(rounded2 == 3.53)
        
        let rounded1 = 7.32.rounded(toPlaces: 1)
        XCTAssert(rounded1 == 7.3)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
