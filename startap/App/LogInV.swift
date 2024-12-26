//
//  LogInV.swift
//  startap
//
//  Created by Ksenia Svidunovich on 08.10.2024.
//

import SwiftUI

struct LogInV: View {
    @State private var username = ""
    @State private var password = ""
    @State private var name = ""
    @State private var surname = ""
    @State private var email = ""
//    @State private var showLogin = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("register")
                    .resizable()
                    .ignoresSafeArea()
                VStack (spacing: 40) {
                    Text("Бонжур, \nсалага!")
                        .font(.custom("OffBit-Bold", size: 64))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("WhiteKnowlage"))
                    
                    VStack (spacing: 10){
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            VStack(alignment: .leading) {
                                TextField("Имя", text: $name)
                                    .padding()
                                    .frame(width: 297, height: 45)
                                    .foregroundColor(.gray)
                                    .cornerRadius(56)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            VStack(alignment: .leading) {
                                TextField("Фамилия", text: $surname)
                                    .padding()
                                    .frame(width: 297, height: 45)
                                    .foregroundColor(.gray)
                                    .cornerRadius(56)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            VStack(alignment: .leading) {
                                TextField("E-mail", text: $email)
                                    .padding()
                                    .frame(width: 297, height: 45)
                                    .foregroundColor(.gray)
                                    .cornerRadius(56)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            VStack(alignment: .leading) {
                                TextField("Юзернейм", text: $username)
                                    .font(.custom("Inter-18pt-Regular", size: 16))
                                    .padding()
                                    .frame(width: 297, height: 45)
                                    .foregroundColor(.gray)
                                    .cornerRadius(56)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color("WhiteKnowlage"))
                                .frame(width: 360, height: 71)
                                .opacity(0.5)
                            VStack(alignment: .leading) {
                                SecureField("Пароль", text: $password)
                                    .font(.custom("Inter-18pt-Regular", size: 16))
                                    .padding()
                                    .frame(width: 297, height: 45)
                                    .foregroundColor(.gray)
                                    .cornerRadius(56)
                            }
                        }
                        
                    }
                    VStack (spacing: 16){
                        NavigationLink(destination: MainView()) {
                            Text("ДАЛЕЕ")
                                .font(.custom("OffBit-Bold", size: 24))
                                .foregroundColor(.white)
                                .frame(width: 250, height: 77)
                                .background(Image("button"))
                                .cornerRadius(8)
                        }
                        HStack (spacing: 8){
                            Text("Уже есть аккаунт?")
                                .font(.custom("Inter-18pt-Regular", size: 12))
                                .foregroundColor(Color("WhiteKnowlage"))
                            NavigationLink(destination: RegisterV()) {
                                Text("Войти тут")
                                    .font(.custom("Inter-18pt-SemiBold.ttf", size: 12))
                                    .foregroundColor(Color("Freshness"))
                                    .underline()
    //                                .sheet(isPresented: $showLogin) {
    //                                    RegisterV()
    //                                }
                                
                            }
                        }
                        
                    }
                    
                }
                .padding(16)
                .navigationTitle("")
                .navigationBarHidden(true)
    //            .sheet(isPresented: $showLogin) {
    //                RegisterV()
    //            }
            }

            
        }
        
    }
}
#Preview {
    LogInV()
}
