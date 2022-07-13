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
    init(user: UserModelProtocol) {
        self.user = user
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
        Amplify.Hub.publisher(for: .dataStore).sink { [weak self] event in
            if "DataStore.modelSynced" == event.eventName {
                self?.loadAccount(userId: userId)
            }
        }
        .store(in: &subscriptions)
        
        Amplify.DataStore.start { _ in }
    }
    
    private func loadAccount(userId: String) {
        Amplify.DataStore.query(UserAccount.self, byId: userId)
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: { [weak self] account in
                guard let account = account else {
                    return
                }
                DispatchQueue.main.async {
                    self?.userAccount = account
                }
                guard let postsList = account.posts else { return }
                self?.publishPosts(postsList)
            }
            .store(in: &subscriptions)
    }
    
    private func createAccount() {
        guard let id = user?.userId, let name = user?.userName else { return }
        Amplify.DataStore.save(UserAccount(id: id, name: name))
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: { [weak self] account in
                self?.userAccount = account
                guard let postsList = account.posts else { return }
                self?.publishPosts(postsList)
            }
            .store(in: &subscriptions)
    }
    
    private func publishPosts(_ postsList: List<Post>) {
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
        Amplify.DataStore.save(Post(textContent: post.trimmingCharacters(in: .whitespacesAndNewlines), account: userAccount, createdAt: .now()))
            .sink { completion in
                if case let .failure(error) = completion {
                    print(error)
                }
            } receiveValue: { [weak self] post in
                let postsList = List<Post>(elements: [post])
                self?.publishPosts(postsList)
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
                self?.publishPosts(posts)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func logoutUser() {
        Amplify.DataStore.stop { _ in }
        user?.signOut()
    }
}
