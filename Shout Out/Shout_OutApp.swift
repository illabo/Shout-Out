//
//  Shout_OutApp.swift
//  Shout Out
//
//  Created by Yachin Ilya on 28.06.2022.
//

import Combine
import SwiftUI

@main
struct Shout_OutApp: App {
    init() {
        appDelegate.userModel = Self.appState.userModel
    }

    private static var appState = ApplicationState()
    private var subscriptions = Set<AnyCancellable>()
    @ObservedObject var viewModel = RootViewModel(
        routePublisher: Self.appState.routePublisher,
        errorsPublisher: Self.appState.authErrorsPublisher
    )

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            RootRouter(appState: Self.appState).view(for: viewModel.route)
                .alert("Error", isPresented: $viewModel.presentAlert, actions: {
                    Text("OK")
                }, message: {
                    if let description = viewModel.error?.errorDescription {
                        Text(description)
                    }
                    if let suggestion = viewModel.error?.recoverySuggestion {
                        Text(suggestion)
                    }
                })
        }
    }
}
