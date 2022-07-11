//
//  SignInRouter.swift
//  Shout Out
//
//  Created by Yachin Ilya on 07.07.2022.
//

import Foundation
import SwiftUI

final class SignInRouter {
    private var user: UserModelProtocol

    init(userModel: UserModelProtocol) {
        user = userModel
    }

    @ViewBuilder
    func view(for route: SignInViewModel.Route) -> some View {
        switch route {
        case .signUp:
            SignUpView(viewModel: SignUpViewModel(user: user))
        }
    }
}
