import XCTest

class BaseTest: XCTestCase {

    static var app: XCUIApplication!

    override class func setUp() {
        super.setUp()

        app = XCUIApplication()
        app.launchArguments.append("--UITest")
        app.launch()
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
        print(" Test Started: \(self.name)")
    }

    override func tearDownWithError() throws {
        print(" Test Finished: \(self.name)")
    }
}
