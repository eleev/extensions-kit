//
//  StringTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 02/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest

class StringTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDigits() {
        let nonDigitString = "Hello World!"
        let digitString = "3345"
        let mixedString = "Hello World #345!"
        let mixedComplexString = "Hello 9983 World #345!"
        
        XCTAssert(nonDigitString.digits == "")
        XCTAssert(digitString.digits == "3345")
        XCTAssert(mixedString.digits == "345")
        XCTAssert(mixedComplexString.digits == "9983345")
    }
    
    func testDate() {
        let validFormat = "yyyy/MM/DD"
        guard let _ = "2018/07/23".date(inFormat: validFormat) else {
            XCTAssert(false)
            return
        }
        // The date was converted successfully
        XCTAssert(true)   
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
