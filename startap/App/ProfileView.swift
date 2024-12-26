//
//  ProfileView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 01.12.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var user: UserProfile = UserProfile(
        firstName: "Ольга",
        lastName: "Стартапова",
        email: "UI/UX designer, graphic designer",
        avatar: UIImage(named: "avatar_placeholder"),
        backgroundimg: UIImage(named: "avatar_placeholder")
    )
    @State private var isEditing: Bool = false
    @State private var showSettings: Bool = false
    @State private var selectedImage: UIImage?
    @State private var postText = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color("GreyLight").ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        // профиль шапка
                            HStack(spacing: 12) {
                                if let avatar = user.avatar {
                                    Image(uiImage: avatar)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(8)
                                } else {
                                    Image("profileImg")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(8)
                                }
                                VStack(alignment: .leading, spacing: 16) {
                                    HStack(spacing: 30) {
                                        VStack(alignment: .leading, spacing: 4) {
                                            Text("\(user.firstName) \(user.lastName)")
                                                .font(.custom("Inter_18pt-Regular", size: 24))
                                                .foregroundColor(Color("BlackSuper"))
                                            
                                            Text(user.email)
                                                .font(.custom("Inter_18pt-Regular", size: 12))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("BlackSuper"))
                                        }
                                        NavigationLink(destination: EditProfileView(user: $user, selectedImage: $selectedImage)) {
                                            Image("Settings")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                                .padding(.bottom, 16)
                                        }
                                    }

                                    HStack(spacing: 90){
                                            HStack(spacing: 10) {
                                                Image("devotionpoint")
                                                    .resizable()
                                                    .frame(width: 20, height: 18)
                                                Text("22 364")
                                                    .font(.custom("Inter_18pt-Black", size: 16))
                                                    .foregroundColor(Color("Dusk"))
                                            }
                                    }
                                }
                            }
                        }
                    .padding(.top, 20)
                    
                       //подписки
                    HStack(spacing: 40) {
                        Text("Подписки: 23")
                            .font(.custom("Inter_18pt-Regular", size: 12))
                            .foregroundColor(Color("Revelation"))
                        Image("starss")
                            .resizable()
                            .frame(width: 19, height: 19)
                        Text("Подписчики: 482")
                            .font(.custom("Inter_18pt-Regular", size: 12))
                            .foregroundColor(Color("Revelation"))
                    }
                    .padding(.vertical, 20)
                    
                    ZStack{
                        Color("WhiteSuper")
                        VStack{
                            Image("backk")
                                .resizable()
                                .frame(width: 350, height: 218)
                                .cornerRadius(8)
                                .padding(.vertical, 10)
                                HStack {
                                    Image("startapLogo")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                    HStack{
                                        VStack(alignment: .leading, spacing: 6) {
                                            Text("StarTap ·")
                                                .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                                .foregroundColor(Color("BlackSuper"))
                                            Text("Маша Бубнова")
                                                .font(.custom("Inter_18pt-Regular", size: 16))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("Grey"))
                                        }
                                        .padding(.leading, 8)
                                        HStack{
                                            Image("plus")
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 20)
                                        }
                                        .background(
                                            Image("subscription")
                                                .resizable()
                                                .scaledToFill()
                                        )
                                        .frame(width: 56, height: 43)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                        .padding(.leading, 90)
                                    }
                                    
                                }
                            .padding(.leading, -6)
                            .padding(.bottom, 10)
                        }
                    }
                    .frame(width: 370)
                    .cornerRadius(8)
                    // добавить пост
                    ZStack {
                        Image("BackSearch")
                            .resizable()
                            .frame(width: 380, height: 59)
                        HStack {
                            TextField("Что у вас нового?", text: $postText)
                                .font(.custom("Inter_18pt-Regular", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("BlackSuper"))
                                .padding(.leading, 40)
                            Image("uploadPhoto")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .padding(.trailing, 40)
                        }
                        .padding(.vertical, 20)
                    }
                    //кол-во постов
                    Text("Постов:43")
                        .font(.custom("Inter_18pt-Regular", size: 12))
                        .foregroundColor(Color("Revelation"))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 300)
                        .padding(.top, 10)
                    VStack(spacing: 20) {
                        // пост1
                        ZStack {
                            Color("WhiteSuper")
                                VStack(spacing: 16) {
                                    //шапка название
                                    HStack(spacing: 50){
                                        HStack(spacing: 16) {
                                            Image("startapLogo")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                            VStack(alignment: .leading, spacing: 6) {
                                                HStack {
                                                    Text("StarTap ·")
                                                        .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                                        .foregroundColor(Color("BlackSuper"))
                                                    Text("3 ч назад")
                                                        .font(.custom("Inter_18pt-Regular", size: 16))
                                                        .foregroundColor(Color("Revelation"))
                                                }
                                                Text("Маша Бубнова")
                                                    .font(.custom("Inter_18pt-Regular", size: 16))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("Grey"))
                                            }
                                            
                                      }
                                    }
                                    .padding(.trailing, 130)
                                    
                                    //текст поста
                                    VStack(alignment: .leading, spacing: 16) {
                                        Text("Мы запустили абсолютно новый сервис!!!!!!!!")
                                            .font(.custom("Inter_18pt-Regular", size: 24))
                                            .foregroundColor(Color("BlackSuper"))
                                            .padding(.leading, 14)
                                            .textCase(.uppercase)
                                        
                                        //теги
                                        VStack(alignment: .leading, spacing: 8) {
                                            
                                            HStack(spacing: 4){
                                                //tag1-2
                                                HStack {
                                                    Text("Предпринимательство")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag1"))
                                                .cornerRadius(8)
                                                .padding(.leading, 14)
                                                
                                                HStack {
                                                    Text("Дизайн")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag2"))
                                                .cornerRadius(8)
                                            }
                                            
                                            HStack(spacing: 4){
                                                //tag3-4
                                                HStack {
                                                    Text("Бизнес-аналитика")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag3"))
                                                .cornerRadius(8)
                                                .padding(.leading, 14)
                                                
                                                HStack {
                                                    Text("Искусственный интеллект")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag4"))
                                                .cornerRadius(8)
                                            }
                                        }
                                        
                                        Text("Никому не хочется вникать в скучные отчётности, когда бизнес уже налажен и дело идёт. Тем более, когда в своём банке бухгалтерия не отличается простотой. Специально для таких клиентов банк для предпринимателей и предприятий «Точка» вывел на рынок свой топовый внутренний продукт — онлайн.")
                                            .font(.custom("Inter_18pt-Regular", size: 16))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("BlackSuper"))
                                            .padding(.horizontal, 16)
                                    }
                                    .padding(.vertical, 8)
                                        Image("postimg")
                                        .resizable()
                                        .frame(width: 350, height: 218)
                                        .cornerRadius(8)
                                    // информация и call to action поста
                                    HStack(spacing: 110){
                                        HStack(spacing: 10){
                                            //taps
                                            HStack{
                                                Image("tapIcon")
                                                    .padding(.leading, 14)
                                                Text("24")
                                                    .font(.custom("Inter_18pt-Medium", size: 16))
                                                    .foregroundColor(Color("WhiteKnowlage"))
                                                    .padding(.trailing, 14)
                                                    .padding(.vertical, 10)
                                                    .lineLimit(1)
                                                    .fixedSize()
                                                    .fixedSize()
                                                
                                            }
                                            .background(Image("tap"))
                                            .cornerRadius(8)
                                            
                                            //votes
                                            HStack{
                                                Image("up")
                                                    .resizable()
                                                    .frame(width: 24, height: 24)
                                                    .padding(.leading, 14)
                                                    .padding(.vertical, 10)
                                                Text("+5")
                                                    .font(.custom("Inter_18pt-Medium", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                                    .padding(.vertical, 10)
                                                    .lineLimit(1)
                                                    .fixedSize()
                                                Image("down")
                                                    .resizable()
                                                    .frame(width: 24, height: 24)
                                                    .padding(.trailing, 14)
                                                    .padding(.vertical, 10)
                                                
                                            }
                                            .background(Image("empty"))
                                            .cornerRadius(8)
                                            .frame(height: 40)
                                            //comments
                                            HStack{
                                                Image("MassageIcon")
                                                    .padding(.leading, 14)
                                                Text("24")
                                                    .font(.custom("Inter_18pt-Medium", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                                    .padding(.trailing, 14)
                                                    .padding(.vertical, 10)
                                                    .lineLimit(1)
                                                    .fixedSize()
                                                
                                            }
                                            .background(Image("empty"))
                                            .cornerRadius(8)
                                            
                                            //share
                                            HStack{
                                                Image("ShareIcon")
                                                    .padding(.horizontal, 14)
                                                    .padding(.vertical, 10)
                                            }
                                            .background(Image("empty"))
                                            .cornerRadius(8)


                                        }
                                    }
                                }
                                .padding(.vertical, 12)
                            }
                            .frame(width: 370)
                            .cornerRadius(8)
                        // пост2
                        ZStack {
                            Color("WhiteSuper")
                                VStack(spacing: 16) {
                                    //шапка название
                                    HStack(spacing: 50){
                                        HStack(spacing: 16) {
                                            Image("startapLogo")
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                            VStack(alignment: .leading, spacing: 6) {
                                                HStack {
                                                    Text("StarTap ·")
                                                        .font(.custom("Inter_18pt-Medium.ttf", size: 16))
                                                        .foregroundColor(Color("BlackSuper"))
                                                    Text("3 ч назад")
                                                        .font(.custom("Inter_18pt-Regular", size: 16))
                                                        .foregroundColor(Color("Revelation"))
                                                }
                                                Text("Маша Бубнова")
                                                    .font(.custom("Inter_18pt-Regular", size: 16))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("Grey"))
                                            }
                                            
                                      }
                                    }
                                    .padding(.trailing, 130)
                                    
                                    //текст поста
                                    VStack(alignment: .leading, spacing: 16) {
                                        Text("Мы запустили абсолютно новый сервис!!!!!!!!")
                                            .font(.custom("Inter_18pt-Regular", size: 24))
                                            .foregroundColor(Color("BlackSuper"))
                                            .padding(.leading, 14)
                                            .textCase(.uppercase)
                                        
                                        //теги
                                        VStack(alignment: .leading, spacing: 8) {
                                            
                                            HStack(spacing: 4){
                                                //tag1-2
                                                HStack {
                                                    Text("Предпринимательство")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag1"))
                                                .cornerRadius(8)
                                                .padding(.leading, 14)
                                                
                                                HStack {
                                                    Text("Дизайн")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag2"))
                                                .cornerRadius(8)
                                            }
                                            
                                            HStack(spacing: 4){
                                                //tag3-4
                                                HStack {
                                                    Text("Бизнес-аналитика")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag3"))
                                                .cornerRadius(8)
                                                .padding(.leading, 14)
                                                
                                                HStack {
                                                    Text("Искусственный интеллект")
                                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                                        .foregroundColor(Color("BlackSuper"))
                                                        .padding(.horizontal, 18)
                                                        .padding(.vertical, 8)
                                                        .fixedSize()
                                                }
                                                .background(Color("tag4"))
                                                .cornerRadius(8)
                                            }
                                        }
                                        
                                        Text("Никому не хочется вникать в скучные отчётности, когда бизнес уже налажен и дело идёт. Тем более, когда в своём банке бухгалтерия не отличается простотой. Специально для таких клиентов банк для предпринимателей и предприятий «Точка» вывел на рынок свой топовый внутренний продукт — онлайн.")
                                            .font(.custom("Inter_18pt-Regular", size: 16))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("BlackSuper"))
                                            .padding(.horizontal, 16)
                                    }
                                    .padding(.vertical, 8)
                                        Image("postimg")
                                        .resizable()
                                        .frame(width: 350, height: 218)
                                        .cornerRadius(8)
                                    // информация и call to action поста
                                    HStack(spacing: 110){
                                        HStack(spacing: 10){
                                            //taps
                                            HStack{
                                                Image("tapIcon")
                                                    .padding(.leading, 14)
                                                Text("24")
                                                    .font(.custom("Inter_18pt-Medium", size: 16))
                                                    .foregroundColor(Color("WhiteKnowlage"))
                                                    .padding(.trailing, 14)
                                                    .padding(.vertical, 10)
                                                    .lineLimit(1)
                                                    .fixedSize()
                                                    .fixedSize()
                                                
                                            }
                                            .background(Image("tap"))
                                            .cornerRadius(8)
                                            
                                            //votes
                                            HStack{
                                                Image("up")
                                                    .resizable()
                                                    .frame(width: 24, height: 24)
                                                    .padding(.leading, 14)
                                                    .padding(.vertical, 10)
                                                Text("+5")
                                                    .font(.custom("Inter_18pt-Medium", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                                    .padding(.vertical, 10)
                                                    .lineLimit(1)
                                                    .fixedSize()
                                                Image("down")
                                                    .resizable()
                                                    .frame(width: 24, height: 24)
                                                    .padding(.trailing, 14)
                                                    .padding(.vertical, 10)
                                                
                                            }
                                            .background(Image("empty"))
                                            .cornerRadius(8)
                                            .frame(height: 40)
                                            //comments
                                            HStack{
                                                Image("MassageIcon")
                                                    .padding(.leading, 14)
                                                Text("24")
                                                    .font(.custom("Inter_18pt-Medium", size: 16))
                                                    .foregroundColor(Color("BlackSuper"))
                                                    .padding(.trailing, 14)
                                                    .padding(.vertical, 10)
                                                    .lineLimit(1)
                                                    .fixedSize()
                                                
                                            }
                                            .background(Image("empty"))
                                            .cornerRadius(8)
                                            
                                            //share
                                            HStack{
                                                Image("ShareIcon")
                                                    .padding(.horizontal, 14)
                                                    .padding(.vertical, 10)
                                            }
                                            .background(Image("empty"))
                                            .cornerRadius(8)


                                        }
                                    }
                                }
                                .padding(.vertical, 12)
                            }
                            .frame(width: 370)
                            .cornerRadius(8)
                        }
                        
                        

                    }
                }
                
                
                
            }
            
            Spacer()
        }
//        .sheet(isPresented: $showSettings) {
//            SettingsView()
//        }
    }

//struct SettingsView: View {
//    var body: some View {
//        Text("Settings")
//            .font(.largeTitle)
//    }
//}

#Preview {
    ProfileView()
}
