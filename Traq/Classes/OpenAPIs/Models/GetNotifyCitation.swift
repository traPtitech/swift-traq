//
// GetNotifyCitation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.GetNotifyCitation")
public typealias GetNotifyCitation = TraqAPI.GetNotifyCitation

public extension TraqAPI {
    /** メッセージ引用通知の設定情報 */
    struct GetNotifyCitation: Codable, JSONEncodable, Hashable {
        public var notifyCitation: Bool

        public init(notifyCitation: Bool) {
            self.notifyCitation = notifyCitation
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case notifyCitation
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(notifyCitation, forKey: .notifyCitation)
        }
    }
}
