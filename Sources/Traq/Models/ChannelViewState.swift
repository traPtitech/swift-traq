//
// ChannelViewState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.ChannelViewState")
public typealias ChannelViewState = TraqAPI.ChannelViewState

public extension TraqAPI {
    /** 閲覧状態 */
    enum ChannelViewState: String, Codable, CaseIterable {
        case _none = "none"
        case monitoring
        case editing
    }
}
