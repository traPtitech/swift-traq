//
// PatchWebhookRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchWebhookRequest")
public typealias PatchWebhookRequest = TraqAPI.PatchWebhookRequest

public extension TraqAPI {
    /** Webhook情報変更リクエスト */
    struct PatchWebhookRequest: Codable, JSONEncodable, Hashable {
        /** Webhookユーザー表示名 */
        public var name: String?
        /** 説明 */
        public var description: String?
        /** デフォルトの投稿先チャンネルUUID */
        public var channelId: UUID?
        /** Webhookシークレット */
        public var secret: String?
        /** 移譲先のユーザーUUID */
        public var ownerId: UUID?

        public init(name: String? = nil, description: String? = nil, channelId: UUID? = nil, secret: String? = nil, ownerId: UUID? = nil) {
            self.name = name
            self.description = description
            self.channelId = channelId
            self.secret = secret
            self.ownerId = ownerId
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case description
            case channelId
            case secret
            case ownerId
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(channelId, forKey: .channelId)
            try container.encodeIfPresent(secret, forKey: .secret)
            try container.encodeIfPresent(ownerId, forKey: .ownerId)
        }
    }
}