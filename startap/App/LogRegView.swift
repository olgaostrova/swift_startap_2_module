//
//  LogRegView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 28.10.2024.
//

import SwiftUI

struct LogRegView: View {
    var body: some View {
        Color.greyLight
            .ignoresSafeArea()
            .overlay(
        ZStack {
            
            Color.white
                RegisterV()
            }
            .cornerRadius(24)
            .padding(16)
        
            )
    }
}

#Preview {
    LogRegView()
}
