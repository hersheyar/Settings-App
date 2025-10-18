//
//  SettingsView.swift
//  Settings
//
//  Created by Andrew Hershey on 10/18/25.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settings: SettingsViewModel

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Theme")) {
                    Picker("Appearance", selection: $settings.selectedTheme) {
                        Text("Light").tag("Light")
                        Text("Dark").tag("Dark")
                    }
                    .pickerStyle(.segmented)
                }

                Section(header: Text("Font Size")) {
                    Picker("Text Size", selection: $settings.selectedFont) {
                        Text("Small").tag("Small")
                        Text("Medium").tag("Medium")
                        Text("Large").tag("Large")
                    }
                    .pickerStyle(.segmented)
                }

                Section(header: Text("Accent Color")) {
                    Picker("Accent", selection: $settings.selectedAccentName) {
                        Text("Blue").tag("Blue")
                        Text("Green").tag("Green")
                        Text("Orange").tag("Orange")
                    }
                    .pickerStyle(.segmented)
                }

                Section(header: Text("Preview")) {
                    NavigationLink(destination: PreviewScreen()) {
                        Text("Open Preview Screen")
                            .foregroundColor(settings.selectedAccent)
                            .font(.system(size: settings.fontSize))
                    }
                }
            }
            .navigationTitle("App Settings")
        }
    }
}

#Preview {
    SettingsView().environmentObject(SettingsViewModel())
}
