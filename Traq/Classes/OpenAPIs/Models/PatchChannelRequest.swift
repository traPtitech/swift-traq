//
// PatchChannelRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchChannelRequest")
public typealias PatchChannelRequest = TraqAPI.PatchChannelRequest

extension TraqAPI {

/** チャンネル情報変更リクエスト */
public struct PatchChannelRequest: Codable, JSONEncodable, Hashable {

    /** チャンネル名 */
    public var name: String?
    /** アーカイブされているかどうか */
    public var archived: Bool?
    /** 強制通知チャンネルかどうか */
    public var force: Bool?
    /** 親チャンネルUUID */
    public var parent: UUID?

    public init(name: String? = nil, archived: Bool? = nil, force: Bool? = nil, parent: UUID? = nil) {
        self.name = name
        self.archived = archived
        self.force = force
        self.parent = parent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case archived
        case force
        case parent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(archived, forKey: .archived)
        try container.encodeIfPresent(force, forKey: .force)
        try container.encodeIfPresent(parent, forKey: .parent)
    }
}

}