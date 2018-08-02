//
//  StringTests.swift
//  ios-extensionsTests
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
        
        assert(nonDigitString.digits == "")
        assert(digitString.digits == "3345")
        assert(mixedString.digits == "345")
        assert(mixedComplexString.digits == "9983345")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
