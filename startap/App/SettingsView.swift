//
//  SettingsView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 02.12.2024.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var themeManager: ThemeManager
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Select Theme")) {
                    HStack {
                        Text("Light")
                        Spacer()
                        if themeManager.selectedTheme == "light" {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        themeManager.selectedTheme = "light"
                    }
                    HStack {
                        Text("Dark")
                        Spacer()
                        if themeManager.selectedTheme == "dark" {
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        themeManager.selectedTheme = "dark"
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}
}
}

#Preview {
    SettingsView()
}
