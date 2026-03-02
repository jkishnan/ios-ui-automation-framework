import XCTest

final class LoginTests: BaseTest {

    func testValidLogin() {

        let loginPage = LoginPage(app: app)

        XCTAssertTrue(loginPage.waitForLoginScreen())

        loginPage.login(username: "test", password: "1234")

        XCTAssertTrue(loginPage.isWelcomeMessageDisplayed())
    }

    func testInvalidLogin() {

        let loginPage = LoginPage(app: app)

        XCTAssertTrue(loginPage.waitForLoginScreen())

        loginPage.login(username: "wrong", password: "wrong")

        XCTAssertFalse(loginPage.isWelcomeMessageDisplayed())
    }
}
