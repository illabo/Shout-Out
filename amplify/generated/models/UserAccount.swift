// swiftlint:disable all
import Amplify
import Foundation

public struct UserAccount: Model {
    public let id: String
    public var name: String
    public var posts: List<Post>?
    public var following: [String?]?
    public var createdAt: Temporal.DateTime?
    public var updatedAt: Temporal.DateTime?

    public init(id: String = UUID().uuidString,
                name: String,
                posts: List<Post>? = [],
                following: [String?]? = nil)
    {
        self.init(id: id,
                  name: name,
                  posts: posts,
                  following: following,
                  createdAt: nil,
                  updatedAt: nil)
    }

    internal init(id: String = UUID().uuidString,
                  name: String,
                  posts: List<Post>? = [],
                  following: [String?]? = nil,
                  createdAt: Temporal.DateTime? = nil,
                  updatedAt: Temporal.DateTime? = nil)
    {
        self.id = id
        self.name = name
        self.posts = posts
        self.following = following
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
