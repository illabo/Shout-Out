// swiftlint:disable all
import Amplify
import Foundation

public struct Post: Model {
  public let id: String
  public var textContent: String
  public var account: UserAccount?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      textContent: String,
      account: UserAccount? = nil) {
    self.init(id: id,
      textContent: textContent,
      account: account,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      textContent: String,
      account: UserAccount? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.textContent = textContent
      self.account = account
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}