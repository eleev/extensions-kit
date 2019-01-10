//
//  IdentifiableTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class IdentifiableTests: XCTestCase {

    // MARK: - Testables
    
    class Cell: UITableView, Identifiable {
        // Implementation is not required
    }
    
    struct Book: Identifiable {
        // Implementation is not required
    }
    
    // MARK: - Overrides
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIdentifiable() {
        let cellId = Cell.reuseIdentifier
        let bookId = Book.reuseIdentifier

        XCTAssert(cellId == "Cell")
        XCTAssert(bookId == "Book")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
