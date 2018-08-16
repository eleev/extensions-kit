//
//  CGPointTests.swift
//  ios-extensionsTests
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ios_extensions

class CGPointTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOperations() {
        let testPoint = CGPoint(x: 4, y: 4)
        let lenght = testPoint.length()
        let result = CGFloat(5.65685424949)
        XCTAssertTrue(lenght.rounded(toPlaces: 4) == result.rounded(toPlaces: 4))
        
        let squaredLenght = testPoint.lengthSquared()
        XCTAssertTrue(squaredLenght == 32)
        
        let normalized = testPoint.normalized()
        let norX = normalized.x.rounded(toPlaces: 4)
        let norY = normalized.y.rounded(toPlaces: 4)
        let normalizationResult = CGPoint(x: 0.70710678118, y: 0.70710678118)
        XCTAssertTrue(norX == normalizationResult.x.rounded(toPlaces: 4) && norY == normalizationResult.y.rounded(toPlaces: 4))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
