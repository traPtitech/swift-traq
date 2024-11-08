//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class UserAPI {
        /**
         ユーザーにタグを追加

         - parameter userId: (path) ユーザーUUID
         - parameter postUserTagRequest: (body)  (optional)
         - returns: UserTag
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func addUserTag(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil) async throws -> UserTag {
            try await addUserTagWithRequestBuilder(userId: userId, postUserTagRequest: postUserTagRequest).execute().body
        }

        /**
         ユーザーにタグを追加
         - POST /users/{userId}/tags
         - 指定したユーザーに指定したタグを追加します。 Webhookユーザーにタグを追加することは出来ません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter postUserTagRequest: (body)  (optional)
         - returns: RequestBuilder<UserTag>
         */
        open class func addUserTagWithRequestBuilder(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil) -> RequestBuilder<UserTag> {
            var localVariablePath = "/users/{userId}/tags"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postUserTagRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<UserTag>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのアイコン画像を変更します

         - parameter userId: (path) ユーザーUUID
         - parameter file: (form) アイコン画像(2MBまでのpng, jpeg, gif)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func changeUserIcon(userId: UUID, file: URL) async throws {
            try await changeUserIconWithRequestBuilder(userId: userId, file: file).execute().body
        }

        /**
         ユーザーのアイコン画像を変更します
         - PUT /users/{userId}/icon
         - 指定したユーザーのアイコン画像を変更します。 管理者権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter file: (form) アイコン画像(2MBまでのpng, jpeg, gif)
         - returns: RequestBuilder<Void>
         */
        open class func changeUserIconWithRequestBuilder(userId: UUID, file: URL) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}/icon"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
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

            return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのパスワードを変更

         - parameter userId: (path) ユーザーUUID
         - parameter putUserPasswordRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func changeUserPassword(userId: UUID, putUserPasswordRequest: PutUserPasswordRequest? = nil) async throws {
            try await changeUserPasswordWithRequestBuilder(userId: userId, putUserPasswordRequest: putUserPasswordRequest).execute().body
        }

        /**
         ユーザーのパスワードを変更
         - PUT /users/{userId}/password
         - 指定したユーザーのパスワードを変更します。 管理者権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter putUserPasswordRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func changeUserPasswordWithRequestBuilder(userId: UUID, putUserPasswordRequest: PutUserPasswordRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}/password"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: putUserPasswordRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーを登録

         - parameter postUserRequest: (body)  (optional)
         - returns: UserDetail
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func createUser(postUserRequest: PostUserRequest? = nil) async throws -> UserDetail {
            try await createUserWithRequestBuilder(postUserRequest: postUserRequest).execute().body
        }

        /**
         ユーザーを登録
         - POST /users
         - ユーザーを登録します。 管理者権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter postUserRequest: (body)  (optional)
         - returns: RequestBuilder<UserDetail>
         */
        open class func createUserWithRequestBuilder(postUserRequest: PostUserRequest? = nil) -> RequestBuilder<UserDetail> {
            let localVariablePath = "/users"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postUserRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<UserDetail>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザー情報を変更

         - parameter userId: (path) ユーザーUUID
         - parameter patchUserRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func editUser(userId: UUID, patchUserRequest: PatchUserRequest? = nil) async throws {
            try await editUserWithRequestBuilder(userId: userId, patchUserRequest: patchUserRequest).execute().body
        }

        /**
         ユーザー情報を変更
         - PATCH /users/{userId}
         - 指定したユーザーの情報を変更します。 管理者権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter patchUserRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func editUserWithRequestBuilder(userId: UUID, patchUserRequest: PatchUserRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchUserRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのタグを編集

         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - parameter patchUserTagRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func editUserTag(userId: UUID, tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil) async throws {
            try await editUserTagWithRequestBuilder(userId: userId, tagId: tagId, patchUserTagRequest: patchUserTagRequest).execute().body
        }

        /**
         ユーザーのタグを編集
         - PATCH /users/{userId}/tags/{tagId}
         - 指定したユーザーの指定したタグの状態を変更します。 他人の状態は変更できません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - parameter patchUserTagRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func editUserTagWithRequestBuilder(userId: UUID, tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}/tags/{tagId}"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchUserTagRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         * enum for parameter order
         */
        public enum Order_getDirectMessages_0: String, CaseIterable {
            case asc
            case desc
        }

        /**
         ダイレクトメッセージのリストを取得

         - parameter userId: (path) ユーザーUUID
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - returns: [Message]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getDirectMessages_0(userId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getDirectMessages_0? = nil) async throws -> [Message] {
            try await getDirectMessages_0WithRequestBuilder(userId: userId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order).execute().body
        }

        /**
         ダイレクトメッセージのリストを取得
         - GET /users/{userId}/messages
         - 指定したユーザーとのダイレクトメッセージのリストを取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - responseHeaders: [X-TRAQ-MORE(Bool)]
         - parameter userId: (path) ユーザーUUID
         - parameter limit: (query) 取得する件数 (optional)
         - parameter offset: (query) 取得するオフセット (optional, default to 0)
         - parameter since: (query) 取得する時間範囲の開始日時 (optional, default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
         - parameter until: (query) 取得する時間範囲の終了日時 (optional)
         - parameter inclusive: (query) 範囲の端を含めるかどうか (optional, default to false)
         - parameter order: (query) 昇順か降順か (optional, default to .desc)
         - returns: RequestBuilder<[Message]>
         */
        open class func getDirectMessages_0WithRequestBuilder(userId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getDirectMessages_0? = nil) -> RequestBuilder<[Message]> {
            var localVariablePath = "/users/{userId}/messages"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
                "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
                "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
                "until": (wrappedValue: until?.encodeToJSON(), isExplode: true),
                "inclusive": (wrappedValue: inclusive?.encodeToJSON(), isExplode: true),
                "order": (wrappedValue: order?.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[Message]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザー詳細情報を取得

         - parameter userId: (path) ユーザーUUID
         - returns: UserDetail
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUser(userId: UUID) async throws -> UserDetail {
            try await getUserWithRequestBuilder(userId: userId).execute().body
        }

        /**
         ユーザー詳細情報を取得
         - GET /users/{userId}
         - 指定したユーザーの詳細情報を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - returns: RequestBuilder<UserDetail>
         */
        open class func getUserWithRequestBuilder(userId: UUID) -> RequestBuilder<UserDetail> {
            var localVariablePath = "/users/{userId}"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<UserDetail>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         DMチャンネル情報を取得

         - parameter userId: (path)
         - returns: DMChannel
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUserDMChannel(userId: UUID) async throws -> DMChannel {
            try await getUserDMChannelWithRequestBuilder(userId: userId).execute().body
        }

        /**
         DMチャンネル情報を取得
         - GET /users/{userId}/dm-channel
         - 指定したユーザーとのダイレクトメッセージチャンネルの情報を返します。 ダイレクトメッセージチャンネルが存在しなかった場合、自動的に作成されます。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path)
         - returns: RequestBuilder<DMChannel>
         */
        open class func getUserDMChannelWithRequestBuilder(userId: UUID) -> RequestBuilder<DMChannel> {
            var localVariablePath = "/users/{userId}/dm-channel"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<DMChannel>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのアイコン画像を取得

         - parameter userId: (path) ユーザーUUID
         - returns: URL
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUserIcon(userId: UUID) async throws -> URL {
            try await getUserIconWithRequestBuilder(userId: userId).execute().body
        }

        /**
         ユーザーのアイコン画像を取得
         - GET /users/{userId}/icon
         - 指定したユーザーのアイコン画像を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - returns: RequestBuilder<URL>
         */
        open class func getUserIconWithRequestBuilder(userId: UUID) -> RequestBuilder<URL> {
            var localVariablePath = "/users/{userId}/icon"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<URL>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザー統計情報を取得

         - parameter userId: (path) ユーザーUUID
         - returns: UserStats
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUserStats(userId: UUID) async throws -> UserStats {
            try await getUserStatsWithRequestBuilder(userId: userId).execute().body
        }

        /**
         ユーザー統計情報を取得
         - GET /users/{userId}/stats
         - 指定したユーザーの統計情報を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - returns: RequestBuilder<UserStats>
         */
        open class func getUserStatsWithRequestBuilder(userId: UUID) -> RequestBuilder<UserStats> {
            var localVariablePath = "/users/{userId}/stats"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<UserStats>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのタグリストを取得

         - parameter userId: (path) ユーザーUUID
         - returns: [UserTag]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUserTags(userId: UUID) async throws -> [UserTag] {
            try await getUserTagsWithRequestBuilder(userId: userId).execute().body
        }

        /**
         ユーザーのタグリストを取得
         - GET /users/{userId}/tags
         - 指定したユーザーのタグリストを取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - returns: RequestBuilder<[UserTag]>
         */
        open class func getUserTagsWithRequestBuilder(userId: UUID) -> RequestBuilder<[UserTag]> {
            var localVariablePath = "/users/{userId}/tags"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[UserTag]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのリストを取得

         - parameter includeSuspended: (query) アカウントがアクティブでないユーザーを含め、全てのユーザーを取得するかどうか (optional, default to false)
         - parameter name: (query) 名前が一致するアカウントのみを取得する (optional)
         - returns: [User]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUsers(includeSuspended: Bool? = nil, name: String? = nil) async throws -> [User] {
            try await getUsersWithRequestBuilder(includeSuspended: includeSuspended, name: name).execute().body
        }

        /**
         ユーザーのリストを取得
         - GET /users
         - ユーザーのリストを取得します。 `include-suspended`を指定しない場合、レスポンスにはユーザーアカウント状態が\"1: 有効\"であるユーザーのみが含まれます。 `include-suspended`と`name`を同時に指定することはできません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter includeSuspended: (query) アカウントがアクティブでないユーザーを含め、全てのユーザーを取得するかどうか (optional, default to false)
         - parameter name: (query) 名前が一致するアカウントのみを取得する (optional)
         - returns: RequestBuilder<[User]>
         */
        open class func getUsersWithRequestBuilder(includeSuspended: Bool? = nil, name: String? = nil) -> RequestBuilder<[User]> {
            let localVariablePath = "/users"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "include-suspended": (wrappedValue: includeSuspended?.encodeToJSON(), isExplode: true),
                "name": (wrappedValue: name?.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[User]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ダイレクトメッセージを送信

         - parameter userId: (path) ユーザーUUID
         - parameter postMessageRequest: (body)  (optional)
         - returns: Message
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func postDirectMessage_0(userId: UUID, postMessageRequest: PostMessageRequest? = nil) async throws -> Message {
            try await postDirectMessage_0WithRequestBuilder(userId: userId, postMessageRequest: postMessageRequest).execute().body
        }

        /**
         ダイレクトメッセージを送信
         - POST /users/{userId}/messages
         - 指定したユーザーにダイレクトメッセージを送信します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter postMessageRequest: (body)  (optional)
         - returns: RequestBuilder<Message>
         */
        open class func postDirectMessage_0WithRequestBuilder(userId: UUID, postMessageRequest: PostMessageRequest? = nil) -> RequestBuilder<Message> {
            var localVariablePath = "/users/{userId}/messages"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postMessageRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Message>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーからタグを削除します

         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func removeUserTag(userId: UUID, tagId: UUID) async throws {
            try await removeUserTagWithRequestBuilder(userId: userId, tagId: tagId).execute().body
        }

        /**
         ユーザーからタグを削除します
         - DELETE /users/{userId}/tags/{tagId}
         - 既に存在しないタグを削除しようとした場合は204を返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - returns: RequestBuilder<Void>
         */
        open class func removeUserTagWithRequestBuilder(userId: UUID, tagId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}/tags/{tagId}"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
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
