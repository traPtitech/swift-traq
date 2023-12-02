//
// PinAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class PinAPI {
        /**
         ピン留めする

         - parameter messageId: (path) メッセージUUID
         - returns: MessagePin
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func createPin(messageId: UUID) async throws -> MessagePin {
            try await createPinWithRequestBuilder(messageId: messageId).execute().body
        }

        /**
         ピン留めする
         - POST /messages/{messageId}/pin
         - 指定したメッセージをピン留めします。 アーカイブされているチャンネルのメッセージ・存在しないメッセージ・チャンネル当たりの上限数を超えたメッセージのピン留めはできません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter messageId: (path) メッセージUUID
         - returns: RequestBuilder<MessagePin>
         */
        open class func createPinWithRequestBuilder(messageId: UUID) -> RequestBuilder<MessagePin> {
            var localVariablePath = "/messages/{messageId}/pin"
            let messageIdPreEscape = "\(APIHelper.mapValueToPathItem(messageId))"
            let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{messageId}", with: messageIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<MessagePin>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         チャンネルピンのリストを取得

         - parameter channelId: (path) チャンネルUUID
         - returns: [Pin]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getChannelPins(channelId: UUID) async throws -> [Pin] {
            try await getChannelPinsWithRequestBuilder(channelId: channelId).execute().body
        }

        /**
         チャンネルピンのリストを取得
         - GET /channels/{channelId}/pins
         - 指定したチャンネルにピン留めされているピンメッセージのリストを取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter channelId: (path) チャンネルUUID
         - returns: RequestBuilder<[Pin]>
         */
        open class func getChannelPinsWithRequestBuilder(channelId: UUID) -> RequestBuilder<[Pin]> {
            var localVariablePath = "/channels/{channelId}/pins"
            let channelIdPreEscape = "\(APIHelper.mapValueToPathItem(channelId))"
            let channelIdPostEscape = channelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{channelId}", with: channelIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[Pin]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ピン留めを取得

         - parameter messageId: (path) メッセージUUID
         - returns: MessagePin
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getPin(messageId: UUID) async throws -> MessagePin {
            try await getPinWithRequestBuilder(messageId: messageId).execute().body
        }

        /**
         ピン留めを取得
         - GET /messages/{messageId}/pin
         - 指定したメッセージのピン留め情報を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter messageId: (path) メッセージUUID
         - returns: RequestBuilder<MessagePin>
         */
        open class func getPinWithRequestBuilder(messageId: UUID) -> RequestBuilder<MessagePin> {
            var localVariablePath = "/messages/{messageId}/pin"
            let messageIdPreEscape = "\(APIHelper.mapValueToPathItem(messageId))"
            let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{messageId}", with: messageIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<MessagePin>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ピン留めを外す

         - parameter messageId: (path) メッセージUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func removePin(messageId: UUID) async throws {
            try await removePinWithRequestBuilder(messageId: messageId).execute().body
        }

        /**
         ピン留めを外す
         - DELETE /messages/{messageId}/pin
         - 指定したメッセージのピン留めを外します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter messageId: (path) メッセージUUID
         - returns: RequestBuilder<Void>
         */
        open class func removePinWithRequestBuilder(messageId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/messages/{messageId}/pin"
            let messageIdPreEscape = "\(APIHelper.mapValueToPathItem(messageId))"
            let messageIdPostEscape = messageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{messageId}", with: messageIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }
    }
}
