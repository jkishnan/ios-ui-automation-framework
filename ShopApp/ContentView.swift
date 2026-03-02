import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            Text("Welcome")
                .accessibilityIdentifier("welcomeMessage")
        } else {
            VStack(spacing: 20) {
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .accessibilityIdentifier("username")

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .accessibilityIdentifier("password")

                Button("Login") {
                    if username == "test" && password == "1234" {
                        isLoggedIn = true
                    }
                }
                .accessibilityIdentifier("loginButton")
            }
            .padding()
        }
    }
}
