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

extension TraqAPI {

/** 閲覧状態 */
public enum ChannelViewState: String, Codable, CaseIterable {
    case _none = "none"
    case monitoring = "monitoring"
    case editing = "editing"
}
}