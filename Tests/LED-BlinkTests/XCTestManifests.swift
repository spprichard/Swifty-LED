import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LED_BlinkTests.allTests),
    ]
}
#endif
