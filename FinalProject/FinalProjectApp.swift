//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by Emily Denham on 4/12/24.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import FirebaseAnalytics



class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct FinalProject: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
