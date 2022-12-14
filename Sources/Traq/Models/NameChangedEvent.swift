//
// NameChangedEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.NameChangedEvent")
public typealias NameChangedEvent = TraqAPI.NameChangedEvent

public extension TraqAPI {
    /** チャンネル名変更イベント */
    struct NameChangedEvent: Codable, JSONEncodable, Hashable {
        /** 変更者UUID */
        public var userId: UUID
        /** 変更前チャンネル名 */
        public var before: String
        /** 変更後チャンネル名 */
        public var after: String

        public init(userId: UUID, before: String, after: String) {
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
