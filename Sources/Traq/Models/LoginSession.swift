//
// LoginSession.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.LoginSession")
public typealias LoginSession = TraqAPI.LoginSession

public extension TraqAPI {
    /** ログインセッション情報 */
    struct LoginSession: Codable, JSONEncodable, Hashable {
        /** セッションUUID */
        public var id: UUID
        /** 発行日時 */
        public var issuedAt: Date

        public init(id: UUID, issuedAt: Date) {
            self.id = id
            self.issuedAt = issuedAt
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case issuedAt
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(issuedAt, forKey: .issuedAt)
        }
    }
}
