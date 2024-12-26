//
//  TabBarView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 01.12.2024.
//

import Foundation
import SwiftUI
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
struct MainTabView: View {
    var body: some View {
        TabView {
            ForumView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text ("Форум")
                }
            ProfileSetView()
                .tabItem {
                    Image (systemName: "person.circle")
                    Text ("Профиль")
                }
        }
        .tabViewStyle(.page) 
    }
}
