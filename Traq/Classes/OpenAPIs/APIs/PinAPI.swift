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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createPin(messageId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: MessagePin?, _ error: Error?) -> Void)) -> RequestTask {
        return createPinWithRequestBuilder(messageId: messageId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ピン留めする
     - POST /messages/{messageId}/pin
     - 指定したメッセージをピン留めします。 アーカイブされているチャンネルのメッセージ・存在しないメッセージ・チャンネル当たりの上限数を超えたメッセージのピン留めはできません。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessagePin>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     チャンネルピンのリストを取得
     
     - parameter channelId: (path) チャンネルUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getChannelPins(channelId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: [Pin]?, _ error: Error?) -> Void)) -> RequestTask {
        return getChannelPinsWithRequestBuilder(channelId: channelId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     チャンネルピンのリストを取得
     - GET /channels/{channelId}/pins
     - 指定したチャンネルにピン留めされているピンメッセージのリストを取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Pin]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ピン留めを取得
     
     - parameter messageId: (path) メッセージUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPin(messageId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: MessagePin?, _ error: Error?) -> Void)) -> RequestTask {
        return getPinWithRequestBuilder(messageId: messageId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ピン留めを取得
     - GET /messages/{messageId}/pin
     - 指定したメッセージのピン留め情報を取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessagePin>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ピン留めを外す
     
     - parameter messageId: (path) メッセージUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removePin(messageId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return removePinWithRequestBuilder(messageId: messageId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ピン留めを外す
     - DELETE /messages/{messageId}/pin
     - 指定したメッセージのピン留めを外します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
}