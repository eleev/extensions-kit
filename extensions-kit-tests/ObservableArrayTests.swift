//
//  ObservableArrayTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 04/03/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import extensions_kit

class ObservableArrayTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSingleQueue() {
        let collection: ObservableArray = [1,2,3,4,5]
        collection += 6
        
        collection.allChanges = { change in
            if case let .addition(element) = change {
                XCTAssert(element == 6)
            }
        }
        collection.allChanges = nil
        
        var testValues = [7,8,9]
        var testIndex = [10,9,0,0]
        var testArrayRemoval = [2,1,10,11]
        let testArray = [10,11]
        
        collection.recentChanges = { change in
            if case let .addition(element) = change {
                XCTAssert(testValues.removeFirst() == element)
            } else if case let .additions(elements) = change {
                XCTAssert(testArray == elements)
            } else if case let .removal(data) = change {
                XCTAssert(testIndex.removeFirst() == data.index)
                XCTAssert(testArrayRemoval.removeLast() == data.element)
            }
        }
        
        collection += 7
        collection += 8
        collection += 9
        collection += [10,11]
        
        collection.removeLast()
        collection.remove(at: 9)
        
        collection.removeFirst()
        collection.removeFirst()
        
        var accumulatedHistory: [ObservableArray<Int>.Operation] = [
            ObservableArray.Operation.addition(element: 7),
            ObservableArray.Operation.addition(element: 8),
            ObservableArray.Operation.addition(element: 9),
            ObservableArray.Operation.additions(elements: [10, 11]),
            ObservableArray.Operation.removal(element: 11, index: 10),
            ObservableArray.Operation.removal(element: 10, index: 9),
            ObservableArray.Operation.removal(element: 1, index: 0),
            ObservableArray.Operation.removal(element: 2, index: 0)
        ]

        collection.allChanges = { change in
            XCTAssert(change == accumulatedHistory.removeFirst())
        }
    }
    
    func testMultipleQueues() {
        // TODO: requires implementation
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
