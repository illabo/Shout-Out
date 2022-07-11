//
//  RootViewModel.swift
//  Shout Out
//
//  Created by Yachin Ilya on 04.07.2022.
//

import Amplify
import Combine
import Foundation

final class RootViewModel: ObservableObject {
    enum Route: Equatable {
        case loading
        case signIn
        case confirmSignUp
        case mainView
    }

    @Published var route: Route = .loading
    @Published var error: AuthError? = nil
    var presentAlert: Bool {
        get {
            error != nil
        }
        set {
            if newValue {
                return
            }
            error = nil
        }
    }

    private var subscriptions = Set<AnyCancellable>()

    init(routePublisher: RootRoutePublisher, errorsPublisher: AuthErrorsPublisher) {
        routePublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newRoute in
                self?.route = newRoute
            }
            .store(in: &subscriptions)

        errorsPublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] error in
                self?.error = error
            }
            .store(in: &subscriptions)
    }
}
