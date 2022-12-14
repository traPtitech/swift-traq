//
// StampStats.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.StampStats")
public typealias StampStats = TraqAPI.StampStats

public extension TraqAPI {
    /** スタンプ統計情報 */
    struct StampStats: Codable, JSONEncodable, Hashable {
        /** スタンプ使用総数(同じユーザによって同じメッセージに貼られたものは複数カウントしない) */
        public var count: Int64
        /** スタンプ使用総数(全てカウント) */
        public var totalCount: Int64

        public init(count: Int64, totalCount: Int64) {
            self.count = count
            self.totalCount = totalCount
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case count
            case totalCount
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(count, forKey: .count)
            try container.encode(totalCount, forKey: .totalCount)
        }
    }
}
