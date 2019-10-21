//
//  SequenceTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 14/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class SequenceTests: XCTestCase {
    
    static var allTests = [
        ("testShuffled", testShuffled),
        ("testCount", testCount),
        ("testDuplicatedRemoved", testDuplicatedRemoved)
    ]
    
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
    
    func testCount() {
        let array = [1,2,3,4,5,6,7,8,9]
        let numberOfEvens = array.count {
            $0 % 2 == 0
        }
        
        XCTAssert(numberOfEvens == 4)
        
        let numberOfOdds = array.count {
            $0 % 2 == 1
        }
        
        XCTAssert(numberOfOdds == 5)
        
        let stringArray = ["Asdjf", "ASGhjsndm", "eds", "Hello", "snoyle", "Long", "Play", "vAMpire", "AsdinneR"]
        
        let prefixCount = stringArray.count {
            $0.hasPrefix("As")
        }
        
        XCTAssert(prefixCount == 2)
    }
    
    func testDuplicatedRemoved() {
        let test = [1,1,6,4,3,3,4,5,7,7,3,4,5,5,3,2,3,4]
        
        let removedDuplicates = test.removeDuplicates()
        
        XCTAssert(removedDuplicates == [1,6,4,3,5,7,2])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
