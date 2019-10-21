//
//  DictionaryTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class DictionaryTests: XCTestCase {
    
    static var allTests = [
        ("testJsonData", testJsonData),
        ("testJsonString", testJsonString)
    ]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testJsonData() {
        let data: [String: String] = ["1" : "Hello JSON!", "2" : "This is the second value!", "3" : "And the third one"]
        
        guard let jsonData = data.jsonData() else {
            XCTAssert(false, "Could not unwrap the Data?")
            return
        }
        do {
            let decodedData = try JSONSerialization.jsonObject(with: jsonData, options: [])
            
            if let udecodedData = decodedData as? [String : String] {
                if udecodedData == data {
        
                    // Success
                    XCTAssert(true)
                } else {
                    // Failed
                    XCTAssert(false, "The original data dict is not equal to the unwrapped one")
                }
            } else {
                XCTAssert(false, "Could not case Any JSON data to expected [String:String] dictionary")
            }
            
        } catch {
            XCTAssert(false, "JSON serualization raised an error: \(error)")
        }
    }
    
    func testJsonString() {
        let data: [String: String] = ["1" : "Hello JSON!", "2" : "This is the second value!", "3" : "And the third one"]
        
        guard let jsonString = data.jsonString() else {
            XCTAssert(false, "Could not unwrap the String?")
            return
        }
        
        guard let jsonObject = jsonString.data(using: .utf8) else {
            XCTAssert(false, "Could not unwrap the Data?")
            return
        }
        
        do {
            let decodedData = try JSONSerialization.jsonObject(with: jsonObject, options: [])
            
            if let udecodedData = decodedData as? [String : String] {
                if udecodedData == data {
                    
                    // Success
                    XCTAssert(true)
                } else {
                    // Failed
                    XCTAssert(false, "The original data dict is not equal to the unwrapped one")
                }
            } else {
                XCTAssert(false, "Could not case Any JSON data to expected [String:String] dictionary")
            }
            
        } catch {
            XCTAssert(false, "JSON serualization raised an error: \(error)")
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
