//
//  SignUpViewModel.swift
//  Shout Out
//
//  Created by Yachin Ilya on 07.07.2022.
//

import Combine
import Foundation

final class SignUpViewModel: ObservableObject {
    private weak var user: UserModelProtocol?
    init(user: UserModelProtocol) {
        self.user = user
    }

    @Published var isSending: Bool = false
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var email: String = ""
    var isButtonEnabled: Bool {
        username.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false &&
            password.count > 8 &&
            email.isEmail()
    }

    func sendUserCredentials() {
        isSending = true
        user?.signUp(username: username, password: password, email: email)
    }
}
