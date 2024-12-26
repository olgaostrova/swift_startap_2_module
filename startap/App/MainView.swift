//
//  MainView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 02.12.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NewForumView()
                .tabItem {
                    Label("Форум", systemImage: "star")
                }
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person.crop.circle")
                }
            
            SettingsIView()
                .tabItem {
                    Label("О нас", systemImage: "folder.badge.gearshape")
                }
        }
    }
}

#Preview {
    MainView()
}
