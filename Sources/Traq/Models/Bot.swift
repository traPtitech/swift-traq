//
// Bot.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.Bot")
public typealias Bot = TraqAPI.Bot

public extension TraqAPI {
    /** BOT情報 */
    struct Bot: Codable, JSONEncodable, Hashable {
        /** BOT UUID */
        public var id: UUID
        /** BOTユーザーUUID */
        public var botUserId: UUID
        /** 説明 */
        public var description: String
        /** BOT開発者UUID */
        public var developerId: UUID
        /** BOTが購読しているイベントの配列 */
        public var subscribeEvents: [String]
        public var mode: BotMode
        public var state: BotState
        /** 作成日時 */
        public var createdAt: Date
        /** 更新日時 */
        public var updatedAt: Date

        public init(id: UUID, botUserId: UUID, description: String, developerId: UUID, subscribeEvents: [String], mode: BotMode, state: BotState, createdAt: Date, updatedAt: Date) {
            self.id = id
            self.botUserId = botUserId
            self.description = description
            self.developerId = developerId
            self.subscribeEvents = subscribeEvents
            self.mode = mode
            self.state = state
            self.createdAt = createdAt
            self.updatedAt = updatedAt
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case botUserId
            case description
            case developerId
            case subscribeEvents
            case mode
            case state
            case createdAt
            case updatedAt
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(botUserId, forKey: .botUserId)
            try container.encode(description, forKey: .description)
            try container.encode(developerId, forKey: .developerId)
            try container.encode(subscribeEvents, forKey: .subscribeEvents)
            try container.encode(mode, forKey: .mode)
            try container.encode(state, forKey: .state)
            try container.encode(createdAt, forKey: .createdAt)
            try container.encode(updatedAt, forKey: .updatedAt)
        }
    }
}