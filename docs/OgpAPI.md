# OgpAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOgpCache**](OgpAPI.md#deleteogpcache) | **DELETE** /ogp/cache | OGP情報のキャッシュを削除
[**getOgp**](OgpAPI.md#getogp) | **GET** /ogp | OGP情報を取得


# **deleteOgpCache**
```swift
    open class func deleteOgpCache(url: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OGP情報のキャッシュを削除

指定されたURLのOGP情報のキャッシュを削除します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let url = "url_example" // String | OGPのキャッシュを削除したいURL

// OGP情報のキャッシュを削除
OgpAPI.deleteOgpCache(url: url) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String** | OGPのキャッシュを削除したいURL | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOgp**
```swift
    open class func getOgp(url: String, completion: @escaping (_ data: Ogp?, _ error: Error?) -> Void)
```

OGP情報を取得

指定されたURLのOGP情報を取得します。 指定されたURLに対するOGP情報が見つからなかった場合、typeがemptyに設定された空のOGP情報を返します。 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let url = "url_example" // String | OGPを取得したいURL

// OGP情報を取得
OgpAPI.getOgp(url: url) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String** | OGPを取得したいURL | 

### Return type

[**Ogp**](Ogp.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

