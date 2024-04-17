//
//  AuthenticationViewModel.swift
//  FinalProject
//
//  Created by Emily Denham on 4/17/24.
//

import Foundation
import FirebaseAuth
import Combine

class AuthenticationViewModel: ObservableObject {
    @Published var isAuthenticated = false

    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if let error = error {
                print("Authentication error: \(error.localizedDescription)")
            } else {
                self?.isAuthenticated = true
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            isAuthenticated = false
        } catch let error {
            print("Error signing out: \(error.localizedDescription)")
        }
    }
    
    
}
