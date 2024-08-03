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
    
    
    var body: some View {
        Form {
            TextField("Email", text: $email)
            TextField("Password", text: $password)
            Button("Login") {
                
            }.disabled(true)
        }

    }
}

#Preview {
    ContentView()
}
