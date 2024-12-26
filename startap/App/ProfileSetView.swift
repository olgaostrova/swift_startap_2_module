//
//  ProfileSetView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 27.10.2024.
//

import SwiftUI
import PhotosUI

struct ProfileSetView: View {
  @State private var avatarImage: UIImage?
  @State private var photosPickerItem: PhotosPickerItem?

  var body: some View {
    NavigationStack {
      ZStack {
        Color("GreyLight").ignoresSafeArea()
          ScrollView {
              VStack(alignment: .leading, spacing: 16) {
                  PhotosPicker(selection: $photosPickerItem, matching: .images) {
                      HStack(spacing: 20) {
                          Image(uiImage: avatarImage ?? UIImage(resource: .profileImg))
                              .resizable()
                              .frame(width: 80, height: 80)
                              .cornerRadius(20)
                          Image("profileWall")
                              .resizable()
                              .frame(width: 240, height: 80)
                      }
                  }
                  .padding(.leading, 44)
                  
                  .padding(.top, 16)
                  .onChange(of: photosPickerItem) { _, _ in
                      Task {
                          if let photosPickerItem,
                             let data = try? await photosPickerItem.loadTransferable(type: Data.self) {
                              if let image = UIImage(data: data) {
                                  avatarImage = image
                              }
                          }
                          photosPickerItem = nil
                      }
                  }
                  VStack(alignment: .leading, spacing: 16) {
                      Text("Личная информация ")
                          .font(.custom("stolzl-regular", size: 20))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color("BlackSuper"))
                      //строка имя
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 210) {
                              Text("Имя")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("Зязь")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      //строка фамилии
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 125) {
                              Text("Фамилия")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("Суровцева")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      //строка специальности
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 50) {
                              Text("Специальность")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("UI-UX дизайнер")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      //строка даты
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 80) {
                              Text("Дата рождения")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("20.02.2000")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      // строка эмейла
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 80) {
                              Text("Email")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("startsp_suber@mail.ru")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                  }
                  .padding(.top, 40)
                  .padding(.leading, 44)
                  VStack(alignment: .leading, spacing: 16) {
                      Text("Пароль")
                          .font(.custom("stolzl-regular", size: 20))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color("BlackSuper"))
                      
                      //строка пароля
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 120) {
                              Text("Старый пароль")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("********")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      //строка паароля нового
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 60) {
                              Text("Новый пароль")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("Ввелите пароль")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                     
                  }
                  .padding(.leading, 44)
                  .padding(.top, 40)
                  VStack(alignment: .leading, spacing: 16) {
                      Text("Дополнительно")
                          .font(.custom("stolzl-regular", size: 20))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color("BlackSuper"))
                          .padding(.leading, 44)
                      
                      //строка VK
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 120) {
                              Text("VK")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("https://vk.com/startap")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      .padding(.leading, 44)
                      //строка Behance
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 70) {
                              Text("Behance")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("https://www.behance...")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      .padding(.leading, 44)
                      //строка dprofile
                      ZStack {
                          RoundedRectangle(cornerRadius: 56)
                              .fill(Color("WhiteSuper"))
                              .frame(width: 320, height: 45)
                          HStack(spacing: 120) {
                              Text("Dprofile")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("BlackSuper"))
                              Text("https://dprofile...")
                                  .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(Color("Grey"))
                          }
                      }
                      .padding(.leading, 44)
                  }
                  .padding(.top, 40)
                  VStack(alignment: .leading, spacing: 16) {
                      Text("Ваши стартапы")
                          .font(.custom("stolzl-regular", size: 20))
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color("BlackSuper"))
                          .padding(.horizontal, 44)
                      
                      
                      //стартап
                      HStack {
                          ZStack {
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color("WhiteSuper"))
                                  .frame(width: 88, height: 111)
                              VStack(spacing: 8) {
                                  Image("StartapIcon")
                                  Text("StarTap")
                                      .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color("BlackSuper"))
                                  
                              }
                          }
                          ZStack {
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color("WhiteSuper"))
                                  .frame(width: 88, height: 111)
                              VStack(spacing: 8) {
                                  Image("StartapIcon")
                                  Text("StarTap")
                                      .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color("BlackSuper"))
                              }
                          }
                          ZStack {
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color("WhiteSuper"))
                                  .frame(width: 88, height: 111)
                              VStack(spacing: 8) {
                                  Image("StartapIcon")
                                  Text("StarTap")
                                      .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color("BlackSuper"))
                              }
                          }
                          ZStack {
                              RoundedRectangle(cornerRadius: 15)
                                  .fill(Color("WhiteSuper"))
                                  .frame(width: 88, height: 111)
                              VStack(spacing: 8) {
                                  Image("StartapIcon")
                                  Text("StarTap")
                                      .font(.custom("Inter-18pt-Regular.ttf", size: 16))
                                      .multilineTextAlignment(.center)
                                      .foregroundColor(Color("BlackSuper"))
                              }
                          }
                      }
                      .padding(.leading, 44)
                  }
                  .padding(.top, 40)
                  
              }
          }
        }
          
      }
        
    }
  }

#Preview {
    ProfileSetView()
}
