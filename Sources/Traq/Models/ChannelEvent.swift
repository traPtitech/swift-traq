//
// ChannelEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.ChannelEvent")
public typealias ChannelEvent = TraqAPI.ChannelEvent

public extension TraqAPI {
    /** チャンネルイベント */
    struct ChannelEvent: Codable, JSONEncodable, Hashable {
        public enum ModelType: String, Codable, CaseIterable {
            case topicChanged = "TopicChanged"
            case subscribersChanged = "SubscribersChanged"
            case pinAdded = "PinAdded"
            case pinRemoved = "PinRemoved"
            case nameChanged = "NameChanged"
            case parentChanged = "ParentChanged"
            case visibilityChanged = "VisibilityChanged"
            case forcedNotificationChanged = "ForcedNotificationChanged"
            case childCreated = "ChildCreated"
        }

        /** イベントタイプ */
        public var type: ModelType
        /** イベント日時 */
        public var datetime: Date
        public var detail: ChannelEventDetail

        public init(type: ModelType, datetime: Date, detail: ChannelEventDetail) {
            self.type = type
            self.datetime = datetime
            self.detail = detail
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case datetime
            case detail
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(type, forKey: .type)
            try container.encode(datetime, forKey: .datetime)
            try container.encode(detail, forKey: .detail)
        }
    }
}
