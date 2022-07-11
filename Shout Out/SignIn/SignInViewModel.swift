//
//  SignInViewModel.swift
//  Shout Out
//
//  Created by Yachin Ilya on 04.07.2022.
//

import Combine
import Foundation

final class SignInViewModel: ObservableObject {
    enum Route {
        case signUp
    }

    private weak var user: UserModelProtocol?
    init(user: UserModelProtocol) {
        self.user = user
    }

    // Here state not lifted to separate type. Sufficient abstraction for this size of app.
    @Published var isSending: Bool = false
    @Published var route: Route?
    @Published var username: String = ""
    @Published var password: String = ""
    var isButtonEnabled: Bool {
        username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false && password.count > 8
    }

    func sendUserCredentials() {
        isSending = true
        user?.logIn(username: username, password: password)
    }

    func requestSignUp() {
        route = .signUp
    }
}
