//
// ChannelStats.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.ChannelStats")
public typealias ChannelStats = TraqAPI.ChannelStats

public extension TraqAPI {
    /** チャンネル統計情報 */
    struct ChannelStats: Codable, JSONEncodable, Hashable {
        /** チャンネルの総投稿メッセージ数(削除されたものも含む) */
        public var totalMessageCount: Int64
        /** チャンネル上のスタンプ統計情報 */
        public var stamps: [ChannelStatsStamp]
        /** チャンネル上のユーザー統計情報 */
        public var users: [ChannelStatsUser]
        /** 統計情報日時 */
        public var datetime: Date

        public init(totalMessageCount: Int64, stamps: [ChannelStatsStamp], users: [ChannelStatsUser], datetime: Date) {
            self.totalMessageCount = totalMessageCount
            self.stamps = stamps
            self.users = users
            self.datetime = datetime
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case totalMessageCount
            case stamps
            case users
            case datetime
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(totalMessageCount, forKey: .totalMessageCount)
            try container.encode(stamps, forKey: .stamps)
            try container.encode(users, forKey: .users)
            try container.encode(datetime, forKey: .datetime)
        }
    }
}
