//
//  CGPointOperatorsTests.swift
//  ios-extensionsTests
//
//  Created by Astemir Eleev on 16/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ios_extensions

class CGPointOperatorsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testOperators() {
        let pointOne = CGPoint(x: 2, y: 3)
        let pointTwo = CGPoint(x: 9, y: 5)
        let vectorTwo = CGVector(dx: 9, dy: 5)
        
        XCTAssert(pointOne + pointTwo == CGPoint(x: 11, y: 8))
        
        var sumPointOne = pointOne
        sumPointOne += pointTwo
        
        XCTAssert(sumPointOne == CGPoint(x: 11, y: 8))
        
        XCTAssert(pointOne + vectorTwo == CGPoint(x: 11, y: 8))
        
        sumPointOne = pointOne
        sumPointOne += vectorTwo
        XCTAssert(sumPointOne == CGPoint(x: 11, y: 8))
        
        
        XCTAssert(pointOne - pointTwo == CGPoint(x: -7, y: -2))
        
        var subPointOne = pointOne
        subPointOne -= pointTwo
        
        XCTAssert(subPointOne == CGPoint(x: -7, y: -2))
        
        XCTAssert(pointOne - vectorTwo == CGPoint(x: -7, y: -2))
        
        subPointOne = pointOne
        subPointOne -= vectorTwo
        XCTAssert(subPointOne == CGPoint(x: -7, y: -2))
        
        
        XCTAssert(pointOne * pointTwo == CGPoint(x: 18, y: 15))
        
        var multPointOne = pointOne
        multPointOne *= pointTwo
        
        XCTAssert(multPointOne == CGPoint(x: 18, y: 15))
        
        XCTAssert(pointOne * vectorTwo == CGPoint(x: 18, y: 15))
        
        multPointOne = pointOne
        multPointOne *= vectorTwo
        XCTAssert(multPointOne == CGPoint(x: 18, y: 15))
        
        XCTAssert(pointOne * CGFloat(3) == CGPoint(x: 6, y: 9))
        
        multPointOne = pointOne
        multPointOne *= CGFloat(3)
        XCTAssert(multPointOne == CGPoint(x: 6, y: 9))
        
        
        let divisionResultOne = CGPoint(x: 0.222222222222222, y: 0.6)
        let divideOne = pointOne / pointTwo
        
        XCTAssert(divideOne.x.rounded(toPlaces: 3) ==  divisionResultOne.x.rounded(toPlaces: 3) && divideOne.y.rounded(toPlaces: 3) == divisionResultOne.y.rounded(toPlaces: 3))
        
        var divPointOne = pointOne
        divPointOne /= pointTwo
        
        XCTAssert(divPointOne.x.rounded(toPlaces: 3) ==  divisionResultOne.x.rounded(toPlaces: 3) && divPointOne.y.rounded(toPlaces: 3) == divisionResultOne.y.rounded(toPlaces: 3))
        
        let divPointTwo = pointOne / vectorTwo
        XCTAssert(divPointTwo.x.rounded(toPlaces: 3) ==  divisionResultOne.x.rounded(toPlaces: 3) && divPointTwo.y.rounded(toPlaces: 3) == divisionResultOne.y.rounded(toPlaces: 3))
        
        divPointOne = pointOne
        divPointOne /= vectorTwo
//        XCTAssert(divPointOne == CGPoint(x: 0.222222222222222, y: 0.6))
        XCTAssert(divPointOne.x.rounded(toPlaces: 3) ==  divisionResultOne.x.rounded(toPlaces: 3) && divPointOne.y.rounded(toPlaces: 3) == divisionResultOne.y.rounded(toPlaces: 3))
        
        let divisionResultTwo = CGPoint(x: 0.666666666666667, y: 1.0)
        let divPointThree = pointOne / CGFloat(3)
        
        XCTAssert(divPointThree.x.rounded(toPlaces: 4) ==  divisionResultTwo.x.rounded(toPlaces: 4) && divPointThree.y.rounded(toPlaces: 4) == divisionResultTwo.y.rounded(toPlaces: 4))
        
        divPointOne = pointOne
        divPointOne /= CGFloat(3)
        XCTAssert(divPointOne.x.rounded(toPlaces: 4) ==  divisionResultTwo.x.rounded(toPlaces: 4) && divPointOne.y.rounded(toPlaces: 4) == divisionResultTwo.y.rounded(toPlaces: 4))
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
