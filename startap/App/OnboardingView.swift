//
//  OnboardingView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 17.12.2024.
//

import SwiftUI

struct OnboardingView: View {
    var data: OnboardingData
    @State private var currentPage = 0
    var body: some View {
        ZStack {
            Image(data.backimg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(spacing: 30) {
                Image(data.image)
                Text(data.title)
                    .font(.custom("OffBit-Bold", size: 44))
                    .padding()
                    .foregroundColor(Color("WhiteKnowlage"))
                    .multilineTextAlignment(.center)
                VStack(spacing: 20) {
                    Text(data.description).font(.body)
                        .font(.custom("Inter-18pt-Regular.ttf", size: 20))
                        .foregroundColor(Color("WhiteKnowlage"))
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(3)
                    Text(data.descriptionsec).font(.body)
                        .font(.custom("Inter-18pt-Regular.ttf", size: 20))
                        .foregroundColor(Color("WhiteKnowlage"))
                        .padding(.horizontal, 10)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(3)
                }
            }
            .padding(.bottom, 180)
        }
        
    }
}

//#Preview {
//    OnboardingView()
//}
