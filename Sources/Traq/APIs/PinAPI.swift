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
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = createPinWithRequestBuilder(messageId: messageId).execute { result in
                        switch result {
                        case let .success(response):
                            continuation.resume(returning: response.body)
                        case let .failure(error):
                            continuation.resume(throwing: error)
                        }
                    }
                }
            } onCancel: { [requestTask] in
                requestTask?.cancel()
            }
        }

        /**
         ピン留めする

         - parameter messageId: (path) メッセージUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func createPin(messageId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<MessagePin, ErrorResponse>) -> Void)) -> RequestTask {
            return createPinWithRequestBuilder(messageId: messageId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
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

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<MessagePin>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         チャンネルピンのリストを取得

         - parameter channelId: (path) チャンネルUUID
         - returns: [Pin]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getChannelPins(channelId: UUID) async throws -> [Pin] {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getChannelPinsWithRequestBuilder(channelId: channelId).execute { result in
                        switch result {
                        case let .success(response):
                            continuation.resume(returning: response.body)
                        case let .failure(error):
                            continuation.resume(throwing: error)
                        }
                    }
                }
            } onCancel: { [requestTask] in
                requestTask?.cancel()
            }
        }

        /**
         チャンネルピンのリストを取得

         - parameter channelId: (path) チャンネルUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getChannelPins(channelId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[Pin], ErrorResponse>) -> Void)) -> RequestTask {
            return getChannelPinsWithRequestBuilder(channelId: channelId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
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

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[Pin]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         ピン留めを取得

         - parameter messageId: (path) メッセージUUID
         - returns: MessagePin
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getPin(messageId: UUID) async throws -> MessagePin {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getPinWithRequestBuilder(messageId: messageId).execute { result in
                        switch result {
                        case let .success(response):
                            continuation.resume(returning: response.body)
                        case let .failure(error):
                            continuation.resume(throwing: error)
                        }
                    }
                }
            } onCancel: { [requestTask] in
                requestTask?.cancel()
            }
        }

        /**
         ピン留めを取得

         - parameter messageId: (path) メッセージUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getPin(messageId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<MessagePin, ErrorResponse>) -> Void)) -> RequestTask {
            return getPinWithRequestBuilder(messageId: messageId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
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

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<MessagePin>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         ピン留めを外す

         - parameter messageId: (path) メッセージUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func removePin(messageId: UUID) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = removePinWithRequestBuilder(messageId: messageId).execute { result in
                        switch result {
                        case .success:
                            continuation.resume(returning: ())
                        case let .failure(error):
                            continuation.resume(throwing: error)
                        }
                    }
                }
            } onCancel: { [requestTask] in
                requestTask?.cancel()
            }
        }

        /**
         ピン留めを外す

         - parameter messageId: (path) メッセージUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func removePin(messageId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
            return removePinWithRequestBuilder(messageId: messageId).execute(apiResponseQueue) { result in
                switch result {
                case .success:
                    completion(.success(()))
                case let .failure(error):
                    completion(.failure(error))
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

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }
    }
}