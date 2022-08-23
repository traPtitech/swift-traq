//
// GetBot200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.GetBot200Response")
public typealias GetBot200Response = TraqAPI.GetBot200Response

extension TraqAPI {

public enum GetBot200Response: Codable, JSONEncodable, Hashable {
    case typeBot(Bot)
    case typeBotDetail(BotDetail)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeBot(let value):
            try container.encode(value)
        case .typeBotDetail(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Bot.self) {
            self = .typeBot(value)
        } else if let value = try? container.decode(BotDetail.self) {
            self = .typeBotDetail(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GetBot200Response"))
        }
    }
}

}