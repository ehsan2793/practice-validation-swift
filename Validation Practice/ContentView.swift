//
//  ContentView.swift
//  Validation Practice
//
//  Created by Ehsan Rahimi on 8/3/24.
//

import SwiftUI

struct LoginFormError {
    var email: String = ""
    var password: String = ""
}

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var loginFormError = LoginFormError()

    private func clearForm() {
        loginFormError = LoginFormError()
    }

    var isFormValid: Bool {
        if email.isEmpty {
            loginFormError.email = "Email is required"
        } else if !email.isValidEmail {
            loginFormError.email = "Email is not correct"
        }

        if password.isEmpty {
            loginFormError.password = "Password is required"
        } else {
            loginFormError.password = ""
        }
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }

    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            Text(loginFormError.email)
                .font(.caption)
                .foregroundStyle(.red.opacity(0.6))
            SecureField("Password", text: $password)
            Text(loginFormError.password)
                .font(.caption)
                .foregroundStyle(.red.opacity(0.6))
            Button("Login") {
                if isFormValid {
                    clearForm()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
