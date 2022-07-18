//
//  ApplicationState.swift
//  Shout Out
//
//  Created by Yachin Ilya on 30.06.2022.
//

import Amplify
import Combine
import Foundation

typealias RootRoutePublisher = PassthroughSubject<RootViewModel.Route, Never>
typealias AuthErrorsPublisher = PassthroughSubject<AuthError, Never>

final class ApplicationState {
    var routePublisher = RootRoutePublisher()
    var authErrorsPublisher = AuthErrorsPublisher()
    var userModel: UserModel = .init()
    private var subscriptions = Set<AnyCancellable>()

    init() {
        userModel.sessionState
            .sink { [weak self] state in
                switch state {
                case let .authState(authState):
                    guard authState.isSignedIn, let authUser = Amplify.Auth.getCurrentUser() else {
                        self?.loggedOut()
                        return
                    }
                    self?.loggedIn(authUser)
                case let .signInState(signInState):
                    if case .confirmSignUp = signInState.nextStep, signInState.isSignedIn == false {
                        self?.needConfirmSignUp()
                    }
                case let .signUpState(signUpState):
                    if case .confirmUser = signUpState.nextStep {
                        self?.needConfirmSignUp()
                    }
                case let .authError(error):
                    self?.loggedOut(error)
                case .processing:
                    self?.processingRequest()
                case .signedOut:
                    self?.loggedOut()
                }
            }
            .store(in: &subscriptions)
    }

    private func loggedOut(_ error: Error? = nil) {
        if let error = error {
            print("User Error \(error)")
        }
        userModel.wipe()
        if let authError = error as? AuthError {
            authErrorsPublisher.send(authError)
        }
        routePublisher.send(.signIn)
    }

    private func loggedIn(_ user: AuthUser) {
        userModel.setUserInfo(userId: user.userId, username: user.username)
        routePublisher.send(.mainView)
    }

    private func needConfirmSignUp() {
        routePublisher.send(.confirmSignUp)
    }

    private func processingRequest() {
        routePublisher.send(.loading)
    }
}
