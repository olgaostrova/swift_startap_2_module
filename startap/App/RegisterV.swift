//
//  RegisterV.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

struct RegisterV: View {
    @State private var username = ""
    @State private var password = ""
    @State private var canNavigateToForum = false
    @State private var mockUsers: [(username: String, password: String)] = [
        ("Startap", "Startapsuper"),
        ("Olenka", "Hurray"),
        ("Zyazik", "Lalala"),
        ("Senechka", "Pupupu")
    ]
//    @State private var showLogin = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("auto")
                    .resizable()
                    .ignoresSafeArea()
                VStack (spacing: 46) {
                    Text("Бонжур, \nсалага!")
                        .font(.custom("OffBit-Bold", size: 64))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("WhiteKnowlage"))
                    
                    VStack (spacing: 16){
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            TextField("Юзернейм", text: $username)
                                .padding()
                                .foregroundColor(Color("WhiteKnowlage"))
                                .background(Color.clear)
                        }
                        .frame(width: 360, height: 71)

                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            VStack(alignment: .leading) {
                                SecureField("Пароль", text: $password)
                                    .padding()
                                    .foregroundColor(Color("WhiteKnowlage"))
                            }
                        }
                        
                    }
                    VStack (spacing: 16){
                        NavigationLink(destination: MainView(), isActive: $canNavigateToForum) {
                            EmptyView()
                        }

                        Button(action: {
                            if let index = mockUsers.firstIndex(where: { $0.username == username && $0.password == password }) {
                                canNavigateToForum = true
                                print("Добро пожаловать!")
                            } else {
                                print("Неверный логин или пароль")
                            }
                        }) {
                            Text("войти")
                                .font(.custom("NeutralFace.otf", size: 24))
                                .foregroundColor(.white)
                                .frame(width: 250, height: 77)
                                .background(Image("button"))
                                .cornerRadius(8)
                        }

                        HStack (spacing: 8){
                            Text("Еще нет аккаунта?")
                                .font(.custom("Inter-18pt-Regular.ttf", size: 12))
                                .foregroundColor(Color("WhiteKnowlage"))
                            NavigationLink(destination: LogInV()) {
                                Text("Регистрация тут")
                                    .font(.custom("Inter-18pt-Regular.ttf", size: 12))
                                    .foregroundColor(Color("Freshness"))
                                    .underline()
    //                                .sheet(isPresented: $showLogin) {
    //                                    LogInV()
    //                                }
                            }
                        }
                        
                    }
                    
                }
                .padding(16)
                .navigationTitle("")
                .navigationBarHidden(true)
    //            .sheet(isPresented: $showLogin) {
    //                LogInV()
    //            }
            }

            
        }
    }
}
#Preview {
    RegisterV()
}
