//
//  DebouncerTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 09/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class DebouncerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDebouncer() {
        let expectation = XCTestExpectation(description: "Debouncer extpectation")
        
        var tempVar = "Initial Value"
        let debouncer = Debouncer(delay: 2.0)
        let start = DispatchTime.now()
        
        debouncer.schedule {
            tempVar = "Changed Value"
            XCTAssert(tempVar == "Changed Value")
            
            let end = DispatchTime.now()
            let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
            let timeInterval = Double(nanoTime) / 1_000_000_000
            XCTAssert(timeInterval > 1.95 && timeInterval < 2.1)
                        
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 3.0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
