//
// PatchUserTagRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchUserTagRequest")
public typealias PatchUserTagRequest = TraqAPI.PatchUserTagRequest

extension TraqAPI {

/** ユーザーのタグの編集リクエスト */
public struct PatchUserTagRequest: Codable, JSONEncodable, Hashable {

    /** タグのロック状態 */
    public var isLocked: Bool

    public init(isLocked: Bool) {
        self.isLocked = isLocked
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isLocked
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isLocked, forKey: .isLocked)
    }
}

}