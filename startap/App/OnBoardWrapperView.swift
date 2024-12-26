//
//  OnBoardWrapperView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 19.12.2024.
//

import SwiftUI

struct OnBoardWrapperView: View {
    @State private var showForumView = false
    @State private var currentPage = 0
    let pages = [
        OnboardingData(image: "img1", title: "Бонжур салага!", description: "Молодой стартапер, добро пожаловать в мир полезной коммуникации", descriptionsec: "Самое главное, что тебе нужно помнить о нашем проекте —  помоги другим и обязательно помогут тебе", backimg: "onboard"),
        OnboardingData(image: "img2", title: "Система ТАПОВ", description: "В нашем приложении есть очень интересная система, которая очень поможет тебе в общении с другими людьми и облегчит продвижение проекта (и себя любимого)",descriptionsec: "Поначалу будет немного сложно разобраться, но как говорил наш куратор Захар День:", backimg: "onboard2"),
        OnboardingData(image: "img3", title: "Иди за успехом прямо сейчас!", description: "", descriptionsec: "", backimg: "onboard3")]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BlackSuper").ignoresSafeArea()
                VStack {
                    TabView(selection: $currentPage) {
                        ForEach(0..<pages.count) { index in
                            OnboardingView(data: pages[index])
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    .ignoresSafeArea()
                }
                if currentPage == pages.count - 1 {
                    NavigationLink(destination: RegisterV(), isActive: $showForumView) {
                        EmptyView()
                    }
                    HStack {
                        Button("Начать") {
                            showForumView = true
                        }
                        .foregroundColor(Color("WhiteKnowlage"))
                        .font(.custom("NeutralFace", size: 20))
                        Image("arrow2")
                    }
                    .padding(.bottom, 50)
                    .offset(y: 325)
                }
            }
        }
    }
}

#Preview {
    OnBoardWrapperView()
}
