//
//  CollectionTests.swift
//  ios-extensionsTests
//
//  Created by Astemir Eleev on 14/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest

class CollectionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSum() {
        let collection = [1,2,3,4,5,6]
        XCTAssert(collection.sum == 21)
    }
    
    func testAverage() {
        let collection = [1,2,3,3,3,2,1]
        XCTAssert(collection.average == 2)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
