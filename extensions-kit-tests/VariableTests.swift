//
//  VariableTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 12/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class VariableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testVariable() {
        let stringVariable = Variable("Initial Value", false)
        let newValue = "New Value"
        stringVariable.value = newValue

        stringVariable.onUpdate = {
            let isEqual = $0 == newValue
            XCTAssert(isEqual)
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
