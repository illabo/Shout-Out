//
//  RootRouter.swift
//  Shout Out
//
//  Created by Yachin Ilya on 02.07.2022.
//

import Foundation
import SwiftUI

final class RootRouter {
    init(appState: ApplicationState) {
        self.appState = appState
    }

    private var appState: ApplicationState

    @ViewBuilder
    func view(for route: RootViewModel.Route) -> some View {
        switch route {
        case .loading:
            LoadingView()
        case .signIn:
            SignInView(viewModel: SignInViewModel(user: appState.userModel), router: SignInRouter(userModel: appState.userModel))
        case .confirmSignUp:
            ConfirmCodeView(viewModel: ConfirmCodeViewModel(user: appState.userModel))
        case .mainView:
            MainView(viewModel: MainViewModel(user: appState.userModel, storage: StorageService()))
        }
    }
}
