//
//  ContentView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMainView = false
    
    var body: some View {
        if showMainView {
            MainView()
        } else {
            OnBoardWrapperView()
                .onAppear {
                    showMainView = true
                }
        }
    }
}



#Preview {
    ContentView()
}
