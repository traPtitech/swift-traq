//
// OgpAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class OgpAPI {
        /**
         OGP情報のキャッシュを削除

         - parameter url: (query) OGPのキャッシュを削除したいURL
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func deleteOgpCache(url: String) async throws {
            try await deleteOgpCacheWithRequestBuilder(url: url).execute().body
        }

        /**
         OGP情報のキャッシュを削除
         - DELETE /ogp/cache
         - 指定されたURLのOGP情報のキャッシュを削除します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter url: (query) OGPのキャッシュを削除したいURL
         - returns: RequestBuilder<Void>
         */
        open class func deleteOgpCacheWithRequestBuilder(url: String) -> RequestBuilder<Void> {
            let localVariablePath = "/ogp/cache"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "url": (wrappedValue: url.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OGP情報を取得

         - parameter url: (query) OGPを取得したいURL
         - returns: Ogp
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getOgp(url: String) async throws -> Ogp {
            try await getOgpWithRequestBuilder(url: url).execute().body
        }

        /**
         OGP情報を取得
         - GET /ogp
         - 指定されたURLのOGP情報を取得します。 指定されたURLに対するOGP情報が見つからなかった場合、typeがemptyに設定された空のOGP情報を返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter url: (query) OGPを取得したいURL
         - returns: RequestBuilder<Ogp>
         */
        open class func getOgpWithRequestBuilder(url: String) -> RequestBuilder<Ogp> {
            let localVariablePath = "/ogp"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "url": (wrappedValue: url.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Ogp>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }
    }
}
