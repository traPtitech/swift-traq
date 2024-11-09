//
// AddUserGroupMemberRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.AddUserGroupMemberRequest")
public typealias AddUserGroupMemberRequest = TraqAPI.AddUserGroupMemberRequest

public extension TraqAPI {
    enum AddUserGroupMemberRequest: Codable, JSONEncodable, Hashable {
        case typeUserGroupMember(UserGroupMember)
        case type[UserGroupMember]([UserGroupMember])

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case let .typeUserGroupMember(value):
                try container.encode(value)
            case .type[UserGroupMember](let value):
                try container.encode(value)
            }
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(UserGroupMember.self) {
                self = .typeUserGroupMember(value)
            } else if let value = try? container.decode([UserGroupMember].self) {
                self = .type[UserGroupMember](value)
            } else {
                throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AddUserGroupMemberRequest"))
            }
        }
    }
}