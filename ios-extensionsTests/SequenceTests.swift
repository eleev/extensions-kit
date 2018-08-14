//
//  SequenceTests.swift
//  ios-extensionsTests
//
//  Created by Astemir Eleev on 14/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest

class SequenceTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShuffled() {
        let array = [1,2,3,4,5,6,7]
        var shuffledArray = array.shuffled()
        var iterations = 10
        
        while iterations > -1 {
            XCTAssert(shuffledArray != array.shuffled())

            shuffledArray = array.shuffled()
            iterations -= 1
        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
