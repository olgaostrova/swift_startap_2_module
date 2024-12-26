//
//  SettingsIView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 16.12.2024.
//

import SwiftUI

struct SettingsIView: View {
    @EnvironmentObject var themeManager: ThemeManager
    @State private var showFeedback = false
    @State private var showAbout = false
    @State private var showLogoutAlert = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Информация")) {
                    Button(action: {
                        showFeedback.toggle()
                    }) {
                        Text("Фидбек")
                    }
                    .sheet(isPresented: $showFeedback) {
                        FeedbackView()
                    }
                    Button(action: {
                        showAbout.toggle()
                    }) {
                        Text("О нас")
                    }
                    .sheet(isPresented: $showAbout) {
                        AboutView()
                    }
                }
                Section {
                    Button(action: {
                        showLogoutAlert.toggle()
                    }) {
                        Text("Logout")
                            .foregroundColor(.red)
                    }
                    .alert(isPresented: $showLogoutAlert) {
                        Alert(
                            title: Text("Logout"),
                            message: Text("Are you sure you want to log out?"),
                            primaryButton: .destructive(Text("Logout")) {
                                print("User logged out")
                            },
                            secondaryButton: .cancel()
                        )
                    }
                }
            }

        }
        .navigationBarTitle("Settings")
    }
    }
#Preview {
    SettingsIView()
}
