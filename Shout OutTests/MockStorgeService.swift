//
//  MockStorgeService.swift
//  Shout OutTests
//
//  Created by Yachin Ilya on 17.07.2022.
//

import Combine
import Foundation
@testable import Shout_Out

final class MockStorgeService: StorageServiceProtocol {
    static var posts: [Post] = (0 ..< 50).map {
        Post(id: "\($0)", textContent: "\($0) is the best number", account: userAccount, createdAt: .now(), updatedAt: .now())
    }

    static var userAccount = UserAccount(id: MockUserModel.constantUserId, name: MockUserModel.constantUserName, posts: nil, following: nil)

    func loadAccount(userId _: String) -> AnyPublisher<UserAccount, Error> {
        Just(Self.userAccount)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func loadPosts(_ page: UInt) -> AnyPublisher<[Post], Error> {
        let startIdx = Constants.resultsPageSize * page
        let endIdx = startIdx + Constants.resultsPageSize
        let postsToPublish = (startIdx ..< endIdx).map { Self.posts[Int($0)] }
        return Just(postsToPublish)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func createNewPost(post: Post) -> AnyPublisher<Post, Error> {
        var createdPost = post
        createdPost.createdAt = .now()
        Self.posts.append(createdPost)

        return Just(createdPost)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func deletePost(post: Post) -> AnyPublisher<Void, Error> {
        Self.posts.removeAll(where: { $0.id == post.id })
        return Just(())
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }

    func startSync() {}

    func stopSync() {}
}
