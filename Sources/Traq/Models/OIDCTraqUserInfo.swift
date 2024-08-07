//
// OIDCTraqUserInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.OIDCTraqUserInfo")
public typealias OIDCTraqUserInfo = TraqAPI.OIDCTraqUserInfo

public extension TraqAPI {
    /** traQ特有のユーザー詳細情報 */
    struct OIDCTraqUserInfo: Codable, JSONEncodable, Hashable {
        static let bioRule = StringRule(minLength: nil, maxLength: 1000, pattern: nil)
        static let twitterIdRule = StringRule(minLength: nil, maxLength: nil, pattern: "/^[a-zA-Z0-9_]{1,15}$/")
        static let displayNameRule = StringRule(minLength: 0, maxLength: 32, pattern: nil)
        /** 自己紹介(biography) */
        public var bio: String
        /** 所属グループのUUIDの配列 */
        public var groups: [UUID]
        /** タグリスト */
        public var tags: [UserTag]
        /** 最終オンライン日時 */
        public var lastOnline: Date?
        /** Twitter ID */
        public var twitterId: String
        /** ユーザー表示名 */
        public var displayName: String
        /** アイコンファイルUUID */
        public var iconFileId: UUID
        /** BOTかどうか */
        public var bot: Bool
        public var state: UserAccountState
        /** 所有している権限の配列 */
        public var permissions: [UserPermission]
        /** ホームチャンネル */
        public var homeChannel: UUID?

        public init(bio: String, groups: [UUID], tags: [UserTag], lastOnline: Date?, twitterId: String, displayName: String, iconFileId: UUID, bot: Bool, state: UserAccountState, permissions: [UserPermission], homeChannel: UUID?) {
            self.bio = bio
            self.groups = groups
            self.tags = tags
            self.lastOnline = lastOnline
            self.twitterId = twitterId
            self.displayName = displayName
            self.iconFileId = iconFileId
            self.bot = bot
            self.state = state
            self.permissions = permissions
            self.homeChannel = homeChannel
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case bio
            case groups
            case tags
            case lastOnline = "last_online"
            case twitterId = "twitter_id"
            case displayName = "display_name"
            case iconFileId = "icon_file_id"
            case bot
            case state
            case permissions
            case homeChannel = "home_channel"
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(bio, forKey: .bio)
            try container.encode(groups, forKey: .groups)
            try container.encode(tags, forKey: .tags)
            try container.encode(lastOnline, forKey: .lastOnline)
            try container.encode(twitterId, forKey: .twitterId)
            try container.encode(displayName, forKey: .displayName)
            try container.encode(iconFileId, forKey: .iconFileId)
            try container.encode(bot, forKey: .bot)
            try container.encode(state, forKey: .state)
            try container.encode(permissions, forKey: .permissions)
            try container.encode(homeChannel, forKey: .homeChannel)
        }
    }
}
