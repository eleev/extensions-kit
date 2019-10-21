import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayContainsTests.allTests),
        testCase(ArrayDifferenceTests.allTests),
        testCase(ArrayIntersectionTests.allTests),
        testCase(ArrayRemoveTests.allTests),
        testCase(ArrayFilterTests.allTests),
        testCase(ArrayUnionTests.allTests),
        testCase(BoolTests.allTests),
        testCase(DecodableTests.allTests),
        testCase(DictionaryTests.allTests),
        testCase(DoubleTests.allTests),
        testCase(IntDecimalToBinaryTests.allTests),
        testCase(IntTests.allTests),
        testCase(NSObjectTests.allTests),
        testCase(OptionSetTests.allTests),
        testCase(SeqeunceTests.allTests),
        testCase(StringTests.allTests),
        testCase(UnicodeOutputStreamTests.allTests)
    ]
}
#endif
