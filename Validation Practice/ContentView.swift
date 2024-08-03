//
//  ContentView.swift
//  Validation Practice
//
//  Created by Ehsan Rahimi on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var isFormValid : Bool {
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            Button("Login") {
                
            }.disabled(!isFormValid)
        }

    }
}

#Preview {
    ContentView()
}
