//
//  MainViewModel.swift
//  Shout Out
//
//  Created by Yachin Ilya on 09.07.2022.
//

import Amplify
import AWSDataStorePlugin
import Combine
import Foundation

final class MainViewModel: ObservableObject {
    private weak var user: UserModelProtocol?
    private var storage: StorageServiceProtocol
    init(user: UserModelProtocol, storage: StorageServiceProtocol) {
        self.user = user
        self.storage = storage
        loadAccount()
    }
    
    @Published var isSending: Bool = false
    @Published var isEditingNewPost: Bool = false
    @Published var newText: String = ""
    @Published var isLoadingPosts: Bool = true
    private var userAccount: UserAccount?
    private var nextPageToLoad: UInt = 0
    //    private var lastSeenList: List<Post>?
    var userName: String {
        user?.userName ?? ""
    }
    private var timedPostChecks: AnyCancellable?
    
    @Published var posts: [Post] = []
    var email: String {
        user?.email ?? ""
    }
    
    private var subscriptions = Set<AnyCancellable>()
    
    private func loadAccount() {
        guard let userId = user?.userId else { return }
        
        storage.startSync()
        
        storage.loadAccount(userId: userId)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: { [weak self] account in
                DispatchQueue.main.async {
                    self?.userAccount = account
                    self?.loadPosts()
                }
            }
            .store(in: &subscriptions)
        
        storage.startSync()
    }
    
    private func loadPosts() {
        self.storage.loadPosts(self.nextPageToLoad).sink { completion in
            if case let .failure(error) = completion {
                print(error)
            }
        } receiveValue: {
            self.populatePostsInUI($0)
        }
        .store(in: &self.subscriptions)
    }
    
    private func populatePostsInUI(_ postsList: [Post]) {
        DispatchQueue.main.async {
            // Deduplicate posts based on ID and update time.
            var postsDictionary = [String: Post]()
            postsList.forEach{
                postsDictionary[$0.id] = $0
            }
            self.posts.forEach{
                if
                    let seenUpdatedAt = postsDictionary[$0.id]?.updatedAt,
                    let newUpdatedAt = $0.updatedAt,
                    seenUpdatedAt < newUpdatedAt {
                    postsDictionary[$0.id] = $0
                }
                if postsDictionary[$0.id] == nil {
                    postsDictionary[$0.id] = $0
                }
            }
            
            self.posts = postsDictionary
                .map(\.value)
                .sorted {
                    if let firstCreated = $0.createdAt, let secondCreated = $1.createdAt {
                        return firstCreated > secondCreated
                    }
                    return $0.id > $1.id
                }
        }
    }
    
    func submitNewPost(_ post: String) {
        guard let userAccount = userAccount else {
            return
        }
        isSending = true
        isEditingNewPost = false
        newText = ""
        // It might be better to use NTP time instead of `.now()` utilising https://github.com/MobileNativeFoundation/Kronos or other library.
        // Setting the time right away rquired for sorting the not-yet-synced posts. The Time value would be rewritten by the cloud anyway.
        storage.createNewPost(post: Post(textContent: post.trimmingCharacters(in: .whitespacesAndNewlines), account: userAccount, createdAt: .now()))
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: { [weak self] post in
                self?.populatePostsInUI([post])
            }
            .store(in: &subscriptions)
    }
    
    func deletePost(_ post: Post) {
        Amplify.DataStore.delete(post){ [weak self] result in
            if case let .failure(error) = result {
                print(error)
                return
            }
            DispatchQueue.main.async {
                self?.posts.removeAll{ $0.id == post.id }
            }
        }
    }
    
    func loadMorePosts() {
        storage.loadPosts(nextPageToLoad + 1)
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: {
                self.nextPageToLoad += 1
                self.populatePostsInUI($0)
            }
            .store(in: &subscriptions)
    }
    
    func logoutUser() {
        storage.stopSync()
        user?.signOut()
    }
}
