//
//  PreviewView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 28.10.2024.
//

import SwiftUI

struct PreviewView: View {
    var body: some View {
        NavigationStack {
                ZStack {
                    Color("NeavyBlue").ignoresSafeArea()
                    ScrollView {
                        VStack(spacing: 16){
                            Image("BigLogo")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .padding(.top, 70)
                                .padding(.bottom, -8)
                            Image("Things")
                                .resizable()
                                .frame(width: 600, height: 280)
                           
                            Text("Сервис для помощи \nразвивающимся \nстартапам")
                                .font(.custom("stolzl-regular", size: 32))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("BlueDiva"))
                            VStack(spacing: -40) {
                                //первый блок
                                ZStack {
                                    Image("BackFirst")
                                        .resizable()
                                        .frame(width: 396, height: 336)
                                    VStack(spacing: 60) {
                                        VStack (alignment: .leading, spacing: 20) {
                                            Text("Фидбек")
                                                .font(.custom("stolzl-regular", size: 34))
                                                .foregroundColor(Color("WhiteSuper"))
                                            Text("Получайте важный отклик \nкомьюнити по поводу \nновостей вашего стартапа")
                                                .font(.custom("Inter-18pt-Regular.ttf", size: 20))
                                                .foregroundColor(Color("WhiteSuper"))
                                  
                                        }
                                        //кнопки
                                        HStack(spacing: 50) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 56)
                                                    .fill(Color("WhiteSuper"))
                                                    .frame(width: 190, height: 34)
                                                Text("Свидунович Ксения")
                                                    .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                            }
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 56)
                                                    .fill(Color("WhiteSuper"))
                                                    .frame(width: 40, height: 34)
                                                Image("Arrow")
                                            }
                                        }
                                    }

                                }
                                //второй блок
                                ZStack {
                                    Image("BackFirst")
                                        .resizable()
                                        .frame(width: 396, height: 336)
                                    VStack(spacing: 44) {
                                        VStack (alignment: .leading, spacing: 20) {
                                            Text("Комьюнити")
                                                .font(.custom("stolzl-regular", size: 34))
                                                .foregroundColor(Color("WhiteSuper"))
                                            Text("Переписывайтесь с людьми \nв мессенджере и вместе \nобсуждайте ключевые \nмоменты ваших проектов")
                                                .font(.custom("Inter-18pt-Regular.ttf", size: 20))
                                                .foregroundColor(Color("WhiteSuper"))
                                        }
                                        //кнопки
                                        HStack( spacing: 70) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 56)
                                                    .fill(Color("WhiteSuper"))
                                                    .frame(width: 170, height: 34)
                                                Text("Островерх Ольга")
                                                    .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                            }
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 56)
                                                    .fill(Color("WhiteSuper"))
                                                    .frame(width: 40, height: 34)
                                                Image("Arrow")
                                            }
                                        }
                                    }

                                }
                                //третий блок
                                ZStack {
                                    Image("BackFirst")
                                        .resizable()
                                        .frame(width: 396, height: 336)
                                    VStack(spacing: 44) {
                                        VStack (alignment: .leading, spacing: 20) {
                                            Text("Помощь")
                                                .font(.custom("stolzl-regular", size: 34))
                                                .foregroundColor(Color("WhiteSuper"))
                                            Text("Находите ответы на важные \nвопросы в процессе \nразвития вашего продукта")
                                                .font(.custom("Inter-18pt-Regular.ttf", size: 20))
                                                .foregroundColor(Color("WhiteSuper"))
                                        }
                                        //кнопки
                                        HStack( spacing: 70) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 56)
                                                    .fill(Color("WhiteSuper"))
                                                    .frame(width: 170, height: 34)
                                                Text("Суровцева Злата")
                                                    .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                            }
                                            ZStack {
                                                RoundedRectangle(cornerRadius: 56)
                                                    .fill(Color("WhiteSuper"))
                                                    .frame(width: 40, height: 34)
                                                Image("Arrow")
                                            }
                                        }
                                    }

                                }
                            }
                            VStack(spacing: 20) {
                                //блок с фразой
                                VStack {
                                    HStack {
                                        ZStack{
                                            Text("получай")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("фидбек")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("пости")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                    }
                                    HStack {
                                        ZStack{
                                            Text("новости")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("про")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("свой")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                    }
                                    HStack {
                                        ZStack{
                                            Text("продукт")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Image("Star")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 13)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("помогай")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                    }
                                    HStack {
                                        ZStack{
                                            Text("другим")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("учись")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("вдохновляйся")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                    }
                                    HStack {
                                        ZStack{
                                            Text("и")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlackSuper"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlackSuper"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("вдохновляй")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                        ZStack{
                                            Text("других")
                                                .font(.custom("stolzl-book", size: 18))
                                                .foregroundColor(Color("BlueDiva"))
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 18)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 36)
                                                        .stroke(Color("BlueDiva"), lineWidth: 2))
                                        }
                                    }
                                }
                                .padding(.bottom, 30)
                                
                                //блок описание
                              
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color("BlackSuper"))
                                        .frame(width: 360, height: 185)
                                    VStack(spacing: 10) {
                                        Text("Хотите узнавать \nбольше о StarTap?")
                                            .font(.custom("stolzl-regular", size: 30))
                                            .foregroundColor(Color("WhiteSuper"))
                                            .multilineTextAlignment(.center)
                                        Text("Присоединяйся к комьюнити уже сейчас!")
                                            .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                            .foregroundColor(Color("WhiteSuper"))
                                            .multilineTextAlignment(.center)
                                    }
                                }
                                //кнопка
                                HStack (spacing: 16){
                                    NavigationLink(destination: LogInV()) {
                                        Text("Перейти в сервис")
                                            .font(.custom("Inter_18pt-SemiBold", size: 16))
                                            .foregroundColor(.white)
                                            .frame(width: 300, height: 40)
                                            .background(Color("BlueDiva"))
                                            .cornerRadius(20)
                                    }
                                    
                                }
                            }
                            
                    }
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    PreviewView()
}
