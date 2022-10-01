//
// Stamp.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.Stamp")
public typealias Stamp = TraqAPI.Stamp

public extension TraqAPI {
    /** スタンプ情報 */
    struct Stamp: Codable, JSONEncodable, Hashable {
        /** スタンプUUID */
        public var id: UUID
        /** スタンプ名 */
        public var name: String
        /** 作成者UUID */
        public var creatorId: UUID
        /** 作成日時 */
        public var createdAt: Date
        /** 更新日時 */
        public var updatedAt: Date
        /** ファイルUUID */
        public var fileId: UUID
        /** Unicode絵文字か */
        public var isUnicode: Bool

        public init(id: UUID, name: String, creatorId: UUID, createdAt: Date, updatedAt: Date, fileId: UUID, isUnicode: Bool) {
            self.id = id
            self.name = name
            self.creatorId = creatorId
            self.createdAt = createdAt
            self.updatedAt = updatedAt
            self.fileId = fileId
            self.isUnicode = isUnicode
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case creatorId
            case createdAt
            case updatedAt
            case fileId
            case isUnicode
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(name, forKey: .name)
            try container.encode(creatorId, forKey: .creatorId)
            try container.encode(createdAt, forKey: .createdAt)
            try container.encode(updatedAt, forKey: .updatedAt)
            try container.encode(fileId, forKey: .fileId)
            try container.encode(isUnicode, forKey: .isUnicode)
        }
    }
}