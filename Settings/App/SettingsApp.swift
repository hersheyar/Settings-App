//
//  SettingsApp.swift
//  Settings
//
//  Created by Andrew Hershey on 10/18/25.
//

import SwiftUI

@main
struct SettingsApp: App {
    @StateObject private var settings = SettingsViewModel()

    var body: some Scene {
        WindowGroup {
            SettingsView()
                .environmentObject(settings)
                .preferredColorScheme(settings.selectedTheme == "Dark" ? .dark : .light)
                .tint(settings.selectedAccent)
        }
    }
}
