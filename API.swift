//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateUserAccountInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: GraphQLID? = nil, name: String, following: [GraphQLID?]? = nil, version: Int? = nil) {
        graphQLMap = ["id": id, "name": name, "following": following, "_version": version]
    }

    public var id: GraphQLID? {
        get {
            return graphQLMap["id"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var name: String {
        get {
            return graphQLMap["name"] as! String
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "name")
        }
    }

    public var following: [GraphQLID?]? {
        get {
            return graphQLMap["following"] as! [GraphQLID?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "following")
        }
    }

    public var version: Int? {
        get {
            return graphQLMap["_version"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "_version")
        }
    }
}

public struct ModelUserAccountConditionInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(name: ModelStringInput? = nil, following: ModelIDInput? = nil, and: [ModelUserAccountConditionInput?]? = nil, or: [ModelUserAccountConditionInput?]? = nil, not: ModelUserAccountConditionInput? = nil) {
        graphQLMap = ["name": name, "following": following, "and": and, "or": or, "not": not]
    }

    public var name: ModelStringInput? {
        get {
            return graphQLMap["name"] as! ModelStringInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "name")
        }
    }

    public var following: ModelIDInput? {
        get {
            return graphQLMap["following"] as! ModelIDInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "following")
        }
    }

    public var and: [ModelUserAccountConditionInput?]? {
        get {
            return graphQLMap["and"] as! [ModelUserAccountConditionInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "and")
        }
    }

    public var or: [ModelUserAccountConditionInput?]? {
        get {
            return graphQLMap["or"] as! [ModelUserAccountConditionInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "or")
        }
    }

    public var not: ModelUserAccountConditionInput? {
        get {
            return graphQLMap["not"] as! ModelUserAccountConditionInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "not")
        }
    }
}

public struct ModelStringInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
        graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
    }

    public var ne: String? {
        get {
            return graphQLMap["ne"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "ne")
        }
    }

    public var eq: String? {
        get {
            return graphQLMap["eq"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "eq")
        }
    }

    public var le: String? {
        get {
            return graphQLMap["le"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "le")
        }
    }

    public var lt: String? {
        get {
            return graphQLMap["lt"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "lt")
        }
    }

    public var ge: String? {
        get {
            return graphQLMap["ge"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "ge")
        }
    }

    public var gt: String? {
        get {
            return graphQLMap["gt"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "gt")
        }
    }

    public var contains: String? {
        get {
            return graphQLMap["contains"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "contains")
        }
    }

    public var notContains: String? {
        get {
            return graphQLMap["notContains"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "notContains")
        }
    }

    public var between: [String?]? {
        get {
            return graphQLMap["between"] as! [String?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "between")
        }
    }

    public var beginsWith: String? {
        get {
            return graphQLMap["beginsWith"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "beginsWith")
        }
    }

    public var attributeExists: Bool? {
        get {
            return graphQLMap["attributeExists"] as! Bool?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "attributeExists")
        }
    }

    public var attributeType: ModelAttributeTypes? {
        get {
            return graphQLMap["attributeType"] as! ModelAttributeTypes?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "attributeType")
        }
    }

    public var size: ModelSizeInput? {
        get {
            return graphQLMap["size"] as! ModelSizeInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "size")
        }
    }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
    public typealias RawValue = String
    case binary
    case binarySet
    case bool
    case list
    case map
    case number
    case numberSet
    case string
    case stringSet
    case null
    /// Auto generated constant for unknown enum values
    case unknown(RawValue)

    public init?(rawValue: RawValue) {
        switch rawValue {
        case "binary": self = .binary
        case "binarySet": self = .binarySet
        case "bool": self = .bool
        case "list": self = .list
        case "map": self = .map
        case "number": self = .number
        case "numberSet": self = .numberSet
        case "string": self = .string
        case "stringSet": self = .stringSet
        case "_null": self = .null
        default: self = .unknown(rawValue)
        }
    }

    public var rawValue: RawValue {
        switch self {
        case .binary: return "binary"
        case .binarySet: return "binarySet"
        case .bool: return "bool"
        case .list: return "list"
        case .map: return "map"
        case .number: return "number"
        case .numberSet: return "numberSet"
        case .string: return "string"
        case .stringSet: return "stringSet"
        case .null: return "_null"
        case let .unknown(value): return value
        }
    }

    public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
        switch (lhs, rhs) {
        case (.binary, .binary): return true
        case (.binarySet, .binarySet): return true
        case (.bool, .bool): return true
        case (.list, .list): return true
        case (.map, .map): return true
        case (.number, .number): return true
        case (.numberSet, .numberSet): return true
        case (.string, .string): return true
        case (.stringSet, .stringSet): return true
        case (.null, .null): return true
        case let (.unknown(lhsValue), .unknown(rhsValue)): return lhsValue == rhsValue
        default: return false
        }
    }
}

public struct ModelSizeInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
        graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
    }

    public var ne: Int? {
        get {
            return graphQLMap["ne"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "ne")
        }
    }

    public var eq: Int? {
        get {
            return graphQLMap["eq"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "eq")
        }
    }

    public var le: Int? {
        get {
            return graphQLMap["le"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "le")
        }
    }

    public var lt: Int? {
        get {
            return graphQLMap["lt"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "lt")
        }
    }

    public var ge: Int? {
        get {
            return graphQLMap["ge"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "ge")
        }
    }

    public var gt: Int? {
        get {
            return graphQLMap["gt"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "gt")
        }
    }

    public var between: [Int?]? {
        get {
            return graphQLMap["between"] as! [Int?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "between")
        }
    }
}

