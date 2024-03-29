//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.User")
public typealias User = TraqAPI.User

public extension TraqAPI {
    /** ユーザー情報 */
    struct User: Codable, JSONEncodable, Hashable {
        static let nameRule = StringRule(minLength: nil, maxLength: nil, pattern: "/^[a-zA-Z0-9_-]{1,32}$/")
        static let displayNameRule = StringRule(minLength: 0, maxLength: 32, pattern: nil)
        /** ユーザーUUID */
        public var id: UUID
        /** ユーザー名 */
        public var name: String
        /** ユーザー表示名 */
        public var displayName: String
        /** アイコンファイルUUID */
        public var iconFileId: UUID
        /** BOTかどうか */
        public var bot: Bool
        public var state: UserAccountState
        /** 更新日時 */
        public var updatedAt: Date

        public init(id: UUID, name: String, displayName: String, iconFileId: UUID, bot: Bool, state: UserAccountState, updatedAt: Date) {
            self.id = id
            self.name = name
            self.displayName = displayName
            self.iconFileId = iconFileId
            self.bot = bot
            self.state = state
            self.updatedAt = updatedAt
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case displayName
            case iconFileId
            case bot
            case state
            case updatedAt
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(name, forKey: .name)
            try container.encode(displayName, forKey: .displayName)
            try container.encode(iconFileId, forKey: .iconFileId)
            try container.encode(bot, forKey: .bot)
            try container.encode(state, forKey: .state)
            try container.encode(updatedAt, forKey: .updatedAt)
        }
    }
}
