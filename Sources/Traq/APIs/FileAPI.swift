//
// FileAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class FileAPI {
        /**
         ファイルを削除

         - parameter fileId: (path) ファイルUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func deleteFile(fileId: UUID) async throws {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = deleteFileWithRequestBuilder(fileId: fileId).execute { result in
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
         ファイルを削除
         - DELETE /files/{fileId}
         - 指定したファイルを削除します。 指定したファイルの削除権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter fileId: (path) ファイルUUID
         - returns: RequestBuilder<Void>
         */
        open class func deleteFileWithRequestBuilder(fileId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/files/{fileId}"
            let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
            let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         ファイルをダウンロード

         - parameter fileId: (path) ファイルUUID
         - parameter dl: (query) 1を指定するとレスポンスにContent-Dispositionヘッダーが付与されます (optional)
         - returns: URL
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getFile(fileId: UUID, dl: Int? = nil) async throws -> URL {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getFileWithRequestBuilder(fileId: fileId, dl: dl).execute { result in
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
         ファイルをダウンロード
         - GET /files/{fileId}
         - 指定したファイル本体を取得します。 指定したファイルへのアクセス権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - responseHeaders: [Content-Disposition(String)]
         - parameter fileId: (path) ファイルUUID
         - parameter dl: (query) 1を指定するとレスポンスにContent-Dispositionヘッダーが付与されます (optional)
         - returns: RequestBuilder<URL>
         */
        open class func getFileWithRequestBuilder(fileId: UUID, dl: Int? = nil) -> RequestBuilder<URL> {
            var localVariablePath = "/files/{fileId}"
            let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
            let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "dl": dl?.encodeToJSON(),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<URL>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         ファイルメタを取得

         - parameter fileId: (path) ファイルUUID
         - returns: FileInfo
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getFileMeta(fileId: UUID) async throws -> FileInfo {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getFileMetaWithRequestBuilder(fileId: fileId).execute { result in
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
         ファイルメタを取得
         - GET /files/{fileId}/meta
         - 指定したファイルのメタ情報を取得します。 指定したファイルへのアクセス権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter fileId: (path) ファイルUUID
         - returns: RequestBuilder<FileInfo>
         */
        open class func getFileMetaWithRequestBuilder(fileId: UUID) -> RequestBuilder<FileInfo> {
            var localVariablePath = "/files/{fileId}/meta"
            let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
            let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<FileInfo>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         * enum for parameter order
         */
        public enum Order_getFiles: String, CaseIterable {
            case asc
            case desc
        }

        /**
         ファイルメタのリストを取得

         - parameter channelId: (query) アップロード先チャンネルUUID (optional)
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - parameter mine: (query) アップロード者が自分のファイルのみを取得するか (optional, default to false)
         - returns: [FileInfo]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getFiles(channelId: UUID? = nil, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getFiles? = nil, mine: Bool? = nil) async throws -> [FileInfo] {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getFilesWithRequestBuilder(channelId: channelId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order, mine: mine).execute { result in
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
         ファイルメタのリストを取得
         - GET /files
         - 指定したクエリでファイルメタのリストを取得します。 クエリパラメータ`channelId`, `mine`の少なくともいずれかが必須です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - responseHeaders: [X-TRAQ-MORE(Bool)]
         - parameter channelId: (query) アップロード先チャンネルUUID (optional)
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - parameter mine: (query) アップロード者が自分のファイルのみを取得するか (optional, default to false)
         - returns: RequestBuilder<[FileInfo]>
         */
        open class func getFilesWithRequestBuilder(channelId: UUID? = nil, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getFiles? = nil, mine: Bool? = nil) -> RequestBuilder<[FileInfo]> {
            let localVariablePath = "/files"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "channelId": channelId?.encodeToJSON(),
                "limit": limit?.encodeToJSON(),
                "offset": offset?.encodeToJSON(),
                "since": since?.encodeToJSON(),
                "until": until?.encodeToJSON(),
                "inclusive": inclusive?.encodeToJSON(),
                "order": order?.encodeToJSON(),
                "mine": mine?.encodeToJSON(),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[FileInfo]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         サムネイル画像を取得

         - parameter fileId: (path) ファイルUUID
         - parameter type: (query) 取得するサムネイルのタイプ (optional)
         - returns: URL
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getThumbnailImage(fileId: UUID, type: ThumbnailType? = nil) async throws -> URL {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = getThumbnailImageWithRequestBuilder(fileId: fileId, type: type).execute { result in
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
         サムネイル画像を取得
         - GET /files/{fileId}/thumbnail
         - 指定したファイルのサムネイル画像を取得します。 指定したファイルへのアクセス権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter fileId: (path) ファイルUUID
         - parameter type: (query) 取得するサムネイルのタイプ (optional)
         - returns: RequestBuilder<URL>
         */
        open class func getThumbnailImageWithRequestBuilder(fileId: UUID, type: ThumbnailType? = nil) -> RequestBuilder<URL> {
            var localVariablePath = "/files/{fileId}/thumbnail"
            let fileIdPreEscape = "\(APIHelper.mapValueToPathItem(fileId))"
            let fileIdPostEscape = fileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{fileId}", with: fileIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "type": type?.encodeToJSON(),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<URL>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }

        /**
         ファイルをアップロード

         - parameter file: (form) ファイル本体
         - parameter channelId: (form) アップロード先チャンネルUUID
         - returns: FileInfo
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func postFile(file: URL, channelId: UUID) async throws -> FileInfo {
            var requestTask: RequestTask?
            return try await withTaskCancellationHandler {
                try Task.checkCancellation()
                return try await withCheckedThrowingContinuation { continuation in
                    guard !Task.isCancelled else {
                        continuation.resume(throwing: CancellationError())
                        return
                    }

                    requestTask = postFileWithRequestBuilder(file: file, channelId: channelId).execute { result in
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
         ファイルをアップロード
         - POST /files
         - 指定したチャンネルにファイルをアップロードします。 アーカイブされているチャンネルにはアップロード出来ません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - BASIC:
           - type: http
           - name: bearerAuth
         - parameter file: (form) ファイル本体
         - parameter channelId: (form) アップロード先チャンネルUUID
         - returns: RequestBuilder<FileInfo>
         */
        open class func postFileWithRequestBuilder(file: URL, channelId: UUID) -> RequestBuilder<FileInfo> {
            let localVariablePath = "/files"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableFormParams: [String: Any?] = [
                "file": file.encodeToJSON(),
                "channelId": channelId.encodeToJSON(),
            ]

            let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
            let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "multipart/form-data",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<FileInfo>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: localVariableUrlComponents?.string ?? localVariableURLString, parameters: localVariableParameters, headers: localVariableHeaderParameters)
        }
    }
}
