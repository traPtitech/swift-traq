//
// StarAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class StarAPI {
        /**
         チャンネルをスターに追加

         - parameter postStarRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func addMyStar(postStarRequest: PostStarRequest? = nil) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = addMyStarWithRequestBuilder(postStarRequest: postStarRequest).execute { result in
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
         チャンネルをスターに追加
         - POST /users/me/stars
         - 指定したチャンネルをスターチャンネルに追加します。 スター済みのチャンネルIDを指定した場合、204を返します。 不正なチャンネルIDを指定した場合、400を返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter postStarRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func addMyStarWithRequestBuilder(postStarRequest: PostStarRequest? = nil) -> RequestBuilder<Void> {
            let localVariablePath = "/users/me/stars"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postStarRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         スターチャンネルリストを取得

         - returns: [UUID]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getMyStars() async throws -> [UUID] {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getMyStarsWithRequestBuilder().execute { result in
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
         スターチャンネルリストを取得
         - GET /users/me/stars
         - 自分がスターしているチャンネルのUUIDの配列を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - returns: RequestBuilder<[UUID]>
         */
        open class func getMyStarsWithRequestBuilder() -> RequestBuilder<[UUID]> {
            let localVariablePath = "/users/me/stars"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[UUID]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         チャンネルをスターから削除します

         - parameter channelId: (path) チャンネルUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func removeMyStar(channelId: UUID) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = removeMyStarWithRequestBuilder(channelId: channelId).execute { result in
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
         チャンネルをスターから削除します
         - DELETE /users/me/stars/{channelId}
         - 既にスターから削除されているチャンネルを指定した場合は204を返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter channelId: (path) チャンネルUUID
         - returns: RequestBuilder<Void>
         */
        open class func removeMyStarWithRequestBuilder(channelId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/users/me/stars/{channelId}"
            let channelIdPreEscape = "\(APIHelper.mapValueToPathItem(channelId))"
            let channelIdPostEscape = channelIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{channelId}", with: channelIdPostEscape, options: .literal, range: nil)
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
