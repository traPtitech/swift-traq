//
// WebRTCAuthenticateResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.WebRTCAuthenticateResult")
public typealias WebRTCAuthenticateResult = TraqAPI.WebRTCAuthenticateResult

public extension TraqAPI {
    /** skyway用認証リクエストリザルト */
    struct WebRTCAuthenticateResult: Codable, JSONEncodable, Hashable {
        /** ピアID */
        public var peerId: String
        /** TTL */
        public var ttl: Int
        /** タイムスタンプ */
        public var timestamp: Int64
        /** 認証トークン */
        public var authToken: String

        public init(peerId: String, ttl: Int, timestamp: Int64, authToken: String) {
            self.peerId = peerId
            self.ttl = ttl
            self.timestamp = timestamp
            self.authToken = authToken
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case peerId
            case ttl
            case timestamp
            case authToken
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(peerId, forKey: .peerId)
            try container.encode(ttl, forKey: .ttl)
            try container.encode(timestamp, forKey: .timestamp)
            try container.encode(authToken, forKey: .authToken)
        }
    }
}