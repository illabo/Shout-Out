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
    private var lastPostsPage: List<Post>?
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
            print("AMPLIFY EVENT \(event)")
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
                print("GOT ACCOUNT RESULT \(account)")
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
        lastPostsPage = postsList
        lastPostsPage?
            .fetch { [weak self] result in
                self?.isLoadingPosts = false
                switch result {
                case let .failure(error):
                    print(error)
                case .success:
                    DispatchQueue.main.async {
                        self?.posts.append(contentsOf: self?.lastPostsPage?.elements ?? [])
                        self?.posts.sort {
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
        // Setting the time right away rquired for sorting the not-yet-sunced posts. The Time value would be rewritten by the cloud anyway.
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
        //        Amplify.API.mutate(request: .delete(post))
        //            .resultPublisher
        //            .sink { completion in
        //                if case let .failure(error) = completion {
        //                    print(error)
        //                }
        //            } receiveValue: { [weak self] result in
        //                if case let .failure(error) = result {
        //                    print(error)
        //                    return
        //                }
        //                DispatchQueue.main.async {
        //                    self?.posts.removeAll { $0.id == post.id }
        //                }
        //            }
        //            .store(in: &subscriptions)
        
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
    
    func logoutUser() {
        Amplify.DataStore.stop { _ in }
        user?.signOut()
    }
}

//
// type UserAccount
// @model
// @auth(
//    rules: [
//      { allow: owner, provider: userPools, operations: [create, update, delete] },
//      { allow: public, provider: apiKey, operations: [read] }
//    ]
//  )
// {
//  id: ID!
//  name: String!
//  posts: [Post] @hasMany
//  following: [ID]
// }
//
// type Post
// @model
// @auth(
//    rules: [
//      { allow: owner, provider: userPools, operations: [create, update, delete] },
//      { allow: public, provider: apiKey, operations: [read] }
//    ]
//  )
//  {
//  id: ID!
//  textContent: String!
//  account: UserAccount @belongsTo
// }
