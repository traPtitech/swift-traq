//
// OAuth2Client.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.OAuth2Client")
public typealias OAuth2Client = TraqAPI.OAuth2Client

extension TraqAPI {

/** OAuth2クライアント情報 */
public struct OAuth2Client: Codable, JSONEncodable, Hashable {

    /** クライアントUUID */
    public var id: String
    /** クライアント名 */
    public var name: String
    /** 説明 */
    public var description: String
    /** クライアント開発者UUID */
    public var developerId: UUID
    /** 要求スコープの配列 */
    public var scopes: [OAuth2Scope]

    public init(id: String, name: String, description: String, developerId: UUID, scopes: [OAuth2Scope]) {
        self.id = id
        self.name = name
        self.description = description
        self.developerId = developerId
        self.scopes = scopes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case developerId
        case scopes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(developerId, forKey: .developerId)
        try container.encode(scopes, forKey: .scopes)
    }
}

}