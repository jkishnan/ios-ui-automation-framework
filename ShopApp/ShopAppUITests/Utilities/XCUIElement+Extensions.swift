import XCTest

extension XCUIElement {

    func clearAndTypeText(text: String) {

        guard let currentValue = self.value as? String else {
            self.typeText(text)
            return
        }

        self.tap()

        let deleteString = String(
            repeating: XCUIKeyboardKey.delete.rawValue,
            count: currentValue.count
        )

        self.typeText(deleteString)
        self.typeText(text)
    }
}
