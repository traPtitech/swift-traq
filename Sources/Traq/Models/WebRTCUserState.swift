//
// WebRTCUserState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.WebRTCUserState")
public typealias WebRTCUserState = TraqAPI.WebRTCUserState

public extension TraqAPI {
    /** WebRTC状態 */
    struct WebRTCUserState: Codable, JSONEncodable, Hashable {
        /** ユーザーUUID */
        public var userId: UUID
        /** チャンネルUUID */
        public var channelId: UUID
        /** セッションの配列 */
        public var sessions: [WebRTCUserStateSessionsInner]

        public init(userId: UUID, channelId: UUID, sessions: [WebRTCUserStateSessionsInner]) {
            self.userId = userId
            self.channelId = channelId
            self.sessions = sessions
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case userId
            case channelId
            case sessions
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(userId, forKey: .userId)
            try container.encode(channelId, forKey: .channelId)
            try container.encode(sessions, forKey: .sessions)
        }
    }
}