// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ToDosQuery: GraphQLQuery {
  public static let operationName: String = "ToDosQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query ToDosQuery { todos { __typename id description } }"#
    ))

  public init() {}

  public struct Data: SampleGraphAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SampleGraphAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("todos", [Todo?]?.self),
    ] }

    /// Get all todos
    public var todos: [Todo?]? { __data["todos"] }

    /// Todo
    ///
    /// Parent Type: `Todo`
    public struct Todo: SampleGraphAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SampleGraphAPI.Objects.Todo }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", String?.self),
        .field("description", String?.self),
      ] }

      public var id: String? { __data["id"] }
      public var description: String? { __data["description"] }
    }
  }
}
