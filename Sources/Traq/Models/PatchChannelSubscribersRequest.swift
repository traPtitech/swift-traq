//
// PatchChannelSubscribersRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchChannelSubscribersRequest")
public typealias PatchChannelSubscribersRequest = TraqAPI.PatchChannelSubscribersRequest

public extension TraqAPI {
    /** チャンネル購読者編集リクエスト */
    struct PatchChannelSubscribersRequest: Codable, JSONEncodable, Hashable {
        /** 通知をオンにするユーザーのUUID配列 */
        public var on: [UUID]?
        /** 通知をオフにするユーザーのUUID配列 */
        public var off: [UUID]?

        public init(on: [UUID]? = nil, off: [UUID]? = nil) {
            self.on = on
            self.off = off
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case on
            case off
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(on, forKey: .on)
            try container.encodeIfPresent(off, forKey: .off)
        }
    }
}
