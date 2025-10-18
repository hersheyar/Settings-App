//
//  PreviewScreen.swift
//  Settings
//
//  Created by Andrew Hershey on 10/18/25.
//

import SwiftUI

struct PreviewScreen: View {
    @EnvironmentObject var settings: SettingsViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("This is a preview!")
                .font(.system(size: settings.fontSize))
                .foregroundColor(settings.selectedAccent)

            Text("Your chosen theme: \(settings.selectedTheme)")
            Text("Font size: \(settings.selectedFont)")
            Text("Accent color: \(settings.selectedAccentName)")
        }
        .padding()
        .navigationTitle("Preview")
    }
}

#Preview {
    PreviewScreen().environmentObject(SettingsViewModel())
}
