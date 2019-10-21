//
//  NSObjectTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 02/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundation

class NSObjectTests: XCTestCase {

    static var allTests = [
        ("testObjectName", testObjectName)
    ]
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testObjectName() {
        let _ = Foo()
        let _ = Bar()
        
        let fooClassName = Foo.nameOfClass
        let barClassName = Bar.nameOfClass
        
        debugPrint("foo : ", fooClassName)
        debugPrint("bar : ", barClassName)
        XCTAssert(fooClassName == "Foo")
        XCTAssert(barClassName == "Bar")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class Foo: NSObject { }
class Bar: NSObject { }
