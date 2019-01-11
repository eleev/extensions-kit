//
//  DispatchQueue+AsyncAfterTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 09/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class DispatchQueue_AsyncAfterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAsyncAfter() {
        let expectation = XCTestExpectation(description: "Async After expectation")
        let start = DispatchTime.now()
        
        DispatchQueue.main.asyncAfter(seconds: 2.5) {
            XCTAssert(true)
            
            let end = DispatchTime.now()
            let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
            let timeInterval = Double(nanoTime) / 1_000_000_000
            XCTAssert(timeInterval > 2.45 && timeInterval < 2.6)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 4.0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
