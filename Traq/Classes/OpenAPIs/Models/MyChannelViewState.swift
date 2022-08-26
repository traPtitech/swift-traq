//
// MyChannelViewState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.MyChannelViewState")
public typealias MyChannelViewState = TraqAPI.MyChannelViewState

public extension TraqAPI {
    /** 自身のチャンネル閲覧状態 */
    struct MyChannelViewState: Codable, JSONEncodable, Hashable {
        /** WSセッションの識別子 */
        public var key: String
        /** チャンネルUUID */
        public var channelId: UUID
        public var state: ChannelViewState

        public init(key: String, channelId: UUID, state: ChannelViewState) {
            self.key = key
            self.channelId = channelId
            self.state = state
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case key
            case channelId
            case state
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(key, forKey: .key)
            try container.encode(channelId, forKey: .channelId)
            try container.encode(state, forKey: .state)
        }
    }
}
