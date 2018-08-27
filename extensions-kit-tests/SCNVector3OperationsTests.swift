//
//  SCNVector3OperationsTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
import SceneKit
@testable import extensions_kit

class SCNVector3OperationsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBasicOperators() {
        XCTAssert(SCNVector3(4, 3, 2) == SCNVector3(4, 3, 2))
        XCTAssert(SCNVector3(4, 3, 2) != SCNVector3(4, 2, 2))
        XCTAssert(!(SCNVector3(4, 3, 2) != SCNVector3(4, 3, 2)))
        XCTAssert(SCNVector3(4, 3, 2) + SCNVector3(4, 2, 2) == SCNVector3(8, 5, 4))
        
        var vec = SCNVector3(4, 3, 2)
        vec += SCNVector3(4, 2, 2)
        XCTAssert(vec == SCNVector3(8, 5, 4))
        
        XCTAssert(SCNVector3(4, 3, 2) - SCNVector3(4, 2, 2) == SCNVector3(0, 1, 0))
        
        vec = SCNVector3(4, 3, 2)
        vec -= SCNVector3(4, 2, 2)
        XCTAssert(vec == SCNVector3(0, 1, 0))
        
        XCTAssert(SCNVector3(4, 3, 2) * SCNVector3(4, 2, 2) == SCNVector3(16, 6, 4))
        
        vec = SCNVector3(4, 3, 2)
        vec *= SCNVector3(4, 2, 2)
        XCTAssert(vec == SCNVector3(16, 6, 4))
        
        XCTAssert(SCNVector3(4, 3, 2) * Float(5) == SCNVector3(20, 15, 10))
        
        vec = SCNVector3(4, 3, 2)
        vec *= Float(5)
        XCTAssert(vec == SCNVector3(20, 15, 10))
        
        XCTAssert(SCNVector3(4, 3, 2) * CGFloat(5) == SCNVector3(20, 15, 10))
        
        vec = SCNVector3(4, 3, 2)
        vec *= CGFloat(5)
        XCTAssert(vec == SCNVector3(20, 15, 10))
        
        XCTAssert(SCNVector3(4, 3, 2) / CGFloat(2) == SCNVector3(2, 1.5, 1))
        
        vec = SCNVector3(4, 3, 2)
        vec /= CGFloat(2)
        XCTAssert(vec == SCNVector3(2, 1.5, 1))
        
        XCTAssert(SCNVector3(4, 3, 2) / Float(2) == SCNVector3(2, 1.5, 1))
        
        vec = SCNVector3(4, 3, 2)
        vec /= Float(2)
        XCTAssert(vec == SCNVector3(2, 1.5, 1))
        
        XCTAssert(SCNVector3(4, 3, 2) / SCNVector3(2, 3, 2) == SCNVector3(2, 1, 1))
        
        vec = SCNVector3(4, 3, 2)
        vec /= SCNVector3(2, 3, 2)
        XCTAssert(vec == SCNVector3(2, 1, 1))
    }
    
    func testAdvancedOperators() {
        var firstVector = SCNVector3(2, 8, 5)
        let secondVector = SCNVector3(37, 3, 9)
        let resultVector = SCNVector3(57, 167, -290)
        
        let crossResult = firstVector +* secondVector
        XCTAssert(crossResult == resultVector)
        
        firstVector +*= secondVector
        XCTAssert(firstVector == resultVector)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
