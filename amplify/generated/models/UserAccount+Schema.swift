// swiftlint:disable all
import Amplify
import Foundation

extension UserAccount {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case posts
    case following
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let userAccount = UserAccount.keys
    
    model.authRules = [
      rule(allow: .owner, ownerField: "owner", identityClaim: "cognito:username", provider: .userPools, operations: [.create, .update, .delete, .read]),
      rule(allow: .public, provider: .apiKey, operations: [.read])
    ]
    
    model.pluralName = "UserAccounts"
    
    model.fields(
      .id(),
      .field(userAccount.name, is: .required, ofType: .string),
      .hasMany(userAccount.posts, is: .optional, ofType: Post.self, associatedWith: Post.keys.account),
      .field(userAccount.following, is: .optional, ofType: .embeddedCollection(of: String.self)),
      .field(userAccount.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(userAccount.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}