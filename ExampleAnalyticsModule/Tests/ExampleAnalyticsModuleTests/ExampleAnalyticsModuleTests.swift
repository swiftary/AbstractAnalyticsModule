import XCTest
@testable import ExampleAnalyticsModule

final class ExampleAnalyticsModuleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ExampleAnalyticsModule().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
