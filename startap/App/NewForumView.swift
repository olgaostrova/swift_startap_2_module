//
//  NewForumView.swift
//  startap
//
//  Created by Ksenia Svidunovich on 21.12.2024.
//

import SwiftUI

struct NewForumView: View {
    @StateObject private var postViewModel = PostViewModel()
    @State private var posts: [Post] = []
    @State private var showModal = false
    @State private var selectedTag: String = "Все теги"
    @State private var selectedCategory: String = "Все категории"
    @State private var searchText: String = ""
    
    var filteredPosts: [Post] {
        let filteredByTag = selectedTag == "Все теги"
            ? posts
            : posts.filter { $0.tag_list.contains(selectedTag) }
        
        let filteredByCategory = selectedCategory == "Все категории"
            ? filteredByTag
            : filteredByTag.filter { $0.category_list.contains(selectedCategory) }
        
        if searchText.isEmpty {
            return filteredByCategory
        } else {
            return filteredByCategory.filter {
                $0.title.lowercased().contains(searchText.lowercased()) || $0.text.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Filter by Tag", selection: $selectedTag) {
                    Text("Все теги").tag("Все теги")
                    ForEach(Array(Set(posts.flatMap { $0.tag_list })), id: \.self) { tag in
                        Text(tag).tag(tag)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.vertical, 2)
                .accentColor(Color("BlackSuper"))
                
                Picker("Filter by Category", selection: $selectedCategory) {
                    Text("Все категории").tag("Все категории")
                    ForEach(Array(Set(posts.flatMap { $0.category_list })), id: \.self) { category in
                        Text(category).tag(category)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .padding(.vertical, 2)
                .accentColor(Color("BlackSuper"))
                
                TextField("Найти", text: $searchText)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                List {
                    ForEach(filteredPosts) { post in
                        NavigationLink(destination: PostView(post: post)) {
                            PostView(post: post)
                        }
                    }
                }
                .listStyle(.plain)
                .navigationBarItems(trailing: Button(action: {
                    showModal.toggle()
                }) {
                    Image(systemName: "plus")
                        .accentColor(Color("BlackSuper"))
                })
                .sheet(isPresented: $showModal) {
                    AddPostView(posts: $posts)
                }
                .onAppear {
                    postViewModel.fetchPosts()
                }
                .onChange(of: postViewModel.posts) { newPosts in
                    posts = newPosts
                }
            }
        }
        .navigationBarHidden(true)
    }
    
    struct AddPostView: View {
        @Binding var posts: [Post]
        @State private var title: String = ""
        @State private var description: String = ""
        @State private var tags: String = ""
        
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Card Information")) {
                        TextField("Title", text: $title)
                        TextField("Description", text: $description)
                        TextField("Tags (comma separated)", text: $tags)
                    }
                    Button("Add Card") {
                        let tagList = tags.split(separator: ",").map {
                            String($0).trimmingCharacters(in: .whitespaces)
                        }
                        let newPost = Post(
                            id: posts.count + 1,
                            title: title,
                            text: description,
                            likes: [],
                            dislikes: 0,
                            startup_id: 0,
                            tag_list: tagList,
                            category_list: [],
                            cover: ["url": ""],
                            created_at: ""
                        )
                        posts.append(newPost)

                    }
                }
                .navigationBarTitle("Add Card")
                .navigationBarItems(trailing: Button("Done") {
                    // Закрытие модального окна
                })
            }
        }
    }
}
#Preview {
    NewForumView()
}
