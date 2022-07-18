//
//  UserModel.swift
//  Shout Out
//
//  Created by Yachin Ilya on 02.07.2022.
//

import Amplify
import AWSCognitoAuthPlugin
import Combine
import Foundation

protocol UserModelProtocol: AnyObject {
    var sessionState: PassthroughSubject<SessionState, Never> { get set }
    var userId: String? { get }
    var userName: String? { get }
    var email: String? { get }
    func logIn(username: String, password: String)
    func signUp(username: String, password: String, email: String)
    func confirmSignUp(code: String)
    func setUserInfo(userId: String, username: String)
    func signOut()
    func wipe()
    func checkAuthSession()
}

enum SessionState {
    case authState(AuthSession)
    case signInState(AuthSignInResult)
    case signUpState(AuthSignUpResult)
    case authError(AuthError)
    case processing
    case signedOut
}

enum AppSessionError: Error {
    case timeout
}

final class UserModel: UserModelProtocol {
    var sessionState = PassthroughSubject<SessionState, Never>()
    var userId: String?
    var userName: String?
    var email: String?
    private var password: String?
    private var subscriptions = Set<AnyCancellable>()

    func logIn(username: String, password: String) {
        userName = username
        self.password = password
        sessionState.send(.processing)
        Amplify.Auth.signIn(username: username, password: password)
            .resultPublisher
            .timeout(.seconds(5), scheduler: DispatchQueue.main, options: nil, customError: { AuthError(error: AppSessionError.timeout) })
            .sink { [weak self] completion in
                if case let .failure(error) = completion {
                    self?.password = nil
                    self?.email = nil
                    self?.sessionState.send(.authError(error))
                }
            } receiveValue: { [weak self] result in
                if result.isSignedIn {
                    self?.checkAuthSession()
                }
                self?.sessionState.send(.signInState(result))
            }
            .store(in: &subscriptions)
    }

    func signUp(username: String, password: String, email: String) {
        userName = username
        self.password = password
        self.email = email
        let attributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: attributes)
        self.password = password
        sessionState.send(.processing)
        Amplify.Auth
            .signUp(username: username, password: password, options: options)
            .resultPublisher
            .sink { [weak self] completion in
                if case let .failure(error) = completion {
                    self?.password = nil
                    self?.email = nil
                    self?.sessionState.send(.authError(error))
                }
            } receiveValue: { [weak self] result in
                self?.sessionState.send(.signUpState(result))
            }
            .store(in: &subscriptions)
    }

    func confirmSignUp(code: String) {
        guard let username = userName else {
            return
        }
        sessionState.send(.processing)
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: code)
            .resultPublisher
            .sink { [weak self] completion in
                self?.password = nil
                self?.email = nil
                if case let .failure(error) = completion {
                    self?.sessionState.send(.authError(error))
                }
            } receiveValue: { [weak self] result in
                if result.isSignupComplete,
                   let password = self?.password
                {
                    self?.logIn(username: username, password: password)
                }
            }
            .store(in: &subscriptions)
    }

    func signOut() {
        sessionState.send(.processing)
        Amplify.Auth.signOut()
            .resultPublisher
            .sink { [weak self] completion in
                self?.wipe()
                if case let .failure(error) = completion {
                    self?.sessionState.send(.authError(error))
                }
            } receiveValue: { [weak self] _ in
                self?.sessionState.send(.signedOut)
            }
            .store(in: &subscriptions)
    }

    func setUserInfo(userId: String, username: String) {
        self.userId = userId
        userName = username
    }

    func wipe() {
        userId = nil
        userName = nil
        password = nil
        email = nil
        Amplify.DataStore
            .clear()
            .sink { _ in } receiveValue: { _ in }
            .store(in: &subscriptions)
    }

    func checkAuthSession() {
        sessionState.send(.processing)
        Amplify.Auth
            .fetchAuthSession()
            .resultPublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] completion in
                if case let .failure(error) = completion {
                    self?.sessionState.send(.authError(error))
                }
            } receiveValue: { [weak self] session in
                self?.sessionState.send(.authState(session))
            }
            .store(in: &subscriptions)
    }
}
