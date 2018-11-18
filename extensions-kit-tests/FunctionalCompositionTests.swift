//
//  FunctionalCompositionTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 18/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class FunctionalCompositionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testComposition() {
        func double<T: Numeric>(array: [T]) -> [T] {
            return array.map { $0 * 2 }
        }
        
        func square<T: Numeric>(array: [T]) -> [T] {
            return array.map { $0 * $0 }
        }
        
        func toStringArray<T: Numeric>(array: [T]) -> [String] {
            return array.map { "\($0)" }
        }
        
        let data = [1,2,3,4,5]
        
        let newData = (double ->> square ->> toStringArray)(data)
        
        let expectedResult = ["4", "16", "36", "64", "100"]
        
        XCTAssert(newData == expectedResult)
        
        let reversedComposition = (toStringArray <<- square <<- double)(data)
        XCTAssert(reversedComposition == expectedResult)
    }

}
