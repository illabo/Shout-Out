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
    private var lastSeenList: List<Post>?
    var userName: String {
        user?.userName ?? ""
    }
    
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
                }
                guard let postsList = account.posts else { return }
                self?.populatePostsInUI(postsList)
            }
            .store(in: &subscriptions)
        
        storage.startSync()
    }
    
    private func createAccount() {
        guard let id = user?.userId, let name = user?.userName else { return }
        storage.createAccount(userAccount: UserAccount(id: id, name: name))
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: { [weak self] account in
                self?.userAccount = account
                guard let postsList = account.posts else { return }
                self?.populatePostsInUI(postsList)
            }
            .store(in: &subscriptions)
    }
    
    private func populatePostsInUI(_ postsList: List<Post>) {
        lastSeenList = postsList
        postsList
            .fetch { [weak self] result in
                DispatchQueue.main.async {
                    self?.isLoadingPosts = false
                }
                switch result {
                case let .failure(error):
                    print(error)
                case .success:
                    // Deduplicate posts based on ID and update time.
                    var postsDictionary = [String: Post]()
                    self?.posts.forEach{
                        postsDictionary[$0.id] = $0
                    }
                    postsList.elements.forEach{
                        if postsDictionary[$0.id]?.updatedAt == nil {
                            postsDictionary[$0.id] = $0
                        }
                        if
                            let seenUpdatedAt = postsDictionary[$0.id]?.updatedAt,
                            let newUpdatedAt = $0.updatedAt,
                            seenUpdatedAt < newUpdatedAt {
                            postsDictionary[$0.id] = $0
                        }
                        
                    }
                    DispatchQueue.main.async {
                        self?.posts = postsDictionary
                            .map(\.value)
                            .sorted {
                                if let firstCreated = $0.createdAt, let secondCreated = $1.createdAt {
                                    return firstCreated > secondCreated
                                }
                                return $0.id > $1.id
                            }
                    }
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
                let postsList = List<Post>(elements: [post])
                self?.populatePostsInUI(postsList)
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
        guard
            let postsList = lastSeenList,
            postsList.hasNextPage()
        else {
            return
        }
        isLoadingPosts = true
        postsList.getNextPage{ [weak self] result in
            DispatchQueue.main.async {
                self?.isLoadingPosts = false
            }
            switch result {
            case .success(let posts):
                self?.populatePostsInUI(posts)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func logoutUser() {
        storage.stopSync()
        user?.signOut()
    }
}
