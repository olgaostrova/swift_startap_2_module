//
//  PostService.swift
//  startap
//
//  Created by Ksenia Svidunovich on 19.12.2024.
//

import Foundation


enum PostError: Error {
    case urlError

}
class PostService {
    func fetchPosts() async -> Result<[Post], Error> {
        guard let url = URL(string: "http://127.0.0.1:3000/api/v1/posts") else {
            print("hello")
            return Result.failure(PostError.urlError)
        }
        do {
            let (data, _ ) = try await URLSession.shared.data(from: url)
            print(data)
            let decoded = try JSONDecoder().decode([Post].self, from: data)
            print(decoded.first?.title as Any)
            return.success(decoded)
        } catch {
            return Result.failure(error)
        }
    }
}
