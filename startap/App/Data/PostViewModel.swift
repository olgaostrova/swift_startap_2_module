//
//  PostViewModel.swift
//  startap
//
//  Created by Ksenia Svidunovich on 19.12.2024.
//

import Foundation
import Combine

class PostViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    private let service = PostService()
    
    func fetchPosts() {
        Task {
            let result = await service.fetchPosts()
            
            DispatchQueue.main.async {
                switch result {
                case .success(let post):
                    self.posts.append(contentsOf: post)

                case .failure(_):
                    print("Error")
                }
            }
        }
    }
}

