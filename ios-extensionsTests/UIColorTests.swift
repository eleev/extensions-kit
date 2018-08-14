//
//  UIColorTests.swift
//  ios-extensionsTests
//
//  Created by Astemir Eleev on 06/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest

class UIColorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRGBComponentsColor() {
        let blackColor = UIColor.black
        guard let blackColorComponents = blackColor.rgba else {
            return
        }
        XCTAssert(blackColorComponents == (red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0))
        
        let customColor = UIColor(red: 0.45, green: 0.23, blue: 0.75, alpha: 0.86)
        guard let customColorComponents = customColor.rgba else {
            return
        }
        
        XCTAssert(customColorComponents == (red: 0.45, green: 0.23, blue: 0.75, alpha: 0.86))
    }

    func testHSBAComponnetsColor() {
        let blackColor = UIColor.black
        guard let blackColorComponents = blackColor.hsba else {
            XCTAssert(false)
            return
        }
        XCTAssert(blackColorComponents == (hue: 0.0, saturation: 0.0, brightness: 0.0, alpha: 1.0))
        
        
        let customColor = UIColor(hue: 0.45, saturation: 0.23, brightness: 0.75, alpha: 0.86)
        guard let customColorComponents = customColor.hsba else {
            XCTAssert(false)
            return
        }
        XCTAssert(customColorComponents == (hue: 0.45, saturation: 0.23, brightness: 0.75, alpha: 0.86))
        
    }
    
    func testGrayscaleComponnetsColor() {
        let blackColor = UIColor.black
        guard let blackColorComponents = blackColor.grayscale else {
            return
        }
        XCTAssert(blackColorComponents == (white: 0.0, alpha: 1.0))
        
        
        let customColor = UIColor(white: 0.73, alpha: 0.39)
        guard let customColorComponents = customColor.grayscale else {
            return
        }
        
        XCTAssert(customColorComponents == (white: 0.73, alpha: 0.39))
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
