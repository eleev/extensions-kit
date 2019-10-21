//
//  OptionSetTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 29/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class OptionSetTests: XCTestCase {
    
    static var allTests = [
        ("testOperations", testOperations)
    ]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOperations() {
        let caseInsensitive = String.CompareOptions.caseInsensitive
        
        let backwards = String.CompareOptions.backwards
        let caseInsensitivebackwards = caseInsensitive.inserting(new: backwards)
        
        let result = String.CompareOptions(rawValue: caseInsensitivebackwards.rawValue)
        
        XCTAssertTrue(caseInsensitivebackwards == result)
        
        
        let removedCaseInsensitive = backwards.removing(caseInsensitive)
        let removedResult = String.CompareOptions(rawValue: removedCaseInsensitive.rawValue)
        
        XCTAssertTrue(removedResult == backwards)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
