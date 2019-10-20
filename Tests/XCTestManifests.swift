import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayContainsTests.allTests),
        testCase(ArrayDifferenceTests.allTests),
        testCase(ArrayIntersectionTests.allTests),
        testCase(ArrayRemoveTests.allTests),
        testCase(ArrayFilterTests.allTests),
        testCase(ArrayUnionTests.allTests)
    ]
}
#endif
