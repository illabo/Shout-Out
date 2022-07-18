//
//  StorageService.swift
//  Shout Out
//
//  Created by Yachin Ilya on 13.07.2022.
//

import Amplify
import AWSDataStorePlugin
import Combine
import Foundation

protocol StorageServiceProtocol {
    func loadAccount(userId: String) -> AnyPublisher<UserAccount, Error>
    func createAccount(userId: String, name: String) -> AnyPublisher<UserAccount, Error>
    func loadPosts(_ page: UInt) -> AnyPublisher<[Post], Error>
    func createNewPost(post: Post) -> AnyPublisher<Post, Error>
    func deletePost(post: Post) -> AnyPublisher<Void, Error>
    func startSync()
    func stopSync()
}

final class StorageService: StorageServiceProtocol {
    enum StorageError: Error {
        case amplifyError(DataStoreError)
    }

    private var accountPublisher = PassthroughSubject<UserAccount, Error>()
    private var postsPublisher = PassthroughSubject<[Post], Error>()
    private var subscriptions = Set<AnyCancellable>()
    @Published private var mayLoadPosts = false

    func loadAccount(userId: String) -> AnyPublisher<UserAccount, Error> {
        listenForHubUpdates(userId: userId)
        return accountPublisher.eraseToAnyPublisher()
    }

    private func listenForHubUpdates(userId: String) {
        Amplify.Hub.publisher(for: .dataStore)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] event in
                if let syncedEvent = event.data as? ModelSyncedEvent {
                    switch syncedEvent.modelName {
                    case UserAccount.modelName:
                        self?.startLoadingAccount(userId: userId)
                    case Post.modelName:
                        self?.mayLoadPosts = true
                    default:
                        break
                    }
                }
            }
            .store(in: &subscriptions)
    }

    private func startLoadingAccount(userId: String) {
        Amplify.DataStore.query(UserAccount.self, byId: userId)
            .sink { [weak self] completion in
                switch completion {
                case let .failure(error):
                    self?.accountPublisher.send(completion: .failure(StorageError.amplifyError(error)))
                case .finished:
                    self?.accountPublisher.send(completion: .finished)
                }
            } receiveValue: { [weak self] account in
                if let account = account {
                    self?.accountPublisher.send(account)
                }
            }
            .store(in: &subscriptions)
    }

    func createAccount(userId: String, name: String) -> AnyPublisher<UserAccount, Error> {
        Amplify.DataStore.save(UserAccount(id: userId, name: name))
            .mapError { StorageError.amplifyError($0) }
            .eraseToAnyPublisher()
    }

    func loadPosts(_ page: UInt = 0) -> AnyPublisher<[Post], Error> {
        $mayLoadPosts
            .first(where: { $0 })
            .flatMap { _ in
                Amplify.DataStore.query(Post.self, where: Post.keys.createdAt.ne(nil), sort: .descending(Post.keys.createdAt), paginate: .page(page))
                    .mapError { StorageError.amplifyError($0) }
            }
            .eraseToAnyPublisher()
    }

    func createNewPost(post: Post) -> AnyPublisher<Post, Error> {
        Amplify.DataStore.save(post)
            .mapError { StorageError.amplifyError($0) }
            .eraseToAnyPublisher()
    }

    func deletePost(post: Post) -> AnyPublisher<Void, Error> {
        Amplify.DataStore.delete(post)
            .mapError { StorageError.amplifyError($0) }
            .eraseToAnyPublisher()
    }

    func startSync() {
        Amplify.DataStore.start { _ in }
    }

    func stopSync() {
        Amplify.DataStore.stop { _ in }
    }
}
