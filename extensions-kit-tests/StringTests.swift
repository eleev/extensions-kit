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
    
    func testIndexOf() {
        let testString = "This is the test text z"
        
        let zIndex = testString.lastIndex(of: "z")
        XCTAssert(zIndex?.encodedOffset == testString.count - 1)
        
        let tIndex = testString.lastIndex(of: "t")
        XCTAssert(tIndex?.encodedOffset == testString.count - 3)
        
        let iIndex = testString.lastIndex(of: "i")
        XCTAssert(iIndex?.encodedOffset == testString.count - 18)
        
        let yIndex = testString.lastIndex(of: "Y")
        XCTAssertFalse(yIndex?.encodedOffset == testString.count - 18)
    }
    
    func testBase64() {
        
        let test = "123U djkfhg jksdf thkh dkjfg hdkfjg hdkjfg quihfkug hadfkjg adufkgh dkfhjg \n sdf sdf "
        
        let base64 = test.toBase64()
        
        XCTAssertTrue(base64 == "MTIzVSBkamtmaGcgamtzZGYgdGhraCBka2pmZyBoZGtmamcgaGRramZnIHF1aWhma3VnIGhhZGZramcgYWR1ZmtnaCBka2ZoamcgCiBzZGYgc2RmIA==")
        
        let fromBase64 = base64.fromBase64()
        
        XCTAssertTrue(fromBase64 == test)
    }
    
    func testValidation() {
        let alhaNum = "37964798hvjkdhkjsdf3kjKJfkh2KJH34"
        XCTAssertTrue(alhaNum.isAlphaNumeric())
        
        let nonAlhaNum = "Hello World!"
        XCTAssertFalse(nonAlhaNum.isAlphaNumeric())
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
