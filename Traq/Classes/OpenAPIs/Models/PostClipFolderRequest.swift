//
// PostClipFolderRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PostClipFolderRequest")
public typealias PostClipFolderRequest = TraqAPI.PostClipFolderRequest

public extension TraqAPI {
    /** クリップフォルダ作成リクエスト */
    struct PostClipFolderRequest: Codable, JSONEncodable, Hashable {
        /** フォルダ名 */
        public var name: String
        /** 説明 */
        public var description: String

        public init(name: String, description: String) {
            self.name = name
            self.description = description
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case description
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(name, forKey: .name)
            try container.encode(description, forKey: .description)
        }
    }
}
