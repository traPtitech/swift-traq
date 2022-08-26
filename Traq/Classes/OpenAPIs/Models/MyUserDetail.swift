//
// MyUserDetail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.MyUserDetail")
public typealias MyUserDetail = TraqAPI.MyUserDetail

public extension TraqAPI {
    /** 自分のユーザー詳細情報 */
    struct MyUserDetail: Codable, JSONEncodable, Hashable {
        /** ユーザーUUID */
        public var id: UUID
        /** 自己紹介(biography) */
        public var bio: String
        /** 所属グループのUUIDの配列 */
        public var groups: [UUID]
        /** タグリスト */
        public var tags: [UserTag]
        /** 更新日時 */
        public var updatedAt: Date
        /** 最終オンライン日時 */
        public var lastOnline: Date?
        /** Twitter ID */
        public var twitterId: String
        /** ユーザー名 */
        public var name: String
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

        public init(id: UUID, bio: String, groups: [UUID], tags: [UserTag], updatedAt: Date, lastOnline: Date?, twitterId: String, name: String, displayName: String, iconFileId: UUID, bot: Bool, state: UserAccountState, permissions: [UserPermission], homeChannel: UUID?) {
            self.id = id
            self.bio = bio
            self.groups = groups
            self.tags = tags
            self.updatedAt = updatedAt
            self.lastOnline = lastOnline
            self.twitterId = twitterId
            self.name = name
            self.displayName = displayName
            self.iconFileId = iconFileId
            self.bot = bot
            self.state = state
            self.permissions = permissions
            self.homeChannel = homeChannel
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case bio
            case groups
            case tags
            case updatedAt
            case lastOnline
            case twitterId
            case name
            case displayName
            case iconFileId
            case bot
            case state
            case permissions
            case homeChannel
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(bio, forKey: .bio)
            try container.encode(groups, forKey: .groups)
            try container.encode(tags, forKey: .tags)
            try container.encode(updatedAt, forKey: .updatedAt)
            try container.encode(lastOnline, forKey: .lastOnline)
            try container.encode(twitterId, forKey: .twitterId)
            try container.encode(name, forKey: .name)
            try container.encode(displayName, forKey: .displayName)
            try container.encode(iconFileId, forKey: .iconFileId)
            try container.encode(bot, forKey: .bot)
            try container.encode(state, forKey: .state)
            try container.encode(permissions, forKey: .permissions)
            try container.encode(homeChannel, forKey: .homeChannel)
        }
    }
}