public struct ModelIDInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
        graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
    }

    public var ne: GraphQLID? {
        get {
            return graphQLMap["ne"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "ne")
        }
    }

    public var eq: GraphQLID? {
        get {
            return graphQLMap["eq"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "eq")
        }
    }

    public var le: GraphQLID? {
        get {
            return graphQLMap["le"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "le")
        }
    }

    public var lt: GraphQLID? {
        get {
            return graphQLMap["lt"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "lt")
        }
    }

    public var ge: GraphQLID? {
        get {
            return graphQLMap["ge"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "ge")
        }
    }

    public var gt: GraphQLID? {
        get {
            return graphQLMap["gt"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "gt")
        }
    }

    public var contains: GraphQLID? {
        get {
            return graphQLMap["contains"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "contains")
        }
    }

    public var notContains: GraphQLID? {
        get {
            return graphQLMap["notContains"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "notContains")
        }
    }

    public var between: [GraphQLID?]? {
        get {
            return graphQLMap["between"] as! [GraphQLID?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "between")
        }
    }

    public var beginsWith: GraphQLID? {
        get {
            return graphQLMap["beginsWith"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "beginsWith")
        }
    }

    public var attributeExists: Bool? {
        get {
            return graphQLMap["attributeExists"] as! Bool?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "attributeExists")
        }
    }

    public var attributeType: ModelAttributeTypes? {
        get {
            return graphQLMap["attributeType"] as! ModelAttributeTypes?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "attributeType")
        }
    }

    public var size: ModelSizeInput? {
        get {
            return graphQLMap["size"] as! ModelSizeInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "size")
        }
    }
}

public struct UpdateUserAccountInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: GraphQLID, name: String? = nil, following: [GraphQLID?]? = nil, version: Int? = nil) {
        graphQLMap = ["id": id, "name": name, "following": following, "_version": version]
    }

    public var id: GraphQLID {
        get {
            return graphQLMap["id"] as! GraphQLID
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var name: String? {
        get {
            return graphQLMap["name"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "name")
        }
    }

    public var following: [GraphQLID?]? {
        get {
            return graphQLMap["following"] as! [GraphQLID?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "following")
        }
    }

    public var version: Int? {
        get {
            return graphQLMap["_version"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "_version")
        }
    }
}

public struct DeleteUserAccountInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: GraphQLID, version: Int? = nil) {
        graphQLMap = ["id": id, "_version": version]
    }

    public var id: GraphQLID {
        get {
            return graphQLMap["id"] as! GraphQLID
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var version: Int? {
        get {
            return graphQLMap["_version"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "_version")
        }
    }
}

public struct CreatePostInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: GraphQLID? = nil, textContent: String, version: Int? = nil, userAccountPostsId: GraphQLID? = nil) {
        graphQLMap = ["id": id, "textContent": textContent, "_version": version, "userAccountPostsId": userAccountPostsId]
    }

    public var id: GraphQLID? {
        get {
            return graphQLMap["id"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var textContent: String {
        get {
            return graphQLMap["textContent"] as! String
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "textContent")
        }
    }

    public var version: Int? {
        get {
            return graphQLMap["_version"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "_version")
        }
    }

    public var userAccountPostsId: GraphQLID? {
        get {
            return graphQLMap["userAccountPostsId"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "userAccountPostsId")
        }
    }
}

public struct ModelPostConditionInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(textContent: ModelStringInput? = nil, and: [ModelPostConditionInput?]? = nil, or: [ModelPostConditionInput?]? = nil, not: ModelPostConditionInput? = nil, userAccountPostsId: ModelIDInput? = nil) {
        graphQLMap = ["textContent": textContent, "and": and, "or": or, "not": not, "userAccountPostsId": userAccountPostsId]
    }

    public var textContent: ModelStringInput? {
        get {
            return graphQLMap["textContent"] as! ModelStringInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "textContent")
        }
    }

    public var and: [ModelPostConditionInput?]? {
        get {
            return graphQLMap["and"] as! [ModelPostConditionInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "and")
        }
    }

    public var or: [ModelPostConditionInput?]? {
        get {
            return graphQLMap["or"] as! [ModelPostConditionInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "or")
        }
    }

    public var not: ModelPostConditionInput? {
        get {
            return graphQLMap["not"] as! ModelPostConditionInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "not")
        }
    }

    public var userAccountPostsId: ModelIDInput? {
        get {
            return graphQLMap["userAccountPostsId"] as! ModelIDInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "userAccountPostsId")
        }
    }
}

public struct UpdatePostInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: GraphQLID, textContent: String? = nil, version: Int? = nil, userAccountPostsId: GraphQLID? = nil) {
        graphQLMap = ["id": id, "textContent": textContent, "_version": version, "userAccountPostsId": userAccountPostsId]
    }

    public var id: GraphQLID {
        get {
            return graphQLMap["id"] as! GraphQLID
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var textContent: String? {
        get {
            return graphQLMap["textContent"] as! String?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "textContent")
        }
    }

    public var version: Int? {
        get {
            return graphQLMap["_version"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "_version")
        }
    }

    public var userAccountPostsId: GraphQLID? {
        get {
            return graphQLMap["userAccountPostsId"] as! GraphQLID?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "userAccountPostsId")
        }
    }
}

