//
//  SettingsViewModel.swift
//  Settings
//
//  Created by Andrew Hershey on 10/18/25.
//

import SwiftUI

final class SettingsViewModel: ObservableObject {
    @AppStorage("theme") var selectedTheme: String = "Light"
    @AppStorage("fontSize") var selectedFont: String = "Medium"
    @AppStorage("accentColor") var selectedAccentName: String = "Blue"

    var selectedAccent: Color {
        switch selectedAccentName {
        case "Green": return .green
        case "Orange": return .orange
        default: return .blue
        }
    }

    var fontSize: CGFloat {
        switch selectedFont {
        case "Small": return 14
        case "Large": return 22
        default: return 17
        }
    }
}
