// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol.

public final class AmplifyModels: AmplifyModelRegistration {
    public let version: String = "4191ba14e0a01ad21070ebe20e39e927"

    public func registerModels(registry _: ModelRegistry.Type) {
        ModelRegistry.register(modelType: UserAccount.self)
        ModelRegistry.register(modelType: Post.self)
    }
}
