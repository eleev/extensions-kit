//
//  ArraySortingTests.swift
//  extensions-kit-tests
//
//  Created by Astemir Eleev on 06/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import XCTest
@testable import ExtendedFoundationSorting

class ArraySortingTests: XCTestCase {

    // MARK: - Test properties
    
    let correctSampleArrayInt = [2, 2, 2, 4, 5, 5, 7, 8, 45, 56, 67, 67, 456, 568, 3456]
    let correctSampleReversedArrayInt = [3456, 568, 456, 67, 67, 56, 45, 8, 7, 5, 5, 4, 2, 2, 2]
    var testArrayInt = [5,7,2,2,4,67,568,67,8,456,2,5,45,3456,56]
    
    let correctSampleArrayDouble = [2.2, 2.2, 2.6, 4.8, 5.6, 5.8, 7.4, 8.89, 45.6, 56.567, 67.35, 67.55, 456.45, 568.567, 3456.34]
    let correctSampleReversedArrayDouble = [3456.34, 568.567, 456.45, 67.55, 67.35, 56.567, 45.6, 8.89, 7.4, 5.8, 5.6, 4.8, 2.6, 2.2, 2.2]
    var testArrayDouble = [5.6,7.4,2.2,2.6,4.8,67.35,568.567,67.55,8.89,456.45,2.2,5.8,45.6,3456.34,56.567]
    
    // MARK: - Methods
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        testArrayInt = [5,7,2,2,4,67,568,67,8,456,2,5,45,3456,56]
        testArrayDouble = [5.6,7.4,2.2,2.6,4.8,67.35,568.567,67.55,8.89,456.45,2.2,5.8,45.6,3456.34,56.567]
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInsertionSort() {
        testArrayInt.insertionSorted(order: >)
        XCTAssert(testArrayInt == correctSampleArrayInt)
        testArrayInt.insertionSorted(order: <)
        XCTAssert(testArrayInt == correctSampleReversedArrayInt)
        
        testArrayDouble.insertionSorted(order: >)
        XCTAssert(testArrayDouble == correctSampleArrayDouble)
        testArrayDouble.insertionSorted(order: <)
        XCTAssert(testArrayDouble == correctSampleReversedArrayDouble)
    }
    
    func testMergeSort() {
        let resultInt = Array.mergeSort(testArrayInt, order: >)
        XCTAssert(resultInt == correctSampleArrayInt)
        let resultIntReversed = Array.mergeSort(testArrayInt, order: <)
        XCTAssert(resultIntReversed == correctSampleReversedArrayInt)
        
        let resultDouble = Array.mergeSort(testArrayDouble, order: >)
        XCTAssert(resultDouble == correctSampleArrayDouble)
        let resultDoubleReversed = Array.mergeSort(testArrayDouble, order: <)
        XCTAssert(resultDoubleReversed == correctSampleReversedArrayDouble)
    }
    
    func testQuickSortHoare() {
        Array.quickSortHoare(array: &testArrayInt, lowest: 0, highest: testArrayInt.count - 1)
        XCTAssert(testArrayInt == correctSampleArrayInt)
        
        Array.quickSortHoare(array: &testArrayDouble, lowest: 0, highest: testArrayDouble.count - 1)
        XCTAssert(testArrayDouble == correctSampleArrayDouble)
    }
    
    func testQuickSortLomuto() {
        Array.quickSortLomuto(array: &testArrayInt, lowest: 0, highest: testArrayInt.count - 1)
        XCTAssert(testArrayInt == correctSampleArrayInt)
        
        Array.quickSortLomuto(array: &testArrayDouble, lowest: 0, highest: testArrayDouble.count - 1)
        XCTAssert(testArrayDouble == correctSampleArrayDouble)
    }

    func testBubbleSort() {
        testArrayInt.bubbleSorted(order: >)
        XCTAssert(testArrayInt == correctSampleArrayInt)
        testArrayInt.bubbleSorted(order: <)
        XCTAssert(testArrayInt == correctSampleReversedArrayInt)
        
        testArrayDouble.bubbleSorted(order: >)
        XCTAssert(testArrayDouble == correctSampleArrayDouble)
        testArrayDouble.bubbleSorted(order: <)
        XCTAssert(testArrayDouble == correctSampleReversedArrayDouble)
    }
    
    func testShellSort() {
        print("before sorting : ", testArrayInt)
        testArrayInt.shellSorted(order: >)
        print("after sorting : ", testArrayInt)
        XCTAssert(testArrayInt == correctSampleArrayInt)
        testArrayInt.shellSorted(order: <)
        XCTAssert(testArrayInt == correctSampleReversedArrayInt)
        
        testArrayDouble.shellSorted(order: >)
        XCTAssert(testArrayDouble == correctSampleArrayDouble)
        testArrayDouble.shellSorted(order: <)
        XCTAssert(testArrayDouble == correctSampleReversedArrayDouble)
    }

    func testRadixSort() {
        testArrayInt.radixSorted()
        XCTAssert(testArrayInt == correctSampleArrayInt)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
