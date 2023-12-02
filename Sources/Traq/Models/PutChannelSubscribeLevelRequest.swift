//
// PutChannelSubscribeLevelRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PutChannelSubscribeLevelRequest")
public typealias PutChannelSubscribeLevelRequest = TraqAPI.PutChannelSubscribeLevelRequest

public extension TraqAPI {
    /** チャンネル購読レベル変更リクエスト */
    struct PutChannelSubscribeLevelRequest: Codable, JSONEncodable, Hashable {
        public var level: ChannelSubscribeLevel

        public init(level: ChannelSubscribeLevel) {
            self.level = level
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case level
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(level, forKey: .level)
        }
    }
}
