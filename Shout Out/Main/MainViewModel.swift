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
    @Published var isLoadingAccount: Bool = true
    private var userAccount: UserAccount?
    private var nextPageToLoad: UInt {
        UInt(posts.count) / Constants.resultsPageSize
    }
    
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
        sinkAccountPublishers(storage.loadAccount(userId: userId))
    }
    
    private func createAccount() {
        guard let userId = user?.userId, let name = user?.userName else { return }
        sinkAccountPublishers(storage.createAccount(userId: userId, name: name))
    }
    
    private func sinkAccountPublishers(_ accountPublisher: AnyPublisher<UserAccount?, Error>) {
        accountPublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                if case let .failure(error) = completion {
                    print(error)
                }
                //                if case .finished = completion, self?.userAccount == nil {
                //                    self?.createAccount()
                //                }
            } receiveValue: { [weak self] account in
                
                DispatchQueue.main.async {
                    guard let account = account else {
                        self?.createAccount()
                        return
                    }
                    print("GOT ACCOUNT \(account)")
                    self?.userAccount = account
                    self?.isLoadingAccount = false
                }
            }
            .store(in: &subscriptions)
    }
    
    private func populatePostsInUI(_ postsList: [Post]) {
        print("POPULATING UI WITH \(postsList)")
        let lastLoaded = nextPageToLoad
        DispatchQueue.main.async {
            // Deduplicate posts based on ID and update time.
            var postsDictionary = [String: Post]()
            postsList.forEach {
                postsDictionary[$0.id] = $0
            }
            self.posts.forEach {
                if
                    let seenUpdatedAt = postsDictionary[$0.id]?.updatedAt,
                    let newUpdatedAt = $0.updatedAt,
                    seenUpdatedAt < newUpdatedAt
                {
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
            
            if lastLoaded == self.nextPageToLoad {
                self.isLoadingPosts = false
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
        Amplify.DataStore.delete(post) { [weak self] result in
            if case let .failure(error) = result {
                print(error)
                return
            }
            DispatchQueue.main.async {
                self?.posts.removeAll { $0.id == post.id }
            }
        }
    }
    
    func loadMorePosts(force: Bool = false) {
        if force {
            self.isLoadingPosts = true
        }
        let timeoutError = NSError(
            domain: "\(Bundle.main.infoDictionary?[kCFBundleNameKey as String] as? String ?? "") loadMorePosts timeout",
            code: 1001,
            userInfo: [NSLocalizedDescriptionKey: "failed to load posts in time"]
        )
        $isLoadingAccount
            .first(where: { $0 == false })
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                guard let self = self else { return }
                print("GOT loadMorePosts $isLoadingAccount")
                self.storage.loadPosts(self.nextPageToLoad)
                // In case of new account with no posts we'd never get the Post model synced
                // so the publisher would never be called (see $mayLoadPosts in StorageService).
                // To have a timeout seems legit to prevent eternal spinner and also to cease the load attempts on error.
                    .timeout(.seconds(10), scheduler: DispatchQueue.main, options: nil, customError: { timeoutError })
                    .receive(on: DispatchQueue.main)
                    .sink { completion in
                        if case let .failure(error) = completion {
                            print(error)
                            self.isLoadingPosts = false
                        }
                    } receiveValue: {
                        self.populatePostsInUI($0)
                    }
                    .store(in: &self.subscriptions)
            }
            .store(in: &subscriptions)
    }
    
    func logoutUser() {
        storage.stopSync()
        user?.signOut()
    }
}
