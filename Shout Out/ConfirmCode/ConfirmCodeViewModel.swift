//
//  ConfirmCodeViewModel.swift
//  Shout Out
//
//  Created by Yachin Ilya on 07.07.2022.
//

import Combine
import Foundation

final class ConfirmCodeViewModel: ObservableObject {
    private weak var user: UserModelProtocol?
    init(user: UserModelProtocol) {
        self.user = user
    }

    @Published var isSending: Bool = false
    @Published var confirmationCode: String = ""
    var email: String {
        user?.email ?? ""
    }

    var isButtonEnabled: Bool {
        confirmationCode.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false
    }

    func sendConfirmationCode() {
        isSending = true
        user?.confirmSignUp(code: confirmationCode)
    }

    func cancelSignUp() {
        user?.signOut()
    }
}
