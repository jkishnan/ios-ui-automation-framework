import XCTest

class BaseTest: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()

        print("🚀 Test Started: \(self.name)")
    }

    override func tearDownWithError() throws {
        print("✅ Test Finished: \(self.name)")
        app = nil
    }
}
