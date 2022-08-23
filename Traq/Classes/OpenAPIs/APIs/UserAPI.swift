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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func addUserTag(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: UserTag?, _ error: Error?) -> Void)) -> RequestTask {
        return addUserTagWithRequestBuilder(userId: userId, postUserTagRequest: postUserTagRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーにタグを追加
     - POST /users/{userId}/tags
     - 指定したユーザーに指定したタグを追加します。 Webhookユーザーにタグを追加することは出来ません。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserTag>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーのアイコン画像を変更します
     
     - parameter userId: (path) ユーザーUUID 
     - parameter file: (form) アイコン画像(1MBまでのpng, jpeg, gif) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func changeUserIcon(userId: UUID, file: URL, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return changeUserIconWithRequestBuilder(userId: userId, file: file).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーのアイコン画像を変更します
     - PUT /users/{userId}/icon
     - 指定したユーザーのアイコン画像を変更します。 管理者権限が必要です。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter userId: (path) ユーザーUUID 
     - parameter file: (form) アイコン画像(1MBまでのpng, jpeg, gif) 
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

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーのパスワードを変更
     
     - parameter userId: (path) ユーザーUUID 
     - parameter putUserPasswordRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func changeUserPassword(userId: UUID, putUserPasswordRequest: PutUserPasswordRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return changeUserPasswordWithRequestBuilder(userId: userId, putUserPasswordRequest: putUserPasswordRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーのパスワードを変更
     - PUT /users/{userId}/password
     - 指定したユーザーのパスワードを変更します。 管理者権限が必要です。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーを登録
     
     - parameter postUserRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createUser(postUserRequest: PostUserRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: UserDetail?, _ error: Error?) -> Void)) -> RequestTask {
        return createUserWithRequestBuilder(postUserRequest: postUserRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーを登録
     - POST /users
     - ユーザーを登録します。 管理者権限が必要です。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserDetail>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザー情報を変更
     
     - parameter userId: (path) ユーザーUUID 
     - parameter patchUserRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func editUser(userId: UUID, patchUserRequest: PatchUserRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return editUserWithRequestBuilder(userId: userId, patchUserRequest: patchUserRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザー情報を変更
     - PATCH /users/{userId}
     - 指定したユーザーの情報を変更します。 管理者権限が必要です。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーのタグを編集
     
     - parameter userId: (path) ユーザーUUID 
     - parameter tagId: (path) タグUUID 
     - parameter patchUserTagRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func editUserTag(userId: UUID, tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return editUserTagWithRequestBuilder(userId: userId, tagId: tagId, patchUserTagRequest: patchUserTagRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーのタグを編集
     - PATCH /users/{userId}/tags/{tagId}
     - 指定したユーザーの指定したタグの状態を変更します。 他人の状態は変更できません。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter order
     */
    public enum Order_getDirectMessages: String, CaseIterable {
        case asc = "asc"
        case desc = "desc"
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
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getDirectMessages(userId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getDirectMessages? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: [Message]?, _ error: Error?) -> Void)) -> RequestTask {
        return getDirectMessagesWithRequestBuilder(userId: userId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ダイレクトメッセージのリストを取得
     - GET /users/{userId}/messages
     - 指定したユーザーとのダイレクトメッセージのリストを取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
    open class func getDirectMessagesWithRequestBuilder(userId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getDirectMessages? = nil) -> RequestBuilder<[Message]> {
        var localVariablePath = "/users/{userId}/messages"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Message]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザー詳細情報を取得
     
     - parameter userId: (path) ユーザーUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUser(userId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: UserDetail?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザー詳細情報を取得
     - GET /users/{userId}
     - 指定したユーザーの詳細情報を取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserDetail>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     DMチャンネル情報を取得
     
     - parameter userId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserDMChannel(userId: String, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: DMChannel?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserDMChannelWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     DMチャンネル情報を取得
     - GET /users/{userId}/dm-channel
     - 指定したユーザーとのダイレクトメッセージチャンネルの情報を返します。 ダイレクトメッセージチャンネルが存在しなかった場合、自動的に作成されます。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter userId: (path)  
     - returns: RequestBuilder<DMChannel> 
     */
    open class func getUserDMChannelWithRequestBuilder(userId: String) -> RequestBuilder<DMChannel> {
        var localVariablePath = "/users/{userId}/dm-channel"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TraqAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DMChannel>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーのアイコン画像を取得
     
     - parameter userId: (path) ユーザーUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserIcon(userId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: URL?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserIconWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーのアイコン画像を取得
     - GET /users/{userId}/icon
     - 指定したユーザーのアイコン画像を取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<URL>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザー統計情報を取得
     
     - parameter userId: (path) ユーザーUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserStats(userId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: UserStats?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserStatsWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザー統計情報を取得
     - GET /users/{userId}/stats
     - 指定したユーザーの統計情報を取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserStats>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーのタグリストを取得
     
     - parameter userId: (path) ユーザーUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserTags(userId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: [UserTag]?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserTagsWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーのタグリストを取得
     - GET /users/{userId}/tags
     - 指定したユーザーのタグリストを取得します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[UserTag]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーのリストを取得
     
     - parameter includeSuspended: (query) アカウントがアクティブでないユーザーを含め、全てのユーザーを取得するかどうか (optional, default to false)
     - parameter name: (query) 名前が一致するアカウントのみを取得する (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUsers(includeSuspended: Bool? = nil, name: String? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: [User]?, _ error: Error?) -> Void)) -> RequestTask {
        return getUsersWithRequestBuilder(includeSuspended: includeSuspended, name: name).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーのリストを取得
     - GET /users
     - ユーザーのリストを取得します。 `include-suspended`を指定しない場合、レスポンスにはユーザーアカウント状態が\"1: 有効\"であるユーザーのみが含まれます。 `include-suspended`と`name`を同時に指定することはできません。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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
            "include-suspended": includeSuspended?.encodeToJSON(),
            "name": name?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[User]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ダイレクトメッセージを送信
     
     - parameter userId: (path) ユーザーUUID 
     - parameter postMessageRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postDirectMessage(userId: UUID, postMessageRequest: PostMessageRequest? = nil, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Message?, _ error: Error?) -> Void)) -> RequestTask {
        return postDirectMessageWithRequestBuilder(userId: userId, postMessageRequest: postMessageRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ダイレクトメッセージを送信
     - POST /users/{userId}/messages
     - 指定したユーザーにダイレクトメッセージを送信します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter userId: (path) ユーザーUUID 
     - parameter postMessageRequest: (body)  (optional)
     - returns: RequestBuilder<Message> 
     */
    open class func postDirectMessageWithRequestBuilder(userId: UUID, postMessageRequest: PostMessageRequest? = nil) -> RequestBuilder<Message> {
        var localVariablePath = "/users/{userId}/messages"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TraqAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postMessageRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Message>.Type = TraqAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     ユーザーからタグを削除します
     
     - parameter userId: (path) ユーザーUUID 
     - parameter tagId: (path) タグUUID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func removeUserTag(userId: UUID, tagId: UUID, apiResponseQueue: DispatchQueue = TraqAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return removeUserTagWithRequestBuilder(userId: userId, tagId: tagId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ユーザーからタグを削除します
     - DELETE /users/{userId}/tags/{tagId}
     - 既に存在しないタグを削除しようとした場合は204を返します。
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - BASIC:
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

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
}