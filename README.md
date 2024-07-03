# Swift5 API client for Traq

traQ v3 API

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 3.0
- Package version: 
- Generator version: 7.7.0
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://github.com/traPtitech/traQ](https://github.com/traPtitech/traQ)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://q.trap.jp/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ActivityAPI* | [**getActivityTimeline**](docs/ActivityAPI.md#getactivitytimeline) | **GET** /activity/timeline | アクテビティタイムラインを取得
*ActivityAPI* | [**getOnlineUsers**](docs/ActivityAPI.md#getonlineusers) | **GET** /activity/onlines | オンラインユーザーリストを取得
*AuthenticationAPI* | [**getMyExternalAccounts**](docs/AuthenticationAPI.md#getmyexternalaccounts) | **GET** /users/me/ex-accounts | 外部ログインアカウント一覧を取得
*AuthenticationAPI* | [**getMySessions**](docs/AuthenticationAPI.md#getmysessions) | **GET** /users/me/sessions | 自分のログインセッションリストを取得
*AuthenticationAPI* | [**linkExternalAccount**](docs/AuthenticationAPI.md#linkexternalaccount) | **POST** /users/me/ex-accounts/link | 外部ログインアカウントを紐付ける
*AuthenticationAPI* | [**login**](docs/AuthenticationAPI.md#login) | **POST** /login | ログイン
*AuthenticationAPI* | [**logout**](docs/AuthenticationAPI.md#logout) | **POST** /logout | ログアウト
*AuthenticationAPI* | [**revokeMySession**](docs/AuthenticationAPI.md#revokemysession) | **DELETE** /users/me/sessions/{sessionId} | セッションを無効化
*AuthenticationAPI* | [**unlinkExternalAccount**](docs/AuthenticationAPI.md#unlinkexternalaccount) | **POST** /users/me/ex-accounts/unlink | 外部ログインアカウントの紐付けを解除
*BotAPI* | [**activateBot**](docs/BotAPI.md#activatebot) | **POST** /bots/{botId}/actions/activate | BOTをアクティベート
*BotAPI* | [**changeBotIcon**](docs/BotAPI.md#changeboticon) | **PUT** /bots/{botId}/icon | BOTのアイコン画像を変更
*BotAPI* | [**connectBotWS**](docs/BotAPI.md#connectbotws) | **GET** /bots/ws | WebSocket Mode BOT用通知ストリームに接続します
*BotAPI* | [**createBot**](docs/BotAPI.md#createbot) | **POST** /bots | BOTを作成
*BotAPI* | [**deleteBot**](docs/BotAPI.md#deletebot) | **DELETE** /bots/{botId} | BOTを削除
*BotAPI* | [**editBot**](docs/BotAPI.md#editbot) | **PATCH** /bots/{botId} | BOT情報を変更
*BotAPI* | [**getBot**](docs/BotAPI.md#getbot) | **GET** /bots/{botId} | BOT情報を取得
*BotAPI* | [**getBotIcon**](docs/BotAPI.md#getboticon) | **GET** /bots/{botId}/icon | BOTのアイコン画像を取得
*BotAPI* | [**getBotLogs**](docs/BotAPI.md#getbotlogs) | **GET** /bots/{botId}/logs | BOTのイベントログを取得
*BotAPI* | [**getBots**](docs/BotAPI.md#getbots) | **GET** /bots | BOTリストを取得
*BotAPI* | [**getChannelBots**](docs/BotAPI.md#getchannelbots) | **GET** /channels/{channelId}/bots | チャンネル参加中のBOTのリストを取得
*BotAPI* | [**inactivateBot**](docs/BotAPI.md#inactivatebot) | **POST** /bots/{botId}/actions/inactivate | BOTをインアクティベート
*BotAPI* | [**letBotJoinChannel**](docs/BotAPI.md#letbotjoinchannel) | **POST** /bots/{botId}/actions/join | BOTをチャンネルに参加させる
*BotAPI* | [**letBotLeaveChannel**](docs/BotAPI.md#letbotleavechannel) | **POST** /bots/{botId}/actions/leave | BOTをチャンネルから退出させる
*BotAPI* | [**reissueBot**](docs/BotAPI.md#reissuebot) | **POST** /bots/{botId}/actions/reissue | BOTのトークンを再発行
*ChannelAPI* | [**createChannel**](docs/ChannelAPI.md#createchannel) | **POST** /channels | チャンネルを作成
*ChannelAPI* | [**editChannel**](docs/ChannelAPI.md#editchannel) | **PATCH** /channels/{channelId} | チャンネル情報を変更
*ChannelAPI* | [**editChannelSubscribers**](docs/ChannelAPI.md#editchannelsubscribers) | **PATCH** /channels/{channelId}/subscribers | チャンネルの通知購読者を編集
*ChannelAPI* | [**editChannelTopic**](docs/ChannelAPI.md#editchanneltopic) | **PUT** /channels/{channelId}/topic | チャンネルトピックを編集
*ChannelAPI* | [**getChannel**](docs/ChannelAPI.md#getchannel) | **GET** /channels/{channelId} | チャンネル情報を取得
*ChannelAPI* | [**getChannelBots**](docs/ChannelAPI.md#getchannelbots) | **GET** /channels/{channelId}/bots | チャンネル参加中のBOTのリストを取得
*ChannelAPI* | [**getChannelEvents**](docs/ChannelAPI.md#getchannelevents) | **GET** /channels/{channelId}/events | チャンネルイベントのリストを取得
*ChannelAPI* | [**getChannelPins**](docs/ChannelAPI.md#getchannelpins) | **GET** /channels/{channelId}/pins | チャンネルピンのリストを取得
*ChannelAPI* | [**getChannelStats**](docs/ChannelAPI.md#getchannelstats) | **GET** /channels/{channelId}/stats | チャンネル統計情報を取得
*ChannelAPI* | [**getChannelSubscribers**](docs/ChannelAPI.md#getchannelsubscribers) | **GET** /channels/{channelId}/subscribers | チャンネルの通知購読者のリストを取得
*ChannelAPI* | [**getChannelTopic**](docs/ChannelAPI.md#getchanneltopic) | **GET** /channels/{channelId}/topic | チャンネルトピックを取得
*ChannelAPI* | [**getChannelViewers**](docs/ChannelAPI.md#getchannelviewers) | **GET** /channels/{channelId}/viewers | チャンネル閲覧者リストを取得
*ChannelAPI* | [**getChannels**](docs/ChannelAPI.md#getchannels) | **GET** /channels | チャンネルリストを取得
*ChannelAPI* | [**getMessages**](docs/ChannelAPI.md#getmessages) | **GET** /channels/{channelId}/messages | チャンネルメッセージのリストを取得
*ChannelAPI* | [**getUserDMChannel**](docs/ChannelAPI.md#getuserdmchannel) | **GET** /users/{userId}/dm-channel | DMチャンネル情報を取得
*ChannelAPI* | [**postMessage**](docs/ChannelAPI.md#postmessage) | **POST** /channels/{channelId}/messages | チャンネルにメッセージを投稿
*ChannelAPI* | [**setChannelSubscribers**](docs/ChannelAPI.md#setchannelsubscribers) | **PUT** /channels/{channelId}/subscribers | チャンネルの通知購読者を設定
*ClipAPI* | [**clipMessage**](docs/ClipAPI.md#clipmessage) | **POST** /clip-folders/{folderId}/messages | メッセージをクリップフォルダに追加
*ClipAPI* | [**createClipFolder**](docs/ClipAPI.md#createclipfolder) | **POST** /clip-folders | クリップフォルダを作成
*ClipAPI* | [**deleteClipFolder**](docs/ClipAPI.md#deleteclipfolder) | **DELETE** /clip-folders/{folderId} | クリップフォルダを削除
*ClipAPI* | [**editClipFolder**](docs/ClipAPI.md#editclipfolder) | **PATCH** /clip-folders/{folderId} | クリップフォルダ情報を編集
*ClipAPI* | [**getClipFolder**](docs/ClipAPI.md#getclipfolder) | **GET** /clip-folders/{folderId} | クリップフォルダ情報を取得
*ClipAPI* | [**getClipFolders**](docs/ClipAPI.md#getclipfolders) | **GET** /clip-folders | クリップフォルダのリストを取得
*ClipAPI* | [**getClips**](docs/ClipAPI.md#getclips) | **GET** /clip-folders/{folderId}/messages | フォルダ内のクリップのリストを取得
*ClipAPI* | [**getMessageClips**](docs/ClipAPI.md#getmessageclips) | **GET** /messages/{messageId}/clips | 自分のクリップを取得
*ClipAPI* | [**unclipMessage**](docs/ClipAPI.md#unclipmessage) | **DELETE** /clip-folders/{folderId}/messages/{messageId} | メッセージをクリップフォルダから除外
*FileAPI* | [**deleteFile**](docs/FileAPI.md#deletefile) | **DELETE** /files/{fileId} | ファイルを削除
*FileAPI* | [**getFile**](docs/FileAPI.md#getfile) | **GET** /files/{fileId} | ファイルをダウンロード
*FileAPI* | [**getFileMeta**](docs/FileAPI.md#getfilemeta) | **GET** /files/{fileId}/meta | ファイルメタを取得
*FileAPI* | [**getFiles**](docs/FileAPI.md#getfiles) | **GET** /files | ファイルメタのリストを取得
*FileAPI* | [**getThumbnailImage**](docs/FileAPI.md#getthumbnailimage) | **GET** /files/{fileId}/thumbnail | サムネイル画像を取得
*FileAPI* | [**postFile**](docs/FileAPI.md#postfile) | **POST** /files | ファイルをアップロード
*GroupAPI* | [**addUserGroupAdmin**](docs/GroupAPI.md#addusergroupadmin) | **POST** /groups/{groupId}/admins | グループ管理者を追加
*GroupAPI* | [**addUserGroupMember**](docs/GroupAPI.md#addusergroupmember) | **POST** /groups/{groupId}/members | グループメンバーを追加
*GroupAPI* | [**changeUserGroupIcon**](docs/GroupAPI.md#changeusergroupicon) | **PUT** /groups/{groupId}/icon | ユーザーグループのアイコンを変更
*GroupAPI* | [**createUserGroup**](docs/GroupAPI.md#createusergroup) | **POST** /groups | ユーザーグループを作成
*GroupAPI* | [**deleteUserGroup**](docs/GroupAPI.md#deleteusergroup) | **DELETE** /groups/{groupId} | ユーザーグループを削除
*GroupAPI* | [**editUserGroup**](docs/GroupAPI.md#editusergroup) | **PATCH** /groups/{groupId} | ユーザーグループを編集
*GroupAPI* | [**editUserGroupMember**](docs/GroupAPI.md#editusergroupmember) | **PATCH** /groups/{groupId}/members/{userId} | グループメンバーを編集
*GroupAPI* | [**getUserGroup**](docs/GroupAPI.md#getusergroup) | **GET** /groups/{groupId} | ユーザーグループを取得
*GroupAPI* | [**getUserGroupAdmins**](docs/GroupAPI.md#getusergroupadmins) | **GET** /groups/{groupId}/admins | グループ管理者を取得
*GroupAPI* | [**getUserGroupMembers**](docs/GroupAPI.md#getusergroupmembers) | **GET** /groups/{groupId}/members | グループメンバーを取得
*GroupAPI* | [**getUserGroups**](docs/GroupAPI.md#getusergroups) | **GET** /groups | ユーザーグループのリストを取得
*GroupAPI* | [**removeUserGroupAdmin**](docs/GroupAPI.md#removeusergroupadmin) | **DELETE** /groups/{groupId}/admins/{userId} | グループ管理者を削除
*GroupAPI* | [**removeUserGroupMember**](docs/GroupAPI.md#removeusergroupmember) | **DELETE** /groups/{groupId}/members/{userId} | グループメンバーを削除
*MeAPI* | [**addMyStar**](docs/MeAPI.md#addmystar) | **POST** /users/me/stars | チャンネルをスターに追加
*MeAPI* | [**addMyUserTag**](docs/MeAPI.md#addmyusertag) | **POST** /users/me/tags | 自分にタグを追加
*MeAPI* | [**changeMyIcon**](docs/MeAPI.md#changemyicon) | **PUT** /users/me/icon | 自分のアイコン画像を変更
*MeAPI* | [**changeMyNotifyCitation**](docs/MeAPI.md#changemynotifycitation) | **PUT** /users/me/settings/notify-citation | メッセージ引用通知の設定情報を変更
*MeAPI* | [**changeMyPassword**](docs/MeAPI.md#changemypassword) | **PUT** /users/me/password | 自分のパスワードを変更
*MeAPI* | [**editMe**](docs/MeAPI.md#editme) | **PATCH** /users/me | 自分のユーザー情報を変更
*MeAPI* | [**editMyUserTag**](docs/MeAPI.md#editmyusertag) | **PATCH** /users/me/tags/{tagId} | 自分のタグを編集
*MeAPI* | [**getMe**](docs/MeAPI.md#getme) | **GET** /users/me | 自分のユーザー詳細を取得
*MeAPI* | [**getMyChannelSubscriptions**](docs/MeAPI.md#getmychannelsubscriptions) | **GET** /users/me/subscriptions | 自分のチャンネル購読状態を取得
*MeAPI* | [**getMyExternalAccounts**](docs/MeAPI.md#getmyexternalaccounts) | **GET** /users/me/ex-accounts | 外部ログインアカウント一覧を取得
*MeAPI* | [**getMyIcon**](docs/MeAPI.md#getmyicon) | **GET** /users/me/icon | 自分のアイコン画像を取得
*MeAPI* | [**getMyNotifyCitation**](docs/MeAPI.md#getmynotifycitation) | **GET** /users/me/settings/notify-citation | メッセージ引用通知の設定情報を取得
*MeAPI* | [**getMyQRCode**](docs/MeAPI.md#getmyqrcode) | **GET** /users/me/qr-code | QRコードを取得
*MeAPI* | [**getMySessions**](docs/MeAPI.md#getmysessions) | **GET** /users/me/sessions | 自分のログインセッションリストを取得
*MeAPI* | [**getMyStampHistory**](docs/MeAPI.md#getmystamphistory) | **GET** /users/me/stamp-history | スタンプ履歴を取得
*MeAPI* | [**getMyStars**](docs/MeAPI.md#getmystars) | **GET** /users/me/stars | スターチャンネルリストを取得
*MeAPI* | [**getMyTokens**](docs/MeAPI.md#getmytokens) | **GET** /users/me/tokens | 有効トークンのリストを取得
*MeAPI* | [**getMyUnreadChannels**](docs/MeAPI.md#getmyunreadchannels) | **GET** /users/me/unread | 未読チャンネルを取得
*MeAPI* | [**getMyUserTags**](docs/MeAPI.md#getmyusertags) | **GET** /users/me/tags | 自分のタグリストを取得
*MeAPI* | [**getMyViewStates**](docs/MeAPI.md#getmyviewstates) | **GET** /users/me/view-states | 自身のチャンネル閲覧状態一覧を取得
*MeAPI* | [**getOIDCUserInfo**](docs/MeAPI.md#getoidcuserinfo) | **GET** /users/me/oidc | 自分のユーザー詳細を取得 (OIDC UserInfo)
*MeAPI* | [**getUserSettings**](docs/MeAPI.md#getusersettings) | **GET** /users/me/settings | ユーザー設定を取得
*MeAPI* | [**linkExternalAccount**](docs/MeAPI.md#linkexternalaccount) | **POST** /users/me/ex-accounts/link | 外部ログインアカウントを紐付ける
*MeAPI* | [**readChannel**](docs/MeAPI.md#readchannel) | **DELETE** /users/me/unread/{channelId} | チャンネルを既読にする
*MeAPI* | [**registerFCMDevice**](docs/MeAPI.md#registerfcmdevice) | **POST** /users/me/fcm-device | FCMデバイスを登録
*MeAPI* | [**removeMyStar**](docs/MeAPI.md#removemystar) | **DELETE** /users/me/stars/{channelId} | チャンネルをスターから削除します
*MeAPI* | [**removeMyUserTag**](docs/MeAPI.md#removemyusertag) | **DELETE** /users/me/tags/{tagId} | 自分からタグを削除します
*MeAPI* | [**revokeMySession**](docs/MeAPI.md#revokemysession) | **DELETE** /users/me/sessions/{sessionId} | セッションを無効化
*MeAPI* | [**revokeMyToken**](docs/MeAPI.md#revokemytoken) | **DELETE** /users/me/tokens/{tokenId} | トークンの認可を取り消す
*MeAPI* | [**setChannelSubscribeLevel**](docs/MeAPI.md#setchannelsubscribelevel) | **PUT** /users/me/subscriptions/{channelId} | チャンネル購読レベルを設定
*MeAPI* | [**unlinkExternalAccount**](docs/MeAPI.md#unlinkexternalaccount) | **POST** /users/me/ex-accounts/unlink | 外部ログインアカウントの紐付けを解除
*MessageAPI* | [**addMessageStamp**](docs/MessageAPI.md#addmessagestamp) | **POST** /messages/{messageId}/stamps/{stampId} | スタンプを押す
*MessageAPI* | [**createPin**](docs/MessageAPI.md#createpin) | **POST** /messages/{messageId}/pin | ピン留めする
*MessageAPI* | [**deleteMessage**](docs/MessageAPI.md#deletemessage) | **DELETE** /messages/{messageId} | メッセージを削除
*MessageAPI* | [**editMessage**](docs/MessageAPI.md#editmessage) | **PUT** /messages/{messageId} | メッセージを編集
*MessageAPI* | [**getDirectMessages**](docs/MessageAPI.md#getdirectmessages) | **GET** /users/{userId}/messages | ダイレクトメッセージのリストを取得
*MessageAPI* | [**getMessage**](docs/MessageAPI.md#getmessage) | **GET** /messages/{messageId} | メッセージを取得
*MessageAPI* | [**getMessageClips**](docs/MessageAPI.md#getmessageclips) | **GET** /messages/{messageId}/clips | 自分のクリップを取得
*MessageAPI* | [**getMessageStamps**](docs/MessageAPI.md#getmessagestamps) | **GET** /messages/{messageId}/stamps | メッセージのスタンプリストを取得
*MessageAPI* | [**getMessages**](docs/MessageAPI.md#getmessages) | **GET** /channels/{channelId}/messages | チャンネルメッセージのリストを取得
*MessageAPI* | [**getPin**](docs/MessageAPI.md#getpin) | **GET** /messages/{messageId}/pin | ピン留めを取得
*MessageAPI* | [**postDirectMessage**](docs/MessageAPI.md#postdirectmessage) | **POST** /users/{userId}/messages | ダイレクトメッセージを送信
*MessageAPI* | [**postMessage**](docs/MessageAPI.md#postmessage) | **POST** /channels/{channelId}/messages | チャンネルにメッセージを投稿
*MessageAPI* | [**removeMessageStamp**](docs/MessageAPI.md#removemessagestamp) | **DELETE** /messages/{messageId}/stamps/{stampId} | スタンプを消す
*MessageAPI* | [**removePin**](docs/MessageAPI.md#removepin) | **DELETE** /messages/{messageId}/pin | ピン留めを外す
*MessageAPI* | [**searchMessages**](docs/MessageAPI.md#searchmessages) | **GET** /messages | メッセージを検索
*NotificationAPI* | [**editChannelSubscribers**](docs/NotificationAPI.md#editchannelsubscribers) | **PATCH** /channels/{channelId}/subscribers | チャンネルの通知購読者を編集
*NotificationAPI* | [**getChannelSubscribers**](docs/NotificationAPI.md#getchannelsubscribers) | **GET** /channels/{channelId}/subscribers | チャンネルの通知購読者のリストを取得
*NotificationAPI* | [**getMyChannelSubscriptions**](docs/NotificationAPI.md#getmychannelsubscriptions) | **GET** /users/me/subscriptions | 自分のチャンネル購読状態を取得
*NotificationAPI* | [**getMyUnreadChannels**](docs/NotificationAPI.md#getmyunreadchannels) | **GET** /users/me/unread | 未読チャンネルを取得
*NotificationAPI* | [**getMyViewStates**](docs/NotificationAPI.md#getmyviewstates) | **GET** /users/me/view-states | 自身のチャンネル閲覧状態一覧を取得
*NotificationAPI* | [**readChannel**](docs/NotificationAPI.md#readchannel) | **DELETE** /users/me/unread/{channelId} | チャンネルを既読にする
*NotificationAPI* | [**registerFCMDevice**](docs/NotificationAPI.md#registerfcmdevice) | **POST** /users/me/fcm-device | FCMデバイスを登録
*NotificationAPI* | [**setChannelSubscribeLevel**](docs/NotificationAPI.md#setchannelsubscribelevel) | **PUT** /users/me/subscriptions/{channelId} | チャンネル購読レベルを設定
*NotificationAPI* | [**setChannelSubscribers**](docs/NotificationAPI.md#setchannelsubscribers) | **PUT** /channels/{channelId}/subscribers | チャンネルの通知購読者を設定
*NotificationAPI* | [**ws**](docs/NotificationAPI.md#ws) | **GET** /ws | WebSocket通知ストリームに接続します
*Oauth2API* | [**createClient**](docs/Oauth2API.md#createclient) | **POST** /clients | OAuth2クライアントを作成
*Oauth2API* | [**deleteClient**](docs/Oauth2API.md#deleteclient) | **DELETE** /clients/{clientId} | OAuth2クライアントを削除
*Oauth2API* | [**editClient**](docs/Oauth2API.md#editclient) | **PATCH** /clients/{clientId} | OAuth2クライアント情報を変更
*Oauth2API* | [**getClient**](docs/Oauth2API.md#getclient) | **GET** /clients/{clientId} | OAuth2クライアント情報を取得
*Oauth2API* | [**getClients**](docs/Oauth2API.md#getclients) | **GET** /clients | OAuth2クライアントのリストを取得
*Oauth2API* | [**getMyTokens**](docs/Oauth2API.md#getmytokens) | **GET** /users/me/tokens | 有効トークンのリストを取得
*Oauth2API* | [**getOAuth2Authorize**](docs/Oauth2API.md#getoauth2authorize) | **GET** /oauth2/authorize | OAuth2 認可エンドポイント
*Oauth2API* | [**postOAuth2Authorize**](docs/Oauth2API.md#postoauth2authorize) | **POST** /oauth2/authorize | OAuth2 認可エンドポイント
*Oauth2API* | [**postOAuth2AuthorizeDecide**](docs/Oauth2API.md#postoauth2authorizedecide) | **POST** /oauth2/authorize/decide | OAuth2 認可承諾API
*Oauth2API* | [**postOAuth2Token**](docs/Oauth2API.md#postoauth2token) | **POST** /oauth2/token | OAuth2 トークンエンドポイント
*Oauth2API* | [**revokeMyToken**](docs/Oauth2API.md#revokemytoken) | **DELETE** /users/me/tokens/{tokenId} | トークンの認可を取り消す
*Oauth2API* | [**revokeOAuth2Token**](docs/Oauth2API.md#revokeoauth2token) | **POST** /oauth2/revoke | OAuth2 トークン無効化エンドポイント
*OgpAPI* | [**deleteOgpCache**](docs/OgpAPI.md#deleteogpcache) | **DELETE** /ogp/cache | OGP情報のキャッシュを削除
*OgpAPI* | [**getOgp**](docs/OgpAPI.md#getogp) | **GET** /ogp | OGP情報を取得
*PinAPI* | [**createPin**](docs/PinAPI.md#createpin) | **POST** /messages/{messageId}/pin | ピン留めする
*PinAPI* | [**getChannelPins**](docs/PinAPI.md#getchannelpins) | **GET** /channels/{channelId}/pins | チャンネルピンのリストを取得
*PinAPI* | [**getPin**](docs/PinAPI.md#getpin) | **GET** /messages/{messageId}/pin | ピン留めを取得
*PinAPI* | [**removePin**](docs/PinAPI.md#removepin) | **DELETE** /messages/{messageId}/pin | ピン留めを外す
*PublicAPI* | [**getPublicUserIcon**](docs/PublicAPI.md#getpublicusericon) | **GET** /public/icon/{username} | ユーザーのアイコン画像を取得
*PublicAPI* | [**getServerVersion**](docs/PublicAPI.md#getserverversion) | **GET** /version | バージョンを取得
*StampAPI* | [**addMessageStamp**](docs/StampAPI.md#addmessagestamp) | **POST** /messages/{messageId}/stamps/{stampId} | スタンプを押す
*StampAPI* | [**changeStampImage**](docs/StampAPI.md#changestampimage) | **PUT** /stamps/{stampId}/image | スタンプ画像を変更
*StampAPI* | [**createStamp**](docs/StampAPI.md#createstamp) | **POST** /stamps | スタンプを作成
*StampAPI* | [**createStampPalette**](docs/StampAPI.md#createstamppalette) | **POST** /stamp-palettes | スタンプパレットを作成
*StampAPI* | [**deleteStamp**](docs/StampAPI.md#deletestamp) | **DELETE** /stamps/{stampId} | スタンプを削除
*StampAPI* | [**deleteStampPalette**](docs/StampAPI.md#deletestamppalette) | **DELETE** /stamp-palettes/{paletteId} | スタンプパレットを削除
*StampAPI* | [**editStamp**](docs/StampAPI.md#editstamp) | **PATCH** /stamps/{stampId} | スタンプ情報を変更
*StampAPI* | [**editStampPalette**](docs/StampAPI.md#editstamppalette) | **PATCH** /stamp-palettes/{paletteId} | スタンプパレットを編集
*StampAPI* | [**getMessageStamps**](docs/StampAPI.md#getmessagestamps) | **GET** /messages/{messageId}/stamps | メッセージのスタンプリストを取得
*StampAPI* | [**getMyStampHistory**](docs/StampAPI.md#getmystamphistory) | **GET** /users/me/stamp-history | スタンプ履歴を取得
*StampAPI* | [**getStamp**](docs/StampAPI.md#getstamp) | **GET** /stamps/{stampId} | スタンプ情報を取得
*StampAPI* | [**getStampImage**](docs/StampAPI.md#getstampimage) | **GET** /stamps/{stampId}/image | スタンプ画像を取得
*StampAPI* | [**getStampPalette**](docs/StampAPI.md#getstamppalette) | **GET** /stamp-palettes/{paletteId} | スタンプパレットを取得
*StampAPI* | [**getStampPalettes**](docs/StampAPI.md#getstamppalettes) | **GET** /stamp-palettes | スタンプパレットのリストを取得
*StampAPI* | [**getStampStats**](docs/StampAPI.md#getstampstats) | **GET** /stamps/{stampId}/stats | スタンプ統計情報を取得
*StampAPI* | [**getStamps**](docs/StampAPI.md#getstamps) | **GET** /stamps | スタンプリストを取得
*StampAPI* | [**removeMessageStamp**](docs/StampAPI.md#removemessagestamp) | **DELETE** /messages/{messageId}/stamps/{stampId} | スタンプを消す
*StarAPI* | [**addMyStar**](docs/StarAPI.md#addmystar) | **POST** /users/me/stars | チャンネルをスターに追加
*StarAPI* | [**getMyStars**](docs/StarAPI.md#getmystars) | **GET** /users/me/stars | スターチャンネルリストを取得
*StarAPI* | [**removeMyStar**](docs/StarAPI.md#removemystar) | **DELETE** /users/me/stars/{channelId} | チャンネルをスターから削除します
*UserAPI* | [**addUserTag**](docs/UserAPI.md#addusertag) | **POST** /users/{userId}/tags | ユーザーにタグを追加
*UserAPI* | [**changeUserIcon**](docs/UserAPI.md#changeusericon) | **PUT** /users/{userId}/icon | ユーザーのアイコン画像を変更します
*UserAPI* | [**changeUserPassword**](docs/UserAPI.md#changeuserpassword) | **PUT** /users/{userId}/password | ユーザーのパスワードを変更
*UserAPI* | [**createUser**](docs/UserAPI.md#createuser) | **POST** /users | ユーザーを登録
*UserAPI* | [**editUser**](docs/UserAPI.md#edituser) | **PATCH** /users/{userId} | ユーザー情報を変更
*UserAPI* | [**editUserTag**](docs/UserAPI.md#editusertag) | **PATCH** /users/{userId}/tags/{tagId} | ユーザーのタグを編集
*UserAPI* | [**getDirectMessages**](docs/UserAPI.md#getdirectmessages) | **GET** /users/{userId}/messages | ダイレクトメッセージのリストを取得
*UserAPI* | [**getUser**](docs/UserAPI.md#getuser) | **GET** /users/{userId} | ユーザー詳細情報を取得
*UserAPI* | [**getUserDMChannel**](docs/UserAPI.md#getuserdmchannel) | **GET** /users/{userId}/dm-channel | DMチャンネル情報を取得
*UserAPI* | [**getUserIcon**](docs/UserAPI.md#getusericon) | **GET** /users/{userId}/icon | ユーザーのアイコン画像を取得
*UserAPI* | [**getUserStats**](docs/UserAPI.md#getuserstats) | **GET** /users/{userId}/stats | ユーザー統計情報を取得
*UserAPI* | [**getUserTags**](docs/UserAPI.md#getusertags) | **GET** /users/{userId}/tags | ユーザーのタグリストを取得
*UserAPI* | [**getUsers**](docs/UserAPI.md#getusers) | **GET** /users | ユーザーのリストを取得
*UserAPI* | [**postDirectMessage**](docs/UserAPI.md#postdirectmessage) | **POST** /users/{userId}/messages | ダイレクトメッセージを送信
*UserAPI* | [**removeUserTag**](docs/UserAPI.md#removeusertag) | **DELETE** /users/{userId}/tags/{tagId} | ユーザーからタグを削除します
*UserTagAPI* | [**addMyUserTag**](docs/UserTagAPI.md#addmyusertag) | **POST** /users/me/tags | 自分にタグを追加
*UserTagAPI* | [**addUserTag**](docs/UserTagAPI.md#addusertag) | **POST** /users/{userId}/tags | ユーザーにタグを追加
*UserTagAPI* | [**editMyUserTag**](docs/UserTagAPI.md#editmyusertag) | **PATCH** /users/me/tags/{tagId} | 自分のタグを編集
*UserTagAPI* | [**editUserTag**](docs/UserTagAPI.md#editusertag) | **PATCH** /users/{userId}/tags/{tagId} | ユーザーのタグを編集
*UserTagAPI* | [**getMyUserTags**](docs/UserTagAPI.md#getmyusertags) | **GET** /users/me/tags | 自分のタグリストを取得
*UserTagAPI* | [**getTag**](docs/UserTagAPI.md#gettag) | **GET** /tags/{tagId} | タグ情報を取得
*UserTagAPI* | [**getUserTags**](docs/UserTagAPI.md#getusertags) | **GET** /users/{userId}/tags | ユーザーのタグリストを取得
*UserTagAPI* | [**removeMyUserTag**](docs/UserTagAPI.md#removemyusertag) | **DELETE** /users/me/tags/{tagId} | 自分からタグを削除します
*UserTagAPI* | [**removeUserTag**](docs/UserTagAPI.md#removeusertag) | **DELETE** /users/{userId}/tags/{tagId} | ユーザーからタグを削除します
*WebhookAPI* | [**changeWebhookIcon**](docs/WebhookAPI.md#changewebhookicon) | **PUT** /webhooks/{webhookId}/icon | Webhookのアイコンを変更
*WebhookAPI* | [**createWebhook**](docs/WebhookAPI.md#createwebhook) | **POST** /webhooks | Webhookを新規作成
*WebhookAPI* | [**deleteWebhook**](docs/WebhookAPI.md#deletewebhook) | **DELETE** /webhooks/{webhookId} | Webhookを削除
*WebhookAPI* | [**editWebhook**](docs/WebhookAPI.md#editwebhook) | **PATCH** /webhooks/{webhookId} | Webhook情報を変更
*WebhookAPI* | [**getWebhook**](docs/WebhookAPI.md#getwebhook) | **GET** /webhooks/{webhookId} | Webhook情報を取得
*WebhookAPI* | [**getWebhookIcon**](docs/WebhookAPI.md#getwebhookicon) | **GET** /webhooks/{webhookId}/icon | Webhookのアイコンを取得
*WebhookAPI* | [**getWebhookMessages**](docs/WebhookAPI.md#getwebhookmessages) | **GET** /webhooks/{webhookId}/messages | Webhookの投稿メッセージのリストを取得
*WebhookAPI* | [**getWebhooks**](docs/WebhookAPI.md#getwebhooks) | **GET** /webhooks | Webhook情報のリストを取得します
*WebhookAPI* | [**postWebhook**](docs/WebhookAPI.md#postwebhook) | **POST** /webhooks/{webhookId} | Webhookを送信
*WebrtcAPI* | [**getWebRTCState**](docs/WebrtcAPI.md#getwebrtcstate) | **GET** /webrtc/state | WebRTC状態を取得
*WebrtcAPI* | [**postWebRTCAuthenticate**](docs/WebrtcAPI.md#postwebrtcauthenticate) | **POST** /webrtc/authenticate | Skyway用認証API


## Documentation For Models

 - [ActiveOAuth2Token](docs/ActiveOAuth2Token.md)
 - [ActivityTimelineMessage](docs/ActivityTimelineMessage.md)
 - [Bot](docs/Bot.md)
 - [BotDetail](docs/BotDetail.md)
 - [BotEventLog](docs/BotEventLog.md)
 - [BotEventResult](docs/BotEventResult.md)
 - [BotMode](docs/BotMode.md)
 - [BotState](docs/BotState.md)
 - [BotTokens](docs/BotTokens.md)
 - [BotUser](docs/BotUser.md)
 - [Channel](docs/Channel.md)
 - [ChannelEvent](docs/ChannelEvent.md)
 - [ChannelEventDetail](docs/ChannelEventDetail.md)
 - [ChannelList](docs/ChannelList.md)
 - [ChannelStats](docs/ChannelStats.md)
 - [ChannelStatsStamp](docs/ChannelStatsStamp.md)
 - [ChannelStatsUser](docs/ChannelStatsUser.md)
 - [ChannelSubscribeLevel](docs/ChannelSubscribeLevel.md)
 - [ChannelTopic](docs/ChannelTopic.md)
 - [ChannelViewState](docs/ChannelViewState.md)
 - [ChannelViewer](docs/ChannelViewer.md)
 - [ChildCreatedEvent](docs/ChildCreatedEvent.md)
 - [ClipFolder](docs/ClipFolder.md)
 - [ClippedMessage](docs/ClippedMessage.md)
 - [DMChannel](docs/DMChannel.md)
 - [ExternalProviderUser](docs/ExternalProviderUser.md)
 - [FileInfo](docs/FileInfo.md)
 - [FileInfoThumbnail](docs/FileInfoThumbnail.md)
 - [ForcedNotificationChangedEvent](docs/ForcedNotificationChangedEvent.md)
 - [GetBot200Response](docs/GetBot200Response.md)
 - [GetClient200Response](docs/GetClient200Response.md)
 - [GetNotifyCitation](docs/GetNotifyCitation.md)
 - [LoginSession](docs/LoginSession.md)
 - [Message](docs/Message.md)
 - [MessageClip](docs/MessageClip.md)
 - [MessagePin](docs/MessagePin.md)
 - [MessageSearchResult](docs/MessageSearchResult.md)
 - [MessageStamp](docs/MessageStamp.md)
 - [MyChannelViewState](docs/MyChannelViewState.md)
 - [MyUserDetail](docs/MyUserDetail.md)
 - [NameChangedEvent](docs/NameChangedEvent.md)
 - [OAuth2Client](docs/OAuth2Client.md)
 - [OAuth2ClientDetail](docs/OAuth2ClientDetail.md)
 - [OAuth2Prompt](docs/OAuth2Prompt.md)
 - [OAuth2ResponseType](docs/OAuth2ResponseType.md)
 - [OAuth2Scope](docs/OAuth2Scope.md)
 - [OAuth2Token](docs/OAuth2Token.md)
 - [OIDCTraqUserInfo](docs/OIDCTraqUserInfo.md)
 - [OIDCUserInfo](docs/OIDCUserInfo.md)
 - [Ogp](docs/Ogp.md)
 - [OgpMedia](docs/OgpMedia.md)
 - [ParentChangedEvent](docs/ParentChangedEvent.md)
 - [PatchBotRequest](docs/PatchBotRequest.md)
 - [PatchChannelRequest](docs/PatchChannelRequest.md)
 - [PatchChannelSubscribersRequest](docs/PatchChannelSubscribersRequest.md)
 - [PatchClientRequest](docs/PatchClientRequest.md)
 - [PatchClipFolderRequest](docs/PatchClipFolderRequest.md)
 - [PatchGroupMemberRequest](docs/PatchGroupMemberRequest.md)
 - [PatchMeRequest](docs/PatchMeRequest.md)
 - [PatchStampPaletteRequest](docs/PatchStampPaletteRequest.md)
 - [PatchStampRequest](docs/PatchStampRequest.md)
 - [PatchUserGroupRequest](docs/PatchUserGroupRequest.md)
 - [PatchUserRequest](docs/PatchUserRequest.md)
 - [PatchUserTagRequest](docs/PatchUserTagRequest.md)
 - [PatchWebhookRequest](docs/PatchWebhookRequest.md)
 - [Pin](docs/Pin.md)
 - [PinAddedEvent](docs/PinAddedEvent.md)
 - [PinRemovedEvent](docs/PinRemovedEvent.md)
 - [PostBotActionJoinRequest](docs/PostBotActionJoinRequest.md)
 - [PostBotActionLeaveRequest](docs/PostBotActionLeaveRequest.md)
 - [PostBotRequest](docs/PostBotRequest.md)
 - [PostChannelRequest](docs/PostChannelRequest.md)
 - [PostClientRequest](docs/PostClientRequest.md)
 - [PostClipFolderMessageRequest](docs/PostClipFolderMessageRequest.md)
 - [PostClipFolderRequest](docs/PostClipFolderRequest.md)
 - [PostLinkExternalAccount](docs/PostLinkExternalAccount.md)
 - [PostLoginRequest](docs/PostLoginRequest.md)
 - [PostMessageRequest](docs/PostMessageRequest.md)
 - [PostMessageStampRequest](docs/PostMessageStampRequest.md)
 - [PostMyFCMDeviceRequest](docs/PostMyFCMDeviceRequest.md)
 - [PostStampPaletteRequest](docs/PostStampPaletteRequest.md)
 - [PostStarRequest](docs/PostStarRequest.md)
 - [PostUnlinkExternalAccount](docs/PostUnlinkExternalAccount.md)
 - [PostUserGroupAdminRequest](docs/PostUserGroupAdminRequest.md)
 - [PostUserGroupRequest](docs/PostUserGroupRequest.md)
 - [PostUserRequest](docs/PostUserRequest.md)
 - [PostUserTagRequest](docs/PostUserTagRequest.md)
 - [PostWebRTCAuthenticateRequest](docs/PostWebRTCAuthenticateRequest.md)
 - [PostWebhookRequest](docs/PostWebhookRequest.md)
 - [PutChannelSubscribeLevelRequest](docs/PutChannelSubscribeLevelRequest.md)
 - [PutChannelSubscribersRequest](docs/PutChannelSubscribersRequest.md)
 - [PutChannelTopicRequest](docs/PutChannelTopicRequest.md)
 - [PutMyPasswordRequest](docs/PutMyPasswordRequest.md)
 - [PutNotifyCitationRequest](docs/PutNotifyCitationRequest.md)
 - [PutUserPasswordRequest](docs/PutUserPasswordRequest.md)
 - [Session](docs/Session.md)
 - [Stamp](docs/Stamp.md)
 - [StampHistoryEntry](docs/StampHistoryEntry.md)
 - [StampPalette](docs/StampPalette.md)
 - [StampStats](docs/StampStats.md)
 - [StampWithThumbnail](docs/StampWithThumbnail.md)
 - [SubscribersChangedEvent](docs/SubscribersChangedEvent.md)
 - [Tag](docs/Tag.md)
 - [ThumbnailInfo](docs/ThumbnailInfo.md)
 - [ThumbnailType](docs/ThumbnailType.md)
 - [TopicChangedEvent](docs/TopicChangedEvent.md)
 - [UnreadChannel](docs/UnreadChannel.md)
 - [User](docs/User.md)
 - [UserAccountState](docs/UserAccountState.md)
 - [UserDetail](docs/UserDetail.md)
 - [UserGroup](docs/UserGroup.md)
 - [UserGroupMember](docs/UserGroupMember.md)
 - [UserPermission](docs/UserPermission.md)
 - [UserSettings](docs/UserSettings.md)
 - [UserStats](docs/UserStats.md)
 - [UserStatsStamp](docs/UserStatsStamp.md)
 - [UserSubscribeState](docs/UserSubscribeState.md)
 - [UserTag](docs/UserTag.md)
 - [Version](docs/Version.md)
 - [VersionFlags](docs/VersionFlags.md)
 - [VisibilityChangedEvent](docs/VisibilityChangedEvent.md)
 - [WebRTCAuthenticateResult](docs/WebRTCAuthenticateResult.md)
 - [WebRTCUserState](docs/WebRTCUserState.md)
 - [Webhook](docs/Webhook.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="cookieAuth"></a>
### cookieAuth

- **Type**: API key
- **API key parameter name**: r_session
- **Location**: 

<a id="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: /api/v3/oauth2/authorize
- **Scopes**: 
 - **read**: 読み取りスコープ
 - **write**: 書き込みスコープ
 - **manage_bot**: bot関連読み書きスコープ

<a id="bearerAuth"></a>
### bearerAuth

- **Type**: HTTP Bearer Token authentication


## Author