public struct DeletePostInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: GraphQLID, version: Int? = nil) {
        graphQLMap = ["id": id, "_version": version]
    }

    public var id: GraphQLID {
        get {
            return graphQLMap["id"] as! GraphQLID
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var version: Int? {
        get {
            return graphQLMap["_version"] as! Int?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "_version")
        }
    }
}

public struct ModelUserAccountFilterInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, following: ModelIDInput? = nil, and: [ModelUserAccountFilterInput?]? = nil, or: [ModelUserAccountFilterInput?]? = nil, not: ModelUserAccountFilterInput? = nil) {
        graphQLMap = ["id": id, "name": name, "following": following, "and": and, "or": or, "not": not]
    }

    public var id: ModelIDInput? {
        get {
            return graphQLMap["id"] as! ModelIDInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var name: ModelStringInput? {
        get {
            return graphQLMap["name"] as! ModelStringInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "name")
        }
    }

    public var following: ModelIDInput? {
        get {
            return graphQLMap["following"] as! ModelIDInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "following")
        }
    }

    public var and: [ModelUserAccountFilterInput?]? {
        get {
            return graphQLMap["and"] as! [ModelUserAccountFilterInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "and")
        }
    }

    public var or: [ModelUserAccountFilterInput?]? {
        get {
            return graphQLMap["or"] as! [ModelUserAccountFilterInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "or")
        }
    }

    public var not: ModelUserAccountFilterInput? {
        get {
            return graphQLMap["not"] as! ModelUserAccountFilterInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "not")
        }
    }
}

public struct ModelPostFilterInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    public init(id: ModelIDInput? = nil, textContent: ModelStringInput? = nil, and: [ModelPostFilterInput?]? = nil, or: [ModelPostFilterInput?]? = nil, not: ModelPostFilterInput? = nil, userAccountPostsId: ModelIDInput? = nil) {
        graphQLMap = ["id": id, "textContent": textContent, "and": and, "or": or, "not": not, "userAccountPostsId": userAccountPostsId]
    }

    public var id: ModelIDInput? {
        get {
            return graphQLMap["id"] as! ModelIDInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "id")
        }
    }

    public var textContent: ModelStringInput? {
        get {
            return graphQLMap["textContent"] as! ModelStringInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "textContent")
        }
    }

    public var and: [ModelPostFilterInput?]? {
        get {
            return graphQLMap["and"] as! [ModelPostFilterInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "and")
        }
    }

    public var or: [ModelPostFilterInput?]? {
        get {
            return graphQLMap["or"] as! [ModelPostFilterInput?]?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "or")
        }
    }

    public var not: ModelPostFilterInput? {
        get {
            return graphQLMap["not"] as! ModelPostFilterInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "not")
        }
    }

    public var userAccountPostsId: ModelIDInput? {
        get {
            return graphQLMap["userAccountPostsId"] as! ModelIDInput?
        }
        set {
            graphQLMap.updateValue(newValue, forKey: "userAccountPostsId")
        }
    }
}

public final class CreateUserAccountMutation: GraphQLMutation {
    public static let operationString =
        "mutation CreateUserAccount($input: CreateUserAccountInput!, $condition: ModelUserAccountConditionInput) {\n  createUserAccount(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var input: CreateUserAccountInput
    public var condition: ModelUserAccountConditionInput?

    public init(input: CreateUserAccountInput, condition: ModelUserAccountConditionInput? = nil) {
        self.input = input
        self.condition = condition
    }

    public var variables: GraphQLMap? {
        return ["input": input, "condition": condition]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("createUserAccount", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(createUserAccount: CreateUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "createUserAccount": createUserAccount.flatMap { $0.snapshot }])
        }

        public var createUserAccount: CreateUserAccount? {
            get {
                return (snapshot["createUserAccount"] as? Snapshot).flatMap { CreateUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "createUserAccount")
            }
        }

        public struct CreateUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class UpdateUserAccountMutation: GraphQLMutation {
    public static let operationString =
        "mutation UpdateUserAccount($input: UpdateUserAccountInput!, $condition: ModelUserAccountConditionInput) {\n  updateUserAccount(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var input: UpdateUserAccountInput
    public var condition: ModelUserAccountConditionInput?

    public init(input: UpdateUserAccountInput, condition: ModelUserAccountConditionInput? = nil) {
        self.input = input
        self.condition = condition
    }

    public var variables: GraphQLMap? {
        return ["input": input, "condition": condition]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("updateUserAccount", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(updateUserAccount: UpdateUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "updateUserAccount": updateUserAccount.flatMap { $0.snapshot }])
        }

        public var updateUserAccount: UpdateUserAccount? {
            get {
                return (snapshot["updateUserAccount"] as? Snapshot).flatMap { UpdateUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "updateUserAccount")
            }
        }

        public struct UpdateUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class DeleteUserAccountMutation: GraphQLMutation {
    public static let operationString =
        "mutation DeleteUserAccount($input: DeleteUserAccountInput!, $condition: ModelUserAccountConditionInput) {\n  deleteUserAccount(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var input: DeleteUserAccountInput
    public var condition: ModelUserAccountConditionInput?

    public init(input: DeleteUserAccountInput, condition: ModelUserAccountConditionInput? = nil) {
        self.input = input
        self.condition = condition
    }

