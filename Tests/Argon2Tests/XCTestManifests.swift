import XCTest

#if os(Linux)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Argon2Tests.allTests),
    ]
}
#endif
