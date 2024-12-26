//
//  PostView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 19.12.2024.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
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
                                Text(String(post.created_at.prefix(10)))
                                    .font(.custom("Inter_18pt-Regular", size: 16))
                                    .foregroundColor(Color("Revelation"))
                            }
                            Text("Маша Бубнова")
                                .font(.custom("Inter_18pt-Regular", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color("Grey"))
                        }
                        
                    }
                    .padding(.leading, 14)
                }
                .padding(.trailing, 110)
                
                //текст поста
                VStack(alignment: .leading, spacing: 16) {
                    Text(post.title)
                        .font(.custom("Inter_18pt-Regular", size: 24))
                        .foregroundColor(Color("BlackSuper"))
                        .padding(.leading, 10)
                        .textCase(.uppercase)
                    
                    //теги
                    VStack(alignment: .leading, spacing: 8) {
                        VStack(alignment: .leading, spacing: 4){
                            HStack(spacing: 4) {
                                ForEach(post.tag_list.prefix(2), id: \.self) { tag in
                                    Text(tag)
                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                        .foregroundColor(Color("BlackSuper"))
                                        .padding(.horizontal, 18)
                                        .padding(.vertical, 8)
                                        .fixedSize()
                                        .background(Color("tag1"))
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.leading, 2)
                            
                            HStack(spacing: 4) {
                                ForEach(post.tag_list.dropFirst(2).prefix(2), id: \.self) { tag in
                                    Text(tag)
                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                        .foregroundColor(Color("BlackSuper"))
                                        .padding(.horizontal, 18)
                                        .padding(.vertical, 8)
                                        .fixedSize()
                                        .background(Color("tag1"))
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.leading, 2)
                            
                            //категории
                            HStack(spacing: 4) {
                                ForEach(post.category_list.prefix(2), id: \.self) { tag in
                                    Text(tag)
                                        .font(.custom("Inter_18pt-Regular", size: 12))
                                        .foregroundColor(Color("BlackSuper"))
                                        .padding(.horizontal, 18)
                                        .padding(.vertical, 8)
                                        .fixedSize()
                                        .background(Color("WhiteKnowlage"))
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.leading, 2)
                        }


                        //текст поста
                        Text(post.text)
                            .font(.custom("Inter_18pt-Regular", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color("BlackSuper"))
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
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
                                Text("\(post.likeDislikeBalance)")
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
                .padding(.leading, 14)
                .padding(.vertical, 12)
                .onAppear {
                    print("Теги: \(post.tag_list)")
                }
            }
        }
        .frame(width: 370)
        .cornerRadius(8)
        .padding(.top, 10)
    }
    
    class PostViewModell: ObservableObject {
        @Published var posts: [Post] = []
        
        func fetchPosts() {
        }
        
        func deletePosts(at offsets: IndexSet) {
            posts.remove(atOffsets: offsets)
        }
    }
}

//#Preview {
//    PostView()
//}

