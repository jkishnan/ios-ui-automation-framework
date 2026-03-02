📱 iOS UI Automation Framework (Swift + XCUITest)
Overview

This repository demonstrates a modular, scalable iOS UI automation framework built using Swift and XCUITest.

The framework follows the Page Object Model (POM) design pattern and includes test lifecycle optimization, synchronization strategies, and reusable utilities designed for CI integration.

The project simulates a login workflow and validates both positive and negative scenarios using structured test architecture.

🏗 Architecture

The framework is structured to promote scalability, maintainability, and clean separation of concerns.

ShopAppUITests
│
├── Base
│     └── BaseTest.swift
│
├── Pages
│     └── LoginPage.swift
│
├── Tests
│     └── LoginTests.swift
│
└── Utilities
      └── XCUIElement+Extensions.swift
Key Design Decisions

BaseTest

Centralized test lifecycle management

Launches app once per test suite for optimized execution

Enables launch arguments for test-mode configuration

Page Object Model

Encapsulates UI elements and actions

Reduces test duplication

Improves readability and maintainability

Utility Extensions

Custom XCUIElement extension for stable text input

Eliminates flakiness caused by residual field values

⚡ Performance Optimization

Initial test execution time: ~76 seconds
Optimized execution time: ~17 seconds

Improvements implemented:

Moved app launch to override class func setUp()

Eliminated redundant relaunch per test

Reduced unnecessary timeout values

Removed hard waits (sleep())

Used waitForExistence() for explicit synchronization

This structure makes the suite CI-ready and scalable for larger test coverage.

🧪 Test Coverage

Current scenarios:

Valid login flow

Invalid login validation

Each test:

Waits for screen readiness

Performs user interaction

Validates expected UI state

Uses explicit synchronization

🛠 Tech Stack

Swift

XCUITest

Page Object Model (POM)

Git version control

CI-ready via xcodebuild

▶️ How to Run

Open project in Xcode

Select iPhone simulator

Press:

Cmd + U

Or via command line:

xcodebuild test \
-scheme ShopApp \
-destination 'platform=iOS Simulator,name=iPhone 15'
🔄 CI Integration (Ready)

This framework is designed to integrate with CI tools such as:

Jenkins

GitHub Actions

Bitrise

Because:

It runs via xcodebuild

No hardcoded delays

Deterministic synchronization

Modular architecture

📌 Future Enhancements

API automation layer (Python + pytest)

HTML reporting integration

Parallel simulator execution

Environment-based configuration (dev/staging)

Mock server integration

Code coverage tracking

👩‍💻 Author

Jaya Kishnani
QA Automation Engineer
Specializing in UI Automation, API Testing, and CI/CD integration
