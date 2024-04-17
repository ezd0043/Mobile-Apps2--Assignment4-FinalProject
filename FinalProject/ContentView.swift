//
//  ContentView.swift
//  FinalProject
//
//  Created by Emily Denham on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @ObservedObject private var authViewModel = AuthenticationViewModel()

    var body: some View {
        VStack {
            Image("barbell") 
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()

            Text("The Ultimate Crossfit App")
                .font(.title)
                .padding()

            Text("Please log in to access workouts and other features.")
                .padding()

            TextField("Email", text: $email)
                .autocapitalization(.none)
                .padding()
                .border(Color.gray)

            SecureField("Password", text: $password)
                .padding()
                .border(Color.gray)

            Button(action: {
                authViewModel.signIn(email: email, password: password)
            }) {
                Text("Log In")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            // Add other authentication methods 
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
