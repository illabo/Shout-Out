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
    func createAccount(userAccount: UserAccount) -> AnyPublisher<UserAccount, Error>
    func createNewPost(post: Post) -> AnyPublisher<Post, Error>
    func deletePost(post: Post) -> AnyPublisher<(), Error>
    func startSync()
    func stopSync()
}

final class StorageService: StorageServiceProtocol {
    
    enum StorageError: Error {
        case amplifyError(DataStoreError)
    }
    
    private var accountPublisher = PassthroughSubject<UserAccount, Error>()
    private var subscriptions = Set<AnyCancellable>()
    
    func loadAccount(userId: String) -> AnyPublisher<UserAccount, Error> {
        listenForHubUpdates(userId: userId)
    }
    
    private func listenForHubUpdates(userId: String) -> AnyPublisher<UserAccount, Error> {
        Amplify.Hub.publisher(for: .dataStore)
            .receive(on: DispatchQueue.main)
            .sink{ [weak self] event in
                if "DataStore.modelSynced" == event.eventName {
                    self?.startLoadingAccount(userId: userId)
                }
            }
            .store(in: &subscriptions)
        
        return accountPublisher.eraseToAnyPublisher()
    }
    
    private func startLoadingAccount(userId: String) {
        Amplify.DataStore.query(UserAccount.self, byId: userId)
            .sink {[weak self] completion in
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
    
    func createAccount(userAccount: UserAccount) -> AnyPublisher<UserAccount, Error> {
        Amplify.DataStore.save(userAccount)
            .mapError{StorageError.amplifyError($0)}
            .eraseToAnyPublisher()
    }
    
    func createNewPost(post: Post) -> AnyPublisher<Post, Error> {
        Amplify.DataStore.save(post)
            .mapError{StorageError.amplifyError($0)}
            .eraseToAnyPublisher()
    }
    
    func deletePost(post: Post) -> AnyPublisher<(), Error> {
        Amplify.DataStore.delete(post)
            .mapError{ StorageError.amplifyError($0) }
            .eraseToAnyPublisher()
    }
    
    func startSync(){
        Amplify.DataStore.start { _ in }
    }
    
    func stopSync(){
        Amplify.DataStore.stop { _ in }
    }
}

