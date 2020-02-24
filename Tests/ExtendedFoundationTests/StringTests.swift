//
//  StringTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 02/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class StringTests: XCTestCase {

    static var allTests = [
        ("testDigits", testDigits),
        ("testDate", testDate),
        ("testBase64", testBase64),
        ("testIndexOf", testIndexOf),
        ("testValidationAlphanumeric", testValidationAlphanumeric),
        ("testValidationEmail", testValidationEmail),
        ("testValidationLetters", testValidationLetters),
        ("testValidationNumbers", testValidationNumbers),
        ("testValidationAlphabetic", testValidationAlphabetic),
        ("testSubscriptCoutableClosedRnage", testSubscriptCoutableClosedRnage),
        ("testSubscriptCountableRange", testSubscriptCountableRange),
        ("testSubscriptPartialRnageUpTo", testSubscriptPartialRnageUpTo),
        ("testSubscriptPartialRangeThrough", testSubscriptPartialRangeThrough),
        ("testSubscriptPartialRangeFrom", testSubscriptPartialRangeFrom),
        ("testIndexOf", testIndexOf)
    ]
       
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
        
        let zSymbol = "z"
        let zIndex = testString.lastIndex(of: zSymbol)
        XCTAssert(zIndex?.utf16Offset(in: zSymbol) == testString.count - 1)
        
        let tSymbol = "t"
        let tIndex = testString.lastIndex(of: tSymbol)
        XCTAssert(tIndex?.utf16Offset(in: tSymbol) == testString.count - 3)
        
        let iSymbol = "i"
        let iIndex = testString.lastIndex(of: iSymbol)
        XCTAssert(iIndex?.utf16Offset(in: iSymbol) == testString.count - 18)
        
        let ySymbol = "y"
        let yIndex = testString.lastIndex(of: ySymbol)
        XCTAssertFalse(yIndex?.utf16Offset(in: ySymbol) == testString.count - 18)
    }
    
    func testBase64() {
        
        let test = "123U djkfhg jksdf thkh dkjfg hdkfjg hdkjfg quihfkug hadfkjg adufkgh dkfhjg \n sdf sdf "
        
        let base64 = test.toBase64()
        
        XCTAssertTrue(base64 == "MTIzVSBkamtmaGcgamtzZGYgdGhraCBka2pmZyBoZGtmamcgaGRramZnIHF1aWhma3VnIGhhZGZramcgYWR1ZmtnaCBka2ZoamcgCiBzZGYgc2RmIA==")
        
        let fromBase64 = base64.fromBase64()
        
        XCTAssertTrue(fromBase64 == test)
    }
    
    func testValidationAlphanumeric() {
        let alhaNum = "37964798hvjkdhkjsdf3kjKJfkh2KJH34"
        XCTAssertTrue(alhaNum.isAlphaNumeric)
        
        let nonAlhaNum = "Hello World!"
        XCTAssertFalse(nonAlhaNum.isAlphaNumeric)
    }

    func testValidationEmail() {
        let exampleOne = "john.black@gmail.com"
        let exampleTwo = "blackJogn234@yahoo.net"
        let exampleThree = "345jdjgg3445nmbn.w34@mail.global"
        
        XCTAssert(exampleOne.isEmail == true)
        XCTAssert(exampleTwo.isEmail == true)
        XCTAssert(exampleThree.isEmail == true)
        
        let exampleFour = "jsldfhJJj--x-x@mfmfc@"
        let exampleFive = "g@.com.com@"
        let exampleSix = "237846987gmail.com"
        
        XCTAssert(exampleFour.isEmail == false)
        XCTAssert(exampleFive.isEmail == false)
        XCTAssert(exampleSix.isEmail == false)
    }

    
    func testValidationLetters() {
        let exampleOne = "jlsdhfjksdf234jhL&8o7w34"
        let exampleTwo = "mm34m)((*S)(UG()V()(SJ"
        let exampleThree = "23748920374298347898h7238947"
        
        XCTAssert(exampleOne.hasLetters == true)
        XCTAssert(exampleTwo.hasLetters == true)
        XCTAssert(exampleThree.hasLetters == true)
        
        let exampleFour = "82937420394#$&^%*()@8"
        let exampleFive = "82-0930--=03"
        let exampleSix = "˙¨˙∂˚∆∫√µ∑≥¨˚§•¡ªº£¶•ª¶¨ˆøƒ˙∆£334"
        
        XCTAssert(exampleFour.isEmail == false)
        XCTAssert(exampleFive.isEmail == false)
        XCTAssert(exampleSix.isEmail == false)
    }
    
    func testValidationNumbers() {
        let exampleOne = "jlsdhfjksdf234jhL&8o7w34"
        let exampleTwo = "mm34m)((*S)(UG()V()(SJ"
        let exampleThree = "23748920374298347898h7238947"
        
        XCTAssert(exampleOne.hasNumbers == true)
        XCTAssert(exampleTwo.hasNumbers == true)
        XCTAssert(exampleThree.hasNumbers == true)
        
        let exampleFour = "najkvsdfghaskldfjskldfNJKLHGJE"
        let exampleFive = ",mnjuLKJKLJDHJK˙˚∆ƒ"
        let exampleSix = "˙¨˙∂˚∆∫√µ∑≥¨˚§•¡ªº£¶•ª¶¨ˆøƒ˙∆£"
        
        XCTAssert(exampleFour.hasNumbers == false)
        XCTAssert(exampleFive.hasNumbers == false)
        XCTAssert(exampleSix.hasNumbers == false)
    }
    
    func testValidationAlphabetic() {
        let exampleOne = "JKLFnvdjhfjkhgdfgbnvndj"
        let exampleTwo = "HelloSwiftcharacters"
        let exampleThree = "njvhllsdhfJKYKURYHKJVnjgjgjjsdfHKHKJ"
        
        XCTAssert(exampleOne.isAlphabetic == true)
        XCTAssert(exampleTwo.isAlphabetic == true)
        XCTAssert(exampleThree.isAlphabetic == true)
        
        let exampleFour = "najkvsdf3ghas5kldfjskldfNJKLHGJE"
        let exampleFive = ",mnjuLKJ2K345LJDHgJK˙˚∆ƒ"
        let exampleSix = "˙¨˙∂˚∆∫√µ∑≥2¨2˚22§44•2¡ªº£¶•ª¶¨ˆøƒ˙∆£"
        
        XCTAssert(exampleFour.isAlphabetic == false)
        XCTAssert(exampleFive.isAlphabetic == false)
        XCTAssert(exampleSix.isAlphabetic == false)
    }
    
    func testSubscriptCoutableClosedRnage() {
        let example = "Hello World"
        let result = example[0...3]
        XCTAssert(result == "Hell")
    }
    
    func testSubscriptCountableRange() {
        let example = "Hello World"
        let result = example[0..<3]
        XCTAssert(result == "Hel")
    }
    
    func testSubscriptPartialRnageUpTo() {
        let example = "Hello World"
        let result = example[..<3]
        XCTAssert(result == "Hel")
    }
    
    func testSubscriptPartialRangeThrough() {
        let example = "Hello World"
        let result = example[...3]
        XCTAssert(result == "Hell")
    }
    
    func testSubscriptPartialRangeFrom() {
        let example = "Hello World"
        let result = example[3...]
        XCTAssert(result == "lo World")
    }
    
    func testStringJSONValidation() {
        let example =
        """
    {
        "name":"kukumba.maybe",
        "messages":["msg 1","msg 2","msg 3"],
        "age":100

    }
    """
        XCTAssertTrue(example.isJSON)
    }
    
    func testStringUUIDValidation() {
        let sampleFirst = "4320fa3d-c004-4f8d-873e-885d382c99b9"
        let sampleSecond = "756150cb-a928-4941-b158-6fe3e2a40f16"
        XCTAssertTrue(sampleFirst.isUUID)
        XCTAssertTrue(sampleSecond.isUUID)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
