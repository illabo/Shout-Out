//
//  Shout_OutTests.swift
//  Shout OutTests
//
//  Created by Yachin Ilya on 17.07.2022.
//

import Combine
@testable import Shout_Out
import XCTest

class Shout_OutTests: XCTestCase {
    // No reason to test the view models other than Main VM.
    // All other VMs are pretty small and primitive.
    var subscriptions = Set<AnyCancellable>()
    var mainVM: MainViewModel?

    override func setUp() {
        mainVM = MainViewModel(user: MockUserModel(), storage: MockStorgeService())
    }

    func testLoadsPostsPaginated() {
        mainVM?.loadMorePosts()
        mainVM?.$posts.last().sink {
            XCTAssert($0.count == Int(Constants.resultsPageSize))
        }
        .store(in: &subscriptions)
    }

    func testCreateNewPost() {
        let textContext = "Latest Post"
        mainVM?.submitNewPost(textContext)
        mainVM?.$posts.last().sink {
            XCTAssert($0.last?.textContent == textContext)
        }
        .store(in: &subscriptions)
    }

    func testPostDeletion() {
        mainVM?.loadMorePosts()
        // Get from Mock Storage not to sink from VM.
        // VM gets the same set of posts as available in storage.
        guard let post = MockStorgeService.posts.first else {
            XCTFail()
            return
        }
        mainVM?.deletePost(post)
        mainVM?.$posts.last().sink {
            // Assert after delete there are one post less than was initially loaded.
            // After check there are no post with the id of deleted post.
            XCTAssert($0.count == Constants.resultsPageSize - 1)
            XCTAssert($0.contains(where: { $0.id == post.id }) == false)
        }
        .store(in: &subscriptions)
    }
}
