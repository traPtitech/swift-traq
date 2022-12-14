//
// VisibilityChangedEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.VisibilityChangedEvent")
public typealias VisibilityChangedEvent = TraqAPI.VisibilityChangedEvent

public extension TraqAPI {
    /** チャンネル可視状態変更イベント */
    struct VisibilityChangedEvent: Codable, JSONEncodable, Hashable {
        /** 変更者UUID */
        public var userId: UUID
        /** 変更後可視状態 */
        public var visibility: Bool

        public init(userId: UUID, visibility: Bool) {
            self.userId = userId
            self.visibility = visibility
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case userId
            case visibility
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(userId, forKey: .userId)
            try container.encode(visibility, forKey: .visibility)
        }
    }
}
