//
// PublicAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class PublicAPI {
        /**
         ユーザーのアイコン画像を取得

         - parameter username: (path) ユーザー名
         - returns: URL
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getPublicUserIcon(username: String) async throws -> URL {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getPublicUserIconWithRequestBuilder(username: username).execute { result in
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
         ユーザーのアイコン画像を取得

         - parameter username: (path) ユーザー名
         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getPublicUserIcon(username: String, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, ErrorResponse>) -> Void)) -> RequestTask {
            return getPublicUserIconWithRequestBuilder(username: username).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         ユーザーのアイコン画像を取得
         - GET /public/icon/{username}
         - ユーザーのアイコン画像を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter username: (path) ユーザー名
         - returns: RequestBuilder<URL>
         */
        open class func getPublicUserIconWithRequestBuilder(username: String) -> RequestBuilder<URL> {
            var localVariablePath = "/public/icon/{username}"
            let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
            let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<URL>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         バージョンを取得

         - returns: Version
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getServerVersion() async throws -> Version {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getServerVersionWithRequestBuilder().execute { result in
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
         バージョンを取得

         - parameter apiResponseQueue: The queue on which api response is dispatched.
         - parameter completion: completion handler to receive the result
         */
        @discardableResult
        open class func getServerVersion(apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Version, ErrorResponse>) -> Void)) -> RequestTask {
            return getServerVersionWithRequestBuilder().execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(.success(response.body))
                case let .failure(error):
                    completion(.failure(error))
                }
            }
        }

        /**
         バージョンを取得
         - GET /version
         - サーバーバージョン及びサーバーフラグ情報を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - returns: RequestBuilder<Version>
         */
        open class func getServerVersionWithRequestBuilder() -> RequestBuilder<Version> {
            let localVariablePath = "/version"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Version>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }
    }
}
