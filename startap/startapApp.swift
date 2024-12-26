//
//  startapApp.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

@main
struct StartUpApp: App {
    @StateObject var themeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}


