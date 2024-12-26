//
//  FeedbackView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 16.12.2024.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("FeedBack")
                    .resizable()
                    .ignoresSafeArea()
            VStack {
                Text("Привет!")
                    .font(.custom("OffBit-Bold", size: 64))
                    .padding()
                    .foregroundColor(Color("WhiteKnowlage"))
                Text("Расскажите нам об опыте \nиспользования приложения, \nчтобы мы могли его улучшить!")
                    .font(.custom("Inter-18pt-Regular.ttf", size: 18))
                    .foregroundColor(Color("WhiteKnowlage"))
                    .padding(.leading, 20)
                    .multilineTextAlignment(.center)
                    .lineSpacing(3) 
                Spacer()
            }
            .padding(.top, 210)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
            .navigationBarItems(trailing: Button("Назад") {
                UIApplication.shared.windows
                    .first?.rootViewController?.dismiss(animated: true, completion: nil)
            })
            .foregroundColor(Color("WhiteKnowlage"))
        }
        
    }
}
#Preview {
    FeedbackView()
}
