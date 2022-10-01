//
// PatchClientRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchClientRequest")
public typealias PatchClientRequest = TraqAPI.PatchClientRequest

public extension TraqAPI {
    /** OAuth2クライアント情報変更リクエスト */
    struct PatchClientRequest: Codable, JSONEncodable, Hashable {
        /** クライアント名 */
        public var name: String?
        /** 説明 */
        public var description: String?
        /** コールバックURL */
        public var callbackUrl: String?
        /** クライアント開発者UUID */
        public var developerId: UUID?

        public init(name: String? = nil, description: String? = nil, callbackUrl: String? = nil, developerId: UUID? = nil) {
            self.name = name
            self.description = description
            self.callbackUrl = callbackUrl
            self.developerId = developerId
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case description
            case callbackUrl
            case developerId
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            try container.encodeIfPresent(developerId, forKey: .developerId)
        }
    }
}