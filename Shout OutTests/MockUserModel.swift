//
//  MockUserModel.swift
//  Shout OutTests
//
//  Created by Yachin Ilya on 17.07.2022.
//

import Amplify
import Combine
import Foundation
@testable import Shout_Out

final class MockUserModel: UserModelProtocol {
    var sessionState = PassthroughSubject<SessionState, Never>()
    var userId: String?
    var userName: String?
    var email: String?

    static var constantUserName = "User the great"
    static var constantUserId = "13"
    static var constantEmail = "thegreat13@useremails.com"

    func logIn(username: String, password _: String) {
        userName = username
        sessionState.send(.signInState(AuthSignInResult(nextStep: AuthSignInStep.done)))
    }

    func signUp(username: String, password _: String, email _: String) {
        userName = username
        sessionState.send(.signUpState(.init(.confirmUser(nil, nil))))
    }

    func confirmSignUp(code _: String) {
        guard let userName = userName, userName.isEmpty == false else {
            sessionState.send(.authError(.unknown(ErrorDescription(), nil)))
            return
        }
        logIn(username: userName, password: "")
    }

    func setUserInfo(userId: String, username: String) {
        self.userId = userId
        userName = username
    }

    func signOut() {
        sessionState.send(.signedOut)
    }

    func wipe() {
        userId = nil
        userName = nil
        email = nil
    }

    func checkAuthSession() {
        userName = Self.constantUserName
        userId = Self.constantUserId
        email = Self.constantEmail
        sessionState.send(.signInState(AuthSignInResult(nextStep: AuthSignInStep.done)))
    }
}
