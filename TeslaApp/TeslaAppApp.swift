//
//  TeslaAppApp.swift
//  TeslaApp
//
//  Created by Rathakrishnan Ramasamy on 16/07/22.
//

import SwiftUI

@main
struct TeslaAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView111()
            .onOpenURL(perform: handleURL)
        }
    }
    
    func handleURL(_ url: URL) {
        print("open url called")
        _ = appDelegate.application(UIApplication.shared, open: url, options: [:])

    }
}
