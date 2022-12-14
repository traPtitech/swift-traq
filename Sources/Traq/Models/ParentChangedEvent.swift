//
// ParentChangedEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.ParentChangedEvent")
public typealias ParentChangedEvent = TraqAPI.ParentChangedEvent

public extension TraqAPI {
    /** 親チャンネル変更イベント */
    struct ParentChangedEvent: Codable, JSONEncodable, Hashable {
        /** 変更者UUID */
        public var userId: UUID
        /** 変更前親チャンネルUUID */
        public var before: UUID
        /** 変更後親チャンネルUUID */
        public var after: UUID

        public init(userId: UUID, before: UUID, after: UUID) {
            self.userId = userId
            self.before = before
            self.after = after
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case userId
            case before
            case after
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(userId, forKey: .userId)
            try container.encode(before, forKey: .before)
            try container.encode(after, forKey: .after)
        }
    }
}
