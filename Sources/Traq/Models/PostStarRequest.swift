//
// PostStarRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PostStarRequest")
public typealias PostStarRequest = TraqAPI.PostStarRequest

public extension TraqAPI {
    /** スター追加リクエスト */
    struct PostStarRequest: Codable, JSONEncodable, Hashable {
        /** チャンネルUUID */
        public var channelId: UUID

        public init(channelId: UUID) {
            self.channelId = channelId
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case channelId
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(channelId, forKey: .channelId)
        }
    }
}
