//
// ChannelStatsUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.ChannelStatsUser")
public typealias ChannelStatsUser = TraqAPI.ChannelStatsUser

extension TraqAPI {

/** チャンネル上の特定ユーザー統計情報 */
public struct ChannelStatsUser: Codable, JSONEncodable, Hashable {

    /** ユーザーID */
    public var id: UUID
    /** メッセージ数 */
    public var messageCount: Int64

    public init(id: UUID, messageCount: Int64) {
        self.id = id
        self.messageCount = messageCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case messageCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(messageCount, forKey: .messageCount)
    }
}

}