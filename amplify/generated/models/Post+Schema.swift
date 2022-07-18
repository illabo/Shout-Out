// swiftlint:disable all
import Amplify
import Foundation

public extension Post {
    // MARK: - CodingKeys

    enum CodingKeys: String, ModelKey {
        case id
        case textContent
        case account
        case createdAt
        case updatedAt
    }

    static let keys = CodingKeys.self

    //  MARK: - ModelSchema

    static let schema = defineSchema { model in
        let post = Post.keys

        model.authRules = [
            rule(allow: .owner, ownerField: "owner", identityClaim: "cognito:username", provider: .userPools, operations: [.create, .update, .delete, .read]),
            rule(allow: .public, provider: .apiKey, operations: [.read]),
        ]

        model.pluralName = "Posts"

        model.fields(
            .id(),
            .field(post.textContent, is: .required, ofType: .string),
            .belongsTo(post.account, is: .optional, ofType: UserAccount.self, targetName: "userAccountPostsId"),
            .field(post.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
            .field(post.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
        )
    }
}
