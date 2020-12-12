// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SpaceXHistoryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SpaceXHistory {
      histories {
        __typename
        id
        title
        details
        event_date_unix
      }
    }
    """

  public let operationName: String = "SpaceXHistory"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("histories", type: .list(.object(History.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(histories: [History?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "histories": histories.flatMap { (value: [History?]) -> [ResultMap?] in value.map { (value: History?) -> ResultMap? in value.flatMap { (value: History) -> ResultMap in value.resultMap } } }])
    }

    public var histories: [History?]? {
      get {
        return (resultMap["histories"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [History?] in value.map { (value: ResultMap?) -> History? in value.flatMap { (value: ResultMap) -> History in History(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [History?]) -> [ResultMap?] in value.map { (value: History?) -> ResultMap? in value.flatMap { (value: History) -> ResultMap in value.resultMap } } }, forKey: "histories")
      }
    }

    public struct History: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["History"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("details", type: .scalar(String.self)),
          GraphQLField("event_date_unix", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, title: String? = nil, details: String? = nil, eventDateUnix: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "History", "id": id, "title": title, "details": details, "event_date_unix": eventDateUnix])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var details: String? {
        get {
          return resultMap["details"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "details")
        }
      }

      public var eventDateUnix: String? {
        get {
          return resultMap["event_date_unix"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "event_date_unix")
        }
      }
    }
  }
}

public final class SpaceXUsersSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription SpaceXUsers {
      users {
        __typename
        id
        name
      }
    }
    """

  public let operationName: String = "SpaceXUsers"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: [User]) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "users": users.map { (value: User) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "users"
    public var users: [User] {
      get {
        return (resultMap["users"] as! [ResultMap]).map { (value: ResultMap) -> User in User(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: User) -> ResultMap in value.resultMap }, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["users"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "users", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}
