//
// PatchUserGroupRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchUserGroupRequest")
public typealias PatchUserGroupRequest = TraqAPI.PatchUserGroupRequest

public extension TraqAPI {
    /** ユーザーグループ編集リクエスト */
    struct PatchUserGroupRequest: Codable, JSONEncodable, Hashable {
        /** グループ名 */
        public var name: String?
        /** グループ説明 */
        public var description: String?
        /** グループタイプ */
        public var type: String?

        public init(name: String? = nil, description: String? = nil, type: String? = nil) {
            self.name = name
            self.description = description
            self.type = type
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case description
            case type
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(type, forKey: .type)
        }
    }
}