    public var variables: GraphQLMap? {
        return ["input": input, "condition": condition]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("deleteUserAccount", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(deleteUserAccount: DeleteUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "deleteUserAccount": deleteUserAccount.flatMap { $0.snapshot }])
        }

        public var deleteUserAccount: DeleteUserAccount? {
            get {
                return (snapshot["deleteUserAccount"] as? Snapshot).flatMap { DeleteUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "deleteUserAccount")
            }
        }

        public struct DeleteUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class CreatePostMutation: GraphQLMutation {
    public static let operationString =
        "mutation CreatePost($input: CreatePostInput!, $condition: ModelPostConditionInput) {\n  createPost(input: $input, condition: $condition) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var input: CreatePostInput
    public var condition: ModelPostConditionInput?

    public init(input: CreatePostInput, condition: ModelPostConditionInput? = nil) {
        self.input = input
        self.condition = condition
    }

    public var variables: GraphQLMap? {
        return ["input": input, "condition": condition]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("createPost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreatePost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(createPost: CreatePost? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "createPost": createPost.flatMap { $0.snapshot }])
        }

        public var createPost: CreatePost? {
            get {
                return (snapshot["createPost"] as? Snapshot).flatMap { CreatePost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "createPost")
            }
        }

        public struct CreatePost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class UpdatePostMutation: GraphQLMutation {
    public static let operationString =
        "mutation UpdatePost($input: UpdatePostInput!, $condition: ModelPostConditionInput) {\n  updatePost(input: $input, condition: $condition) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var input: UpdatePostInput
    public var condition: ModelPostConditionInput?

    public init(input: UpdatePostInput, condition: ModelPostConditionInput? = nil) {
        self.input = input
        self.condition = condition
    }

    public var variables: GraphQLMap? {
        return ["input": input, "condition": condition]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("updatePost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdatePost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(updatePost: UpdatePost? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
        }

        public var updatePost: UpdatePost? {
            get {
                return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
            }
        }

        public struct UpdatePost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class DeletePostMutation: GraphQLMutation {
    public static let operationString =
        "mutation DeletePost($input: DeletePostInput!, $condition: ModelPostConditionInput) {\n  deletePost(input: $input, condition: $condition) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var input: DeletePostInput
    public var condition: ModelPostConditionInput?

    public init(input: DeletePostInput, condition: ModelPostConditionInput? = nil) {
        self.input = input
        self.condition = condition
    }

    public var variables: GraphQLMap? {
        return ["input": input, "condition": condition]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Mutation"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("deletePost", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeletePost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(deletePost: DeletePost? = nil) {
            self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
        }

        public var deletePost: DeletePost? {
            get {
                return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
            }
        }

        public struct DeletePost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class GetUserAccountQuery: GraphQLQuery {
    public static let operationString =
        "query GetUserAccount($id: ID!) {\n  getUserAccount(id: $id) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var id: GraphQLID

    public init(id: GraphQLID) {
        self.id = id
    }

    public var variables: GraphQLMap? {
        return ["id": id]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("getUserAccount", arguments: ["id": GraphQLVariable("id")], type: .object(GetUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(getUserAccount: GetUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Query", "getUserAccount": getUserAccount.flatMap { $0.snapshot }])
        }

        public var getUserAccount: GetUserAccount? {
            get {
                return (snapshot["getUserAccount"] as? Snapshot).flatMap { GetUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "getUserAccount")
            }
        }

        public struct GetUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class ListUserAccountsQuery: GraphQLQuery {
    public static let operationString =
        "query ListUserAccounts($filter: ModelUserAccountFilterInput, $limit: Int, $nextToken: String) {\n  listUserAccounts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    nextToken\n    startedAt\n  }\n}"

    public var filter: ModelUserAccountFilterInput?
    public var limit: Int?
    public var nextToken: String?

    public init(filter: ModelUserAccountFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
        self.filter = filter
        self.limit = limit
        self.nextToken = nextToken
    }

    public var variables: GraphQLMap? {
        return ["filter": filter, "limit": limit, "nextToken": nextToken]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("listUserAccounts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(listUserAccounts: ListUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Query", "listUserAccounts": listUserAccounts.flatMap { $0.snapshot }])
        }

        public var listUserAccounts: ListUserAccount? {
            get {
                return (snapshot["listUserAccounts"] as? Snapshot).flatMap { ListUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "listUserAccounts")
            }
        }

        public struct ListUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["ModelUserAccountConnection"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                GraphQLField("nextToken", type: .scalar(String.self)),
                GraphQLField("startedAt", type: .scalar(Int.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                self.init(snapshot: ["__typename": "ModelUserAccountConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var items: [Item?] {
                get {
                    return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                }
                set {
                    snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                }
            }

            public var nextToken: String? {
                get {
                    return snapshot["nextToken"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "nextToken")
                }
            }

            public var startedAt: Int? {
                get {
                    return snapshot["startedAt"] as? Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "startedAt")
                }
            }

            public struct Item: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class SyncUserAccountsQuery: GraphQLQuery {
    public static let operationString =
        "query SyncUserAccounts($filter: ModelUserAccountFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncUserAccounts(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    nextToken\n    startedAt\n  }\n}"

    public var filter: ModelUserAccountFilterInput?
    public var limit: Int?
    public var nextToken: String?
    public var lastSync: Int?

    public init(filter: ModelUserAccountFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
        self.filter = filter
        self.limit = limit
        self.nextToken = nextToken
        self.lastSync = lastSync
    }

    public var variables: GraphQLMap? {
        return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("syncUserAccounts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(syncUserAccounts: SyncUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Query", "syncUserAccounts": syncUserAccounts.flatMap { $0.snapshot }])
        }

        public var syncUserAccounts: SyncUserAccount? {
            get {
                return (snapshot["syncUserAccounts"] as? Snapshot).flatMap { SyncUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "syncUserAccounts")
            }
        }

        public struct SyncUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["ModelUserAccountConnection"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                GraphQLField("nextToken", type: .scalar(String.self)),
                GraphQLField("startedAt", type: .scalar(Int.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                self.init(snapshot: ["__typename": "ModelUserAccountConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var items: [Item?] {
                get {
                    return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                }
                set {
                    snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                }
            }

            public var nextToken: String? {
                get {
                    return snapshot["nextToken"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "nextToken")
                }
            }

            public var startedAt: Int? {
                get {
                    return snapshot["startedAt"] as? Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "startedAt")
                }
            }

            public struct Item: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class GetPostQuery: GraphQLQuery {
    public static let operationString =
        "query GetPost($id: ID!) {\n  getPost(id: $id) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var id: GraphQLID

    public init(id: GraphQLID) {
        self.id = id
    }

    public var variables: GraphQLMap? {
        return ["id": id]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("getPost", arguments: ["id": GraphQLVariable("id")], type: .object(GetPost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(getPost: GetPost? = nil) {
            self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
        }

        public var getPost: GetPost? {
            get {
                return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
            }
        }

        public struct GetPost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class ListPostsQuery: GraphQLQuery {
    public static let operationString =
        "query ListPosts($filter: ModelPostFilterInput, $limit: Int, $nextToken: String) {\n  listPosts(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      textContent\n      account {\n        __typename\n        id\n        name\n        following\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        owner\n      }\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      userAccountPostsId\n      owner\n    }\n    nextToken\n    startedAt\n  }\n}"

    public var filter: ModelPostFilterInput?
    public var limit: Int?
    public var nextToken: String?

    public init(filter: ModelPostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
        self.filter = filter
        self.limit = limit
        self.nextToken = nextToken
    }

    public var variables: GraphQLMap? {
        return ["filter": filter, "limit": limit, "nextToken": nextToken]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("listPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(listPosts: ListPost? = nil) {
            self.init(snapshot: ["__typename": "Query", "listPosts": listPosts.flatMap { $0.snapshot }])
        }

        public var listPosts: ListPost? {
            get {
                return (snapshot["listPosts"] as? Snapshot).flatMap { ListPost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "listPosts")
            }
        }

        public struct ListPost: GraphQLSelectionSet {
            public static let possibleTypes = ["ModelPostConnection"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                GraphQLField("nextToken", type: .scalar(String.self)),
                GraphQLField("startedAt", type: .scalar(Int.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var items: [Item?] {
                get {
                    return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                }
                set {
                    snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                }
            }

            public var nextToken: String? {
                get {
                    return snapshot["nextToken"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "nextToken")
                }
            }

            public var startedAt: Int? {
                get {
                    return snapshot["startedAt"] as? Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "startedAt")
                }
            }

            public struct Item: GraphQLSelectionSet {
                public static let possibleTypes = ["Post"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                    GraphQLField("account", type: .object(Account.selections)),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var textContent: String {
                    get {
                        return snapshot["textContent"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "textContent")
                    }
                }

                public var account: Account? {
                    get {
                        return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "account")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var userAccountPostsId: GraphQLID? {
                    get {
                        return snapshot["userAccountPostsId"] as? GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Account: GraphQLSelectionSet {
                    public static let possibleTypes = ["UserAccount"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("name", type: .nonNull(.scalar(String.self))),
                        GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, name: String, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var name: String {
                        get {
                            return snapshot["name"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "name")
                        }
                    }

                    public var following: [GraphQLID?]? {
                        get {
                            return snapshot["following"] as? [GraphQLID?]
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "following")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class SyncPostsQuery: GraphQLQuery {
    public static let operationString =
        "query SyncPosts($filter: ModelPostFilterInput, $limit: Int, $nextToken: String, $lastSync: AWSTimestamp) {\n  syncPosts(filter: $filter, limit: $limit, nextToken: $nextToken, lastSync: $lastSync) {\n    __typename\n    items {\n      __typename\n      id\n      textContent\n      account {\n        __typename\n        id\n        name\n        following\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        owner\n      }\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      userAccountPostsId\n      owner\n    }\n    nextToken\n    startedAt\n  }\n}"

    public var filter: ModelPostFilterInput?
    public var limit: Int?
    public var nextToken: String?
    public var lastSync: Int?

    public init(filter: ModelPostFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil, lastSync: Int? = nil) {
        self.filter = filter
        self.limit = limit
        self.nextToken = nextToken
        self.lastSync = lastSync
    }

    public var variables: GraphQLMap? {
        return ["filter": filter, "limit": limit, "nextToken": nextToken, "lastSync": lastSync]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("syncPosts", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "lastSync": GraphQLVariable("lastSync")], type: .object(SyncPost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(syncPosts: SyncPost? = nil) {
            self.init(snapshot: ["__typename": "Query", "syncPosts": syncPosts.flatMap { $0.snapshot }])
        }

        public var syncPosts: SyncPost? {
            get {
                return (snapshot["syncPosts"] as? Snapshot).flatMap { SyncPost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "syncPosts")
            }
        }

        public struct SyncPost: GraphQLSelectionSet {
            public static let possibleTypes = ["ModelPostConnection"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                GraphQLField("nextToken", type: .scalar(String.self)),
                GraphQLField("startedAt", type: .scalar(Int.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var items: [Item?] {
                get {
                    return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                }
                set {
                    snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                }
            }

            public var nextToken: String? {
                get {
                    return snapshot["nextToken"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "nextToken")
                }
            }

            public var startedAt: Int? {
                get {
                    return snapshot["startedAt"] as? Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "startedAt")
                }
            }

            public struct Item: GraphQLSelectionSet {
                public static let possibleTypes = ["Post"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                    GraphQLField("account", type: .object(Account.selections)),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var textContent: String {
                    get {
                        return snapshot["textContent"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "textContent")
                    }
                }

                public var account: Account? {
                    get {
                        return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "account")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var userAccountPostsId: GraphQLID? {
                    get {
                        return snapshot["userAccountPostsId"] as? GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Account: GraphQLSelectionSet {
                    public static let possibleTypes = ["UserAccount"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("name", type: .nonNull(.scalar(String.self))),
                        GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, name: String, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var name: String {
                        get {
                            return snapshot["name"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "name")
                        }
                    }

                    public var following: [GraphQLID?]? {
                        get {
                            return snapshot["following"] as? [GraphQLID?]
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "following")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class OnCreateUserAccountSubscription: GraphQLSubscription {
    public static let operationString =
        "subscription OnCreateUserAccount($owner: String) {\n  onCreateUserAccount(owner: $owner) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var owner: String?

    public init(owner: String? = nil) {
        self.owner = owner
    }

    public var variables: GraphQLMap? {
        return ["owner": owner]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Subscription"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("onCreateUserAccount", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnCreateUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(onCreateUserAccount: OnCreateUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Subscription", "onCreateUserAccount": onCreateUserAccount.flatMap { $0.snapshot }])
        }

        public var onCreateUserAccount: OnCreateUserAccount? {
            get {
                return (snapshot["onCreateUserAccount"] as? Snapshot).flatMap { OnCreateUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUserAccount")
            }
        }

        public struct OnCreateUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class OnUpdateUserAccountSubscription: GraphQLSubscription {
    public static let operationString =
        "subscription OnUpdateUserAccount($owner: String) {\n  onUpdateUserAccount(owner: $owner) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var owner: String?

    public init(owner: String? = nil) {
        self.owner = owner
    }

    public var variables: GraphQLMap? {
        return ["owner": owner]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Subscription"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("onUpdateUserAccount", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnUpdateUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(onUpdateUserAccount: OnUpdateUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Subscription", "onUpdateUserAccount": onUpdateUserAccount.flatMap { $0.snapshot }])
        }

        public var onUpdateUserAccount: OnUpdateUserAccount? {
            get {
                return (snapshot["onUpdateUserAccount"] as? Snapshot).flatMap { OnUpdateUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUserAccount")
            }
        }

        public struct OnUpdateUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class OnDeleteUserAccountSubscription: GraphQLSubscription {
    public static let operationString =
        "subscription OnDeleteUserAccount($owner: String) {\n  onDeleteUserAccount(owner: $owner) {\n    __typename\n    id\n    name\n    posts {\n      __typename\n      items {\n        __typename\n        id\n        textContent\n        createdAt\n        updatedAt\n        _version\n        _deleted\n        _lastChangedAt\n        userAccountPostsId\n        owner\n      }\n      nextToken\n      startedAt\n    }\n    following\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    owner\n  }\n}"

    public var owner: String?

    public init(owner: String? = nil) {
        self.owner = owner
    }

    public var variables: GraphQLMap? {
        return ["owner": owner]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Subscription"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("onDeleteUserAccount", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDeleteUserAccount.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(onDeleteUserAccount: OnDeleteUserAccount? = nil) {
            self.init(snapshot: ["__typename": "Subscription", "onDeleteUserAccount": onDeleteUserAccount.flatMap { $0.snapshot }])
        }

        public var onDeleteUserAccount: OnDeleteUserAccount? {
            get {
                return (snapshot["onDeleteUserAccount"] as? Snapshot).flatMap { OnDeleteUserAccount(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUserAccount")
            }
        }

        public struct OnDeleteUserAccount: GraphQLSelectionSet {
            public static let possibleTypes = ["UserAccount"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
                GraphQLField("posts", type: .object(Post.selections)),
                GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var name: String {
                get {
                    return snapshot["name"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "name")
                }
            }

            public var posts: Post? {
                get {
                    return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                }
            }

            public var following: [GraphQLID?]? {
                get {
                    return snapshot["following"] as? [GraphQLID?]
                }
                set {
                    snapshot.updateValue(newValue, forKey: "following")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Post: GraphQLSelectionSet {
                public static let possibleTypes = ["ModelPostConnection"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("items", type: .nonNull(.list(.object(Item.selections)))),
                    GraphQLField("nextToken", type: .scalar(String.self)),
                    GraphQLField("startedAt", type: .scalar(Int.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(items: [Item?], nextToken: String? = nil, startedAt: Int? = nil) {
                    self.init(snapshot: ["__typename": "ModelPostConnection", "items": items.map { $0.flatMap { $0.snapshot } }, "nextToken": nextToken, "startedAt": startedAt])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var items: [Item?] {
                    get {
                        return (snapshot["items"] as! [Snapshot?]).map { $0.flatMap { Item(snapshot: $0) } }
                    }
                    set {
                        snapshot.updateValue(newValue.map { $0.flatMap { $0.snapshot } }, forKey: "items")
                    }
                }

                public var nextToken: String? {
                    get {
                        return snapshot["nextToken"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "nextToken")
                    }
                }

                public var startedAt: Int? {
                    get {
                        return snapshot["startedAt"] as? Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "startedAt")
                    }
                }

                public struct Item: GraphQLSelectionSet {
                    public static let possibleTypes = ["Post"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                        GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("_deleted", type: .scalar(Bool.self)),
                        GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                        GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                        GraphQLField("owner", type: .scalar(String.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(id: GraphQLID, textContent: String, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                        self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var id: GraphQLID {
                        get {
                            return snapshot["id"]! as! GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "id")
                        }
                    }

                    public var textContent: String {
                        get {
                            return snapshot["textContent"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "textContent")
                        }
                    }

                    public var createdAt: String {
                        get {
                            return snapshot["createdAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "createdAt")
                        }
                    }

                    public var updatedAt: String {
                        get {
                            return snapshot["updatedAt"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "updatedAt")
                        }
                    }

                    public var version: Int {
                        get {
                            return snapshot["_version"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_version")
                        }
                    }

                    public var deleted: Bool? {
                        get {
                            return snapshot["_deleted"] as? Bool
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_deleted")
                        }
                    }

                    public var lastChangedAt: Int {
                        get {
                            return snapshot["_lastChangedAt"]! as! Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                        }
                    }

                    public var userAccountPostsId: GraphQLID? {
                        get {
                            return snapshot["userAccountPostsId"] as? GraphQLID
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                        }
                    }

                    public var owner: String? {
                        get {
                            return snapshot["owner"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "owner")
                        }
                    }
                }
            }
        }
    }
}

public final class OnCreatePostSubscription: GraphQLSubscription {
    public static let operationString =
        "subscription OnCreatePost($owner: String) {\n  onCreatePost(owner: $owner) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var owner: String?

    public init(owner: String? = nil) {
        self.owner = owner
    }

    public var variables: GraphQLMap? {
        return ["owner": owner]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Subscription"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("onCreatePost", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnCreatePost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(onCreatePost: OnCreatePost? = nil) {
            self.init(snapshot: ["__typename": "Subscription", "onCreatePost": onCreatePost.flatMap { $0.snapshot }])
        }

        public var onCreatePost: OnCreatePost? {
            get {
                return (snapshot["onCreatePost"] as? Snapshot).flatMap { OnCreatePost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePost")
            }
        }

        public struct OnCreatePost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class OnUpdatePostSubscription: GraphQLSubscription {
    public static let operationString =
        "subscription OnUpdatePost($owner: String) {\n  onUpdatePost(owner: $owner) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var owner: String?

    public init(owner: String? = nil) {
        self.owner = owner
    }

    public var variables: GraphQLMap? {
        return ["owner": owner]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Subscription"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("onUpdatePost", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnUpdatePost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(onUpdatePost: OnUpdatePost? = nil) {
            self.init(snapshot: ["__typename": "Subscription", "onUpdatePost": onUpdatePost.flatMap { $0.snapshot }])
        }

        public var onUpdatePost: OnUpdatePost? {
            get {
                return (snapshot["onUpdatePost"] as? Snapshot).flatMap { OnUpdatePost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePost")
            }
        }

        public struct OnUpdatePost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}

public final class OnDeletePostSubscription: GraphQLSubscription {
    public static let operationString =
        "subscription OnDeletePost($owner: String) {\n  onDeletePost(owner: $owner) {\n    __typename\n    id\n    textContent\n    account {\n      __typename\n      id\n      name\n      posts {\n        __typename\n        nextToken\n        startedAt\n      }\n      following\n      createdAt\n      updatedAt\n      _version\n      _deleted\n      _lastChangedAt\n      owner\n    }\n    createdAt\n    updatedAt\n    _version\n    _deleted\n    _lastChangedAt\n    userAccountPostsId\n    owner\n  }\n}"

    public var owner: String?

    public init(owner: String? = nil) {
        self.owner = owner
    }

    public var variables: GraphQLMap? {
        return ["owner": owner]
    }

    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Subscription"]

        public static let selections: [GraphQLSelection] = [
            GraphQLField("onDeletePost", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDeletePost.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
            self.snapshot = snapshot
        }

        public init(onDeletePost: OnDeletePost? = nil) {
            self.init(snapshot: ["__typename": "Subscription", "onDeletePost": onDeletePost.flatMap { $0.snapshot }])
        }

        public var onDeletePost: OnDeletePost? {
            get {
                return (snapshot["onDeletePost"] as? Snapshot).flatMap { OnDeletePost(snapshot: $0) }
            }
            set {
                snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePost")
            }
        }

        public struct OnDeletePost: GraphQLSelectionSet {
            public static let possibleTypes = ["Post"]

            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("textContent", type: .nonNull(.scalar(String.self))),
                GraphQLField("account", type: .object(Account.selections)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                GraphQLField("_deleted", type: .scalar(Bool.self)),
                GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                GraphQLField("userAccountPostsId", type: .scalar(GraphQLID.self)),
                GraphQLField("owner", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
                self.snapshot = snapshot
            }

            public init(id: GraphQLID, textContent: String, account: Account? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, userAccountPostsId: GraphQLID? = nil, owner: String? = nil) {
                self.init(snapshot: ["__typename": "Post", "id": id, "textContent": textContent, "account": account.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "userAccountPostsId": userAccountPostsId, "owner": owner])
            }

            public var __typename: String {
                get {
                    return snapshot["__typename"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "__typename")
                }
            }

            public var id: GraphQLID {
                get {
                    return snapshot["id"]! as! GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "id")
                }
            }

            public var textContent: String {
                get {
                    return snapshot["textContent"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "textContent")
                }
            }

            public var account: Account? {
                get {
                    return (snapshot["account"] as? Snapshot).flatMap { Account(snapshot: $0) }
                }
                set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "account")
                }
            }

            public var createdAt: String {
                get {
                    return snapshot["createdAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "createdAt")
                }
            }

            public var updatedAt: String {
                get {
                    return snapshot["updatedAt"]! as! String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "updatedAt")
                }
            }

            public var version: Int {
                get {
                    return snapshot["_version"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_version")
                }
            }

            public var deleted: Bool? {
                get {
                    return snapshot["_deleted"] as? Bool
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_deleted")
                }
            }

            public var lastChangedAt: Int {
                get {
                    return snapshot["_lastChangedAt"]! as! Int
                }
                set {
                    snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                }
            }

            public var userAccountPostsId: GraphQLID? {
                get {
                    return snapshot["userAccountPostsId"] as? GraphQLID
                }
                set {
                    snapshot.updateValue(newValue, forKey: "userAccountPostsId")
                }
            }

            public var owner: String? {
                get {
                    return snapshot["owner"] as? String
                }
                set {
                    snapshot.updateValue(newValue, forKey: "owner")
                }
            }

            public struct Account: GraphQLSelectionSet {
                public static let possibleTypes = ["UserAccount"]

                public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                    GraphQLField("posts", type: .object(Post.selections)),
                    GraphQLField("following", type: .list(.scalar(GraphQLID.self))),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("_version", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("_deleted", type: .scalar(Bool.self)),
                    GraphQLField("_lastChangedAt", type: .nonNull(.scalar(Int.self))),
                    GraphQLField("owner", type: .scalar(String.self)),
                ]

                public var snapshot: Snapshot

                public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                }

                public init(id: GraphQLID, name: String, posts: Post? = nil, following: [GraphQLID?]? = nil, createdAt: String, updatedAt: String, version: Int, deleted: Bool? = nil, lastChangedAt: Int, owner: String? = nil) {
                    self.init(snapshot: ["__typename": "UserAccount", "id": id, "name": name, "posts": posts.flatMap { $0.snapshot }, "following": following, "createdAt": createdAt, "updatedAt": updatedAt, "_version": version, "_deleted": deleted, "_lastChangedAt": lastChangedAt, "owner": owner])
                }

                public var __typename: String {
                    get {
                        return snapshot["__typename"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "__typename")
                    }
                }

                public var id: GraphQLID {
                    get {
                        return snapshot["id"]! as! GraphQLID
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "id")
                    }
                }

                public var name: String {
                    get {
                        return snapshot["name"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "name")
                    }
                }

                public var posts: Post? {
                    get {
                        return (snapshot["posts"] as? Snapshot).flatMap { Post(snapshot: $0) }
                    }
                    set {
                        snapshot.updateValue(newValue?.snapshot, forKey: "posts")
                    }
                }

                public var following: [GraphQLID?]? {
                    get {
                        return snapshot["following"] as? [GraphQLID?]
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "following")
                    }
                }

                public var createdAt: String {
                    get {
                        return snapshot["createdAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                }

                public var updatedAt: String {
                    get {
                        return snapshot["updatedAt"]! as! String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "updatedAt")
                    }
                }

                public var version: Int {
                    get {
                        return snapshot["_version"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_version")
                    }
                }

                public var deleted: Bool? {
                    get {
                        return snapshot["_deleted"] as? Bool
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_deleted")
                    }
                }

                public var lastChangedAt: Int {
                    get {
                        return snapshot["_lastChangedAt"]! as! Int
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "_lastChangedAt")
                    }
                }

                public var owner: String? {
                    get {
                        return snapshot["owner"] as? String
                    }
                    set {
                        snapshot.updateValue(newValue, forKey: "owner")
                    }
                }

                public struct Post: GraphQLSelectionSet {
                    public static let possibleTypes = ["ModelPostConnection"]

                    public static let selections: [GraphQLSelection] = [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("nextToken", type: .scalar(String.self)),
                        GraphQLField("startedAt", type: .scalar(Int.self)),
                    ]

                    public var snapshot: Snapshot

                    public init(snapshot: Snapshot) {
                        self.snapshot = snapshot
                    }

                    public init(nextToken: String? = nil, startedAt: Int? = nil) {
                        self.init(snapshot: ["__typename": "ModelPostConnection", "nextToken": nextToken, "startedAt": startedAt])
                    }

                    public var __typename: String {
                        get {
                            return snapshot["__typename"]! as! String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "__typename")
                        }
                    }

                    public var nextToken: String? {
                        get {
                            return snapshot["nextToken"] as? String
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "nextToken")
                        }
                    }

                    public var startedAt: Int? {
                        get {
                            return snapshot["startedAt"] as? Int
                        }
                        set {
                            snapshot.updateValue(newValue, forKey: "startedAt")
                        }
                    }
                }
            }
        }
    }
}
