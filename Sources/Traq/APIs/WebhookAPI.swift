//
// WebhookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class WebhookAPI {
        /**
         Webhookのアイコンを変更

         - parameter webhookId: (path) WebhookUUID
         - parameter file: (form) アイコン画像(1MBまでのpng, jpeg, gif)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func changeWebhookIcon(webhookId: UUID, file: URL) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = changeWebhookIconWithRequestBuilder(webhookId: webhookId, file: file).execute { result in
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
         Webhookのアイコンを変更

         - parameter webhookId: (path) WebhookUUID
         - parameter file: (form) アイコン画像(1MBまでのpng, jpeg, gif)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func changeWebhookIcon(webhookId: UUID, file: URL, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
            return changeWebhookIconWithRequestBuilder(webhookId: webhookId, file: file).execute(apiResponseQueue) { result in
                switch result {
                case .success:
                    completion(.success(()))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhookのアイコンを変更
         - PUT /webhooks/{webhookId}/icon
         - 指定したWebhookのアイコン画像を変更します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter webhookId: (path) WebhookUUID
         - parameter file: (form) アイコン画像(1MBまでのpng, jpeg, gif)
         - returns: RequestBuilder<Void>
         */
        open class func changeWebhookIconWithRequestBuilder(webhookId: UUID, file: URL) -> RequestBuilder<Void> {
            var localVariablePath = "/webhooks/{webhookId}/icon"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableFormParams: [String: Any?] = [
                "file": file.encodeToJSON(),
            ]

            let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
            let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "multipart/form-data",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PUT", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhookを新規作成

         - parameter postWebhookRequest: (body)  (optional)
         - returns: Webhook
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func createWebhook(postWebhookRequest: PostWebhookRequest? = nil) async throws -> Webhook {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = createWebhookWithRequestBuilder(postWebhookRequest: postWebhookRequest).execute { result in
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
         Webhookを新規作成

         - parameter postWebhookRequest: (body)  (optional)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func createWebhook(postWebhookRequest: PostWebhookRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Webhook, ErrorResponse>) -> Void)) -> RequestTask {
            return createWebhookWithRequestBuilder(postWebhookRequest: postWebhookRequest).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhookを新規作成
         - POST /webhooks
         - Webhookを新規作成します。 `secret`が空文字の場合、insecureウェブフックが作成されます。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter postWebhookRequest: (body)  (optional)
         - returns: RequestBuilder<Webhook>
         */
        open class func createWebhookWithRequestBuilder(postWebhookRequest: PostWebhookRequest? = nil) -> RequestBuilder<Webhook> {
            let localVariablePath = "/webhooks"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postWebhookRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Webhook>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhookを削除

         - parameter webhookId: (path) WebhookUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func deleteWebhook(webhookId: UUID) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = deleteWebhookWithRequestBuilder(webhookId: webhookId).execute { result in
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
         Webhookを削除

         - parameter webhookId: (path) WebhookUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func deleteWebhook(webhookId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
            return deleteWebhookWithRequestBuilder(webhookId: webhookId).execute(apiResponseQueue) { result in
                switch result {
                case .success:
                    completion(.success(()))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhookを削除
         - DELETE /webhooks/{webhookId}
         - 指定したWebhookを削除します。 Webhookによって投稿されたメッセージは削除されません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter webhookId: (path) WebhookUUID
         - returns: RequestBuilder<Void>
         */
        open class func deleteWebhookWithRequestBuilder(webhookId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/webhooks/{webhookId}"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhook情報を変更

         - parameter webhookId: (path) WebhookUUID
         - parameter patchWebhookRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func editWebhook(webhookId: UUID, patchWebhookRequest: PatchWebhookRequest? = nil) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = editWebhookWithRequestBuilder(webhookId: webhookId, patchWebhookRequest: patchWebhookRequest).execute { result in
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
         Webhook情報を変更

         - parameter webhookId: (path) WebhookUUID
         - parameter patchWebhookRequest: (body)  (optional)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func editWebhook(webhookId: UUID, patchWebhookRequest: PatchWebhookRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
            return editWebhookWithRequestBuilder(webhookId: webhookId, patchWebhookRequest: patchWebhookRequest).execute(apiResponseQueue) { result in
                switch result {
                case .success:
                    completion(.success(()))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhook情報を変更
         - PATCH /webhooks/{webhookId}
         - 指定したWebhookの情報を変更します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter webhookId: (path) WebhookUUID
         - parameter patchWebhookRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func editWebhookWithRequestBuilder(webhookId: UUID, patchWebhookRequest: PatchWebhookRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/webhooks/{webhookId}"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchWebhookRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PATCH", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhook情報を取得

         - parameter webhookId: (path) WebhookUUID
         - returns: Webhook
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getWebhook(webhookId: UUID) async throws -> Webhook {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getWebhookWithRequestBuilder(webhookId: webhookId).execute { result in
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
         Webhook情報を取得

         - parameter webhookId: (path) WebhookUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getWebhook(webhookId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Webhook, ErrorResponse>) -> Void)) -> RequestTask {
            return getWebhookWithRequestBuilder(webhookId: webhookId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhook情報を取得
         - GET /webhooks/{webhookId}
         - 指定したWebhookの詳細を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter webhookId: (path) WebhookUUID
         - returns: RequestBuilder<Webhook>
         */
        open class func getWebhookWithRequestBuilder(webhookId: UUID) -> RequestBuilder<Webhook> {
            var localVariablePath = "/webhooks/{webhookId}"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Webhook>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhookのアイコンを取得

         - parameter webhookId: (path) WebhookUUID
         - returns: URL
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getWebhookIcon(webhookId: UUID) async throws -> URL {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getWebhookIconWithRequestBuilder(webhookId: webhookId).execute { result in
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
         Webhookのアイコンを取得

         - parameter webhookId: (path) WebhookUUID
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getWebhookIcon(webhookId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, ErrorResponse>) -> Void)) -> RequestTask {
            return getWebhookIconWithRequestBuilder(webhookId: webhookId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhookのアイコンを取得
         - GET /webhooks/{webhookId}/icon
         - 指定したWebhookのアイコン画像を取得します
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter webhookId: (path) WebhookUUID
         - returns: RequestBuilder<URL>
         */
        open class func getWebhookIconWithRequestBuilder(webhookId: UUID) -> RequestBuilder<URL> {
            var localVariablePath = "/webhooks/{webhookId}/icon"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<URL>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         * enum for parameter order
         */
        public enum Order_getWebhookMessages: String, CaseIterable {
            case asc
            case desc
        }

        /**
         Webhookの投稿メッセージのリストを取得

         - parameter webhookId: (path) WebhookUUID
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - returns: [Message]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getWebhookMessages(webhookId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getWebhookMessages? = nil) async throws -> [Message] {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getWebhookMessagesWithRequestBuilder(webhookId: webhookId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order).execute { result in
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
         Webhookの投稿メッセージのリストを取得

         - parameter webhookId: (path) WebhookUUID
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getWebhookMessages(webhookId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getWebhookMessages? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[Message], ErrorResponse>) -> Void)) -> RequestTask {
            return getWebhookMessagesWithRequestBuilder(webhookId: webhookId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhookの投稿メッセージのリストを取得
         - GET /webhooks/{webhookId}/messages
         - 指定されたWebhookが投稿したメッセージのリストを返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - responseHeaders: [X-TRAQ-MORE(Bool)]
         - parameter webhookId: (path) WebhookUUID
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - returns: RequestBuilder<[Message]>
         */
        open class func getWebhookMessagesWithRequestBuilder(webhookId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getWebhookMessages? = nil) -> RequestBuilder<[Message]> {
            var localVariablePath = "/webhooks/{webhookId}/messages"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "limit": limit?.encodeToJSON(),
                "offset": offset?.encodeToJSON(),
                "since": since?.encodeToJSON(),
                "until": until?.encodeToJSON(),
                "inclusive": inclusive?.encodeToJSON(),
                "order": order?.encodeToJSON(),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[Message]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhook情報のリストを取得します

         - parameter all: (query) 全てのWebhookを取得します。権限が必要です。 (optional, default to false)
         - returns: [Webhook]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getWebhooks(all: Bool? = nil) async throws -> [Webhook] {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getWebhooksWithRequestBuilder(all: all).execute { result in
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
         Webhook情報のリストを取得します

         - parameter all: (query) 全てのWebhookを取得します。権限が必要です。 (optional, default to false)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getWebhooks(all: Bool? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[Webhook], ErrorResponse>) -> Void)) -> RequestTask {
            return getWebhooksWithRequestBuilder(all: all).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhook情報のリストを取得します
         - GET /webhooks
         - Webhookのリストを取得します。 allがtrueで無い場合は、自分がオーナーのWebhookのリストを返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter all: (query) 全てのWebhookを取得します。権限が必要です。 (optional, default to false)
         - returns: RequestBuilder<[Webhook]>
         */
        open class func getWebhooksWithRequestBuilder(all: Bool? = nil) -> RequestBuilder<[Webhook]> {
            let localVariablePath = "/webhooks"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "all": all?.encodeToJSON(),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[Webhook]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         Webhookを送信

         - parameter webhookId: (path) WebhookUUID
         - parameter xTRAQSignature: (header) リクエストボディシグネチャ(Secretが設定されている場合は必須) (optional)
         - parameter xTRAQChannelId: (header) 投稿先のチャンネルID(変更する場合) (optional)
         - parameter embed: (query) メンション・チャンネルリンクを自動埋め込みする場合に1を指定する (optional, default to 0)
         - parameter body: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func postWebhook(webhookId: UUID, xTRAQSignature: String? = nil, xTRAQChannelId: String? = nil, embed: Int? = nil, body: String? = nil) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = postWebhookWithRequestBuilder(webhookId: webhookId, xTRAQSignature: xTRAQSignature, xTRAQChannelId: xTRAQChannelId, embed: embed, body: body).execute { result in
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
         Webhookを送信

         - parameter webhookId: (path) WebhookUUID
         - parameter xTRAQSignature: (header) リクエストボディシグネチャ(Secretが設定されている場合は必須) (optional)
         - parameter xTRAQChannelId: (header) 投稿先のチャンネルID(変更する場合) (optional)
         - parameter embed: (query) メンション・チャンネルリンクを自動埋め込みする場合に1を指定する (optional, default to 0)
         - parameter body: (body)  (optional)
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func postWebhook(webhookId: UUID, xTRAQSignature: String? = nil, xTRAQChannelId: String? = nil, embed: Int? = nil, body: String? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
            return postWebhookWithRequestBuilder(webhookId: webhookId, xTRAQSignature: xTRAQSignature, xTRAQChannelId: xTRAQChannelId, embed: embed, body: body).execute(apiResponseQueue) { result in
                switch result {
                case .success:
                    completion(.success(()))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         Webhookを送信
         - POST /webhooks/{webhookId}
         - Webhookにメッセージを投稿します。 secureなウェブフックに対しては`X-TRAQ-Signature`ヘッダーが必須です。 アーカイブされているチャンネルには投稿できません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter webhookId: (path) WebhookUUID
         - parameter xTRAQSignature: (header) リクエストボディシグネチャ(Secretが設定されている場合は必須) (optional)
         - parameter xTRAQChannelId: (header) 投稿先のチャンネルID(変更する場合) (optional)
         - parameter embed: (query) メンション・チャンネルリンクを自動埋め込みする場合に1を指定する (optional, default to 0)
         - parameter body: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func postWebhookWithRequestBuilder(webhookId: UUID, xTRAQSignature: String? = nil, xTRAQChannelId: String? = nil, embed: Int? = nil, body: String? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/webhooks/{webhookId}"
            let webhookIdPreEscape = "\(APIHelper.mapValueToPathItem(webhookId))"
            let webhookIdPostEscape = webhookIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookId}", with: webhookIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "embed": embed?.encodeToJSON(),
            ])

            let localVariableNillableHeaders: [String: Any?] = [
                "X-TRAQ-Signature": xTRAQSignature?.encodeToJSON(),
                "X-TRAQ-Channel-Id": xTRAQChannelId?.encodeToJSON(),
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }
    }
}