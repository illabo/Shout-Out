//
//  AppDelegate.swift
//  Shout Out
//
//  Created by Yachin Ilya on 02.07.2022.
//

import Amplify
import AWSAPIPlugin
import AWSCognitoAuthPlugin
import AWSDataStorePlugin
import Combine
import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    var userModel: UserModelProtocol?
    private var subscriptions = Set<AnyCancellable>()
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            let datastoreConfiguration = DataStoreConfiguration.custom(syncInterval: Constants.amplifySyncInterval, syncPageSize: Constants.resultsPageSize, authModeStrategy: .multiAuth)
            let dataStorePlugin = AWSDataStorePlugin(
                modelRegistration: AmplifyModels(),
                configuration: datastoreConfiguration
            )
            try Amplify.add(plugin: dataStorePlugin)
            try Amplify.configure()
            userModel?.checkAuthSession()
        } catch {
            print(error)
        }
        return true
    }
}
