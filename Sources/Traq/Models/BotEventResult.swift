//
// BotEventResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.BotEventResult")
public typealias BotEventResult = TraqAPI.BotEventResult

public extension TraqAPI {
    /** イベント配送結果 */
    enum BotEventResult: String, Codable, CaseIterable {
        case OK = "ok"
        case NG = "ng"
        case NetworkError = "ne"
        case Dropped = "dp"
    }
}
