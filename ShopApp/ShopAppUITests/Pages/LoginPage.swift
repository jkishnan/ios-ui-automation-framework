import XCTest

class LoginPage {

    private let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    // MARK: - Elements

    private var usernameField: XCUIElement {
        app.textFields["username"]
    }

    private var passwordField: XCUIElement {
        app.secureTextFields["password"]
    }

    private var loginButton: XCUIElement {
        app.buttons["loginButton"]
    }

    private var welcomeMessage: XCUIElement {
        app.staticTexts["welcomeMessage"]
    }

    // MARK: - Synchronization

    func waitForLoginScreen(timeout: TimeInterval = 2) -> Bool {
        return usernameField.waitForExistence(timeout: timeout)
    }

    // MARK: - Actions

    func login(username: String, password: String) {
        usernameField.tap()
        usernameField.clearAndTypeText(text: username)

        passwordField.tap()
        passwordField.clearAndTypeText(text: password)

        loginButton.tap()
        }

    // MARK: - Validations

    func isWelcomeMessageDisplayed(timeout: TimeInterval = 2) -> Bool {
        return welcomeMessage.waitForExistence(timeout: timeout)
    }
}
