.class public Lcom/appsgeyser/sdk/server/StatController;
.super Ljava/lang/Object;
.source "StatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/server/StatController$AdsType;
    }
.end annotation


# static fields
.field public static final FT_NETWORK_ADMOB:Ljava/lang/String; = "ft_admob"

.field public static final FT_NETWORK_ADMOB_CUSTOM:Ljava/lang/String; = "ft_admob_custom"

.field public static final FT_NETWORK_APPNEXT:Ljava/lang/String; = "ft_appnext"

.field public static final FT_NETWORK_APPNEXT_CUSTOM:Ljava/lang/String; = "ft_appnext_custom"

.field public static final FT_NETWORK_APPODEAL:Ljava/lang/String; = "ft_appodeal"

.field public static final FT_NETWORK_APPODEAL_CUSTOM:Ljava/lang/String; = "ft_appodeal_custom"

.field public static final FT_NETWORK_FACEBOOK:Ljava/lang/String; = "ft_facebook"

.field public static final FT_NETWORK_FACEBOOK_CUSTOM:Ljava/lang/String; = "ft_facebook_custom"

.field public static final FT_NETWORK_MA:Ljava/lang/String; = "ft_multiAds"

.field public static final FT_NETWORK_MA_ADMOB:Ljava/lang/String; = "ft_ma_admob"

.field public static final FT_NETWORK_MA_APPNEXT:Ljava/lang/String; = "ft_ma_appnext"

.field public static final FT_NETWORK_MA_APPODEAL:Ljava/lang/String; = "ft_ma_appodeal"

.field public static final FT_NETWORK_MA_FACEBOOK:Ljava/lang/String; = "ft_ma_facebook"

.field public static final FT_NETWORK_MA_UNITY:Ljava/lang/String; = "ft_ma_unity"

.field public static final FT_NETWORK_UNITY:Ljava/lang/String; = "ft_unity"

.field public static final FT_NETWORK_UNITY_CUSTOM:Ljava/lang/String; = "ft_unity_custom"

.field public static final KEY_ABOUT_DIALOG_IMPRESSION:Ljava/lang/String; = "about_dialog_impression"

.field public static final KEY_ABOUT_DIALOG_VISIT_SITE:Ljava/lang/String; = "about_dialog_visit_site"

.field public static final KEY_ADMOB:Ljava/lang/String; = "admobSdk"

.field public static final KEY_APPNEXT:Ljava/lang/String; = "appnextSdk"

.field public static final KEY_APPNEXT_NATIVE_SDK_CLICK:Ljava/lang/String; = "appnext_native_sdk_click"

.field public static final KEY_APPNEXT_NATIVE_SDK_IMPRESSION:Ljava/lang/String; = "appnext_native_sdk_impression"

.field public static final KEY_APPNEXT_REWARDED_SDK_CLICK:Ljava/lang/String; = "appnext_rewarded_sdk_click"

.field public static final KEY_APPNEXT_REWARDED_SDK_IMPRESSION:Ljava/lang/String; = "appnext_rewarded_sdk_impression"

.field public static final KEY_APPODEAL:Ljava/lang/String; = "appodealSdk"

.field public static final KEY_CLICK_ACCEPT_PERMISSION_ACCESS_COARSE_LOCATION:Ljava/lang/String; = "click_accept_permission_access_coarse_location"

.field public static final KEY_CLICK_ACCEPT_PERMISSION_ACCESS_FINE_LOCATION:Ljava/lang/String; = "click_accept_permission_access_fine_location"

.field public static final KEY_CLICK_ACCEPT_PERMISSION_GET_ACCOUNTS:Ljava/lang/String; = "click_accept_permission_get_accounts"

.field public static final KEY_CLICK_ACCEPT_PERMISSION_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "click_accept_permission_read_external_storage"

.field public static final KEY_CLICK_ACCEPT_PERMISSION_READ_PHONE_STATE:Ljava/lang/String; = "click_accept_permission_read_phone_state"

.field public static final KEY_CLICK_ACCEPT_PERMISSION_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "click_accept_permission_write_external_storage"

.field public static final KEY_CLICK_ACCEPT_SDK_DIALOG:Ljava/lang/String; = "click_accept_sdk_dialog"

.field public static final KEY_CLICK_APP_ALREADY_INSTALLED:Ljava/lang/String; = "click_app_already_installed"

.field public static final KEY_CLICK_BANNER_BACK_KEY_PRESSED:Ljava/lang/String; = "click_banner_back_key_pressed"

.field public static final KEY_CLICK_BROWSER_BACK_KEY_PRESSED:Ljava/lang/String; = "click_browser_back_key_pressed"

.field public static final KEY_CLICK_CAN_NOT_START_DOWNLOAD:Ljava/lang/String; = "click_can_not_start_download"

.field public static final KEY_CLICK_CROSS_BANNER:Ljava/lang/String; = "click_cross_banner"

.field public static final KEY_CLICK_CROSS_MINI_BROWSER:Ljava/lang/String; = "click_cross_mini_browser"

.field public static final KEY_CLICK_DATA_TEXT_HTML_LOADED_IN_BANNER:Ljava/lang/String; = "click_data_text_html_loaded_in_banner"

.field public static final KEY_CLICK_DECLINE_PERMISSION_ACCESS_COARSE_LOCATION:Ljava/lang/String; = "click_decline_permission_access_coarse_location"

.field public static final KEY_CLICK_DECLINE_PERMISSION_ACCESS_FINE_LOCATION:Ljava/lang/String; = "click_decline_permission_access_fine_location"

.field public static final KEY_CLICK_DECLINE_PERMISSION_GET_ACCOUNTS:Ljava/lang/String; = "click_decline_permission_get_accounts"

.field public static final KEY_CLICK_DECLINE_PERMISSION_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "click_decline_permission_read_external_storage"

.field public static final KEY_CLICK_DECLINE_PERMISSION_READ_PHONE_STATE:Ljava/lang/String; = "click_decline_permission_read_phone_state"

.field public static final KEY_CLICK_DECLINE_PERMISSION_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "click_decline_permission_write_external_storage"

.field public static final KEY_CLICK_DECLINE_SDK_DIALOG:Ljava/lang/String; = "click_decline_sdk_dialog"

.field public static final KEY_CLICK_EXTERNAL_BROWSER:Ljava/lang/String; = "click_external_browser"

.field public static final KEY_CLICK_FINISH_DOWNLOAD:Ljava/lang/String; = "click_finish_download"

.field public static final KEY_CLICK_FINISH_EMPTY_HTML:Ljava/lang/String; = "click_finish_epmty_html"

.field public static final KEY_CLICK_FINISH_HTML:Ljava/lang/String; = "click_finish_html"

.field public static final KEY_CLICK_FINISH_MARKET:Ljava/lang/String; = "click_finish_market"

.field public static final KEY_CLICK_HTML_TAP_START:Ljava/lang/String; = "click_html_tap_start"

.field public static final KEY_CLICK_LOADING_ERROR:Ljava/lang/String; = "click_loading_error"

.field public static final KEY_CLICK_NO_MARKET_ON_DEVICE:Ljava/lang/String; = "click_no_market_on_device"

.field public static final KEY_CLICK_REDIRECT_START:Ljava/lang/String; = "click_redirect_start"

.field public static final KEY_CLICK_TIMER_BANNER:Ljava/lang/String; = "click_timer_banner"

.field public static final KEY_CLICK_WEBWIEW_TAP:Ljava/lang/String; = "click_webview_tap"

.field public static final KEY_FACEBOOK:Ljava/lang/String; = "facebookSdk"

.field public static final KEY_FT_BANNER_SDK_CLICK:Ljava/lang/String; = "ft_banner_sdk_click"

.field public static final KEY_FT_BANNER_SDK_ERROR:Ljava/lang/String; = "ft_banner_sdk_error"

.field public static final KEY_FT_BANNER_SDK_IMPRESSION:Ljava/lang/String; = "ft_banner_sdk_impression"

.field public static final KEY_FT_BANNER_SDK_NOFILL:Ljava/lang/String; = "ft_banner_sdk_nofill"

.field public static final KEY_FT_BANNER_SDK_REQUEST:Ljava/lang/String; = "ft_banner_sdk_request"

.field public static final KEY_FT_INTERSTITIAL_SDK_ATTEMPT:Ljava/lang/String; = "ft_interstitial_sdk_attempt"

.field public static final KEY_FT_INTERSTITIAL_SDK_CLICK:Ljava/lang/String; = "ft_interstitial_sdk_click"

.field public static final KEY_FT_INTERSTITIAL_SDK_ERROR:Ljava/lang/String; = "ft_interstitial_sdk_error"

.field public static final KEY_FT_INTERSTITIAL_SDK_IMPRESSION:Ljava/lang/String; = "ft_interstitial_sdk_impression"

.field public static final KEY_FT_INTERSTITIAL_SDK_NOFILL:Ljava/lang/String; = "ft_interstitial_sdk_nofill"

.field public static final KEY_FT_INTERSTITIAL_SDK_REQUEST:Ljava/lang/String; = "ft_interstitial_sdk_request"

.field public static final KEY_FT_NATIVE_SDK_ATTEMPT:Ljava/lang/String; = "ft_native_sdk_attempt"

.field public static final KEY_FT_NATIVE_SDK_CLICK:Ljava/lang/String; = "ft_native_sdk_click"

.field public static final KEY_FT_NATIVE_SDK_ERROR:Ljava/lang/String; = "ft_native_sdk_error"

.field public static final KEY_FT_NATIVE_SDK_IMPRESSION:Ljava/lang/String; = "ft_native_sdk_impression"

.field public static final KEY_FT_NATIVE_SDK_NOFILL:Ljava/lang/String; = "ft_native_sdk_nofill"

.field public static final KEY_FT_NATIVE_SDK_REQUEST:Ljava/lang/String; = "ft_native_sdk_request"

.field public static final KEY_FT_REWARDED_SDK_ATTEMPT:Ljava/lang/String; = "ft_rewarded_sdk_attempt"

.field public static final KEY_FT_REWARDED_SDK_CLICK:Ljava/lang/String; = "ft_rewarded_sdk_click"

.field public static final KEY_FT_REWARDED_SDK_COMPLETION:Ljava/lang/String; = "ft_rewarded_sdk_completion"

.field public static final KEY_FT_REWARDED_SDK_ERROR:Ljava/lang/String; = "ft_rewarded_sdk_error"

.field public static final KEY_FT_REWARDED_SDK_IMPRESSION:Ljava/lang/String; = "ft_rewarded_sdk_impression"

.field public static final KEY_FT_REWARDED_SDK_NOFILL:Ljava/lang/String; = "ft_rewarded_sdk_nofill"

.field public static final KEY_FT_REWARDED_SDK_REQUEST:Ljava/lang/String; = "ft_rewarded_sdk_request"

.field public static final KEY_GET_PARAM_DETAILS:Ljava/lang/String; = "details"

.field public static final KEY_GET_PARAM_URL:Ljava/lang/String; = "url"

.field public static final KEY_HTML:Ljava/lang/String; = "htmlSdk"

.field public static final KEY_INAPP_ACCESS_NEW_PURCHASE:Ljava/lang/String; = "inapp_access_new_purchase"

.field public static final KEY_INAPP_ACCESS_PRODUCT_LOADED:Ljava/lang/String; = "inapp_access_products_loaded"

.field public static final KEY_INAPP_DISABLE_ADS_ACKNOWLEDGED:Ljava/lang/String; = "inapp_disable_ads_acknowledged"

.field public static final KEY_INAPP_DISABLE_ADS_CANCELED:Ljava/lang/String; = "inapp_disable_ads_canceled"

.field public static final KEY_INAPP_DISABLE_ADS_NEW_PURCHASE:Ljava/lang/String; = "inapp_disable_ads_new_purchase"

.field public static final KEY_INAPP_DISABLE_ADS_PENDING:Ljava/lang/String; = "inapp_disable_ads_pending"

.field public static final KEY_INAPP_DISABLE_ADS_PRODUCT_LOADED:Ljava/lang/String; = "inapp_disable_ads_products_loaded"

.field public static final KEY_INIT_ERROR:Ljava/lang/String; = "init_error"

.field public static final KEY_MULTIADS:Ljava/lang/String; = "multiAdsSdk"

.field public static final KEY_NATIVE_INTERSTITIAL_CLICK_URL:Ljava/lang/String; = "native_interstitial_click_url"

.field public static final KEY_NATIVE_INTERSTITIAL_IMPRESSION_URL:Ljava/lang/String; = "native_interstitial_impression_url"

.field public static final KEY_OFFERWALL_OPENED:Ljava/lang/String; = "offer_wall_opened"

.field public static final KEY_ONESIGNAL_PUSH_RECEIVED:Ljava/lang/String; = "onesignal_push_received"

.field public static final KEY_RMA_FEEDBACKS:Ljava/lang/String; = "rma_dialog_feedback_clicks"

.field public static final KEY_RMA_IMPRESSIONS:Ljava/lang/String; = "rma_dialog_impressions"

.field public static final KEY_RMA_RATES:Ljava/lang/String; = "rma_dialog_rate_clicks"

.field public static final KEY_SILVERMOB_INTERSTITIAL_CLICK_URL:Ljava/lang/String; = "silvermob_interstitial_click_url"

.field public static final KEY_SILVERMOB_INTERSTITIAL_CLOSE_URL:Ljava/lang/String; = "silvermob_interstitial_close_url"

.field public static final KEY_SILVERMOB_INTERSTITIAL_ERROR_URL:Ljava/lang/String; = "silvermob_interstitial_error_url"

.field public static final KEY_SILVERMOB_INTERSTITIAL_IMPRESSION_URL:Ljava/lang/String; = "silvermob_interstitial_impression_url"

.field public static final KEY_SILVERMOB_INTERSTITIAL_LOADED_URL:Ljava/lang/String; = "silvermob_interstitial_loaded_url"

.field public static final KEY_SILVERMOB_INTERSTITIAL_NO_FILL_URL:Ljava/lang/String; = "silvermob_interstitial_no_fill_url"

.field public static final KEY_SILVERMOB_INTERSTITIAL_REQUEST_URL:Ljava/lang/String; = "silvermob_interstitial_request_url"

.field public static final KEY_UNITY:Ljava/lang/String; = "unitySdk"

.field private static final LOG:Ljava/lang/String; = "StatController"

.field private static final TEMPLATE_VERSION_URL_KEY:Ljava/lang/String; = "templateversion"

.field private static instance:Lcom/appsgeyser/sdk/server/StatController;


# instance fields
.field private items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateQueryParametersForSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;Lcom/appsgeyser/sdk/server/StatController$AdsType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;",
            "Landroid/content/Context;",
            "Lcom/appsgeyser/sdk/server/StatController$AdsType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 263
    const-string v1, "wdid"

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "guid"

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string p1, "details"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object p1, Lcom/appsgeyser/sdk/server/StatController$AdsType;->NATIVE:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    if-ne p2, p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAdsNetworkSdk()Ljava/util/Map;

    move-result-object p1

    .line 272
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 273
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAdsNetworkSdk()Ljava/util/Map;

    move-result-object p0

    .line 275
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 276
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getBannerId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 277
    :cond_0
    sget-object p1, Lcom/appsgeyser/sdk/server/StatController$AdsType;->REWARDED:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    if-ne p2, p1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRewardedVideoSdk()Ljava/util/Map;

    move-result-object p1

    .line 279
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 280
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRewardedVideoSdk()Ljava/util/Map;

    move-result-object p0

    .line 282
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 283
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getBannerId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 284
    :cond_1
    sget-object p1, Lcom/appsgeyser/sdk/server/StatController$AdsType;->FULLSCREEN:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    if-ne p2, p1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getFullscreenSdk()Ljava/util/Map;

    move-result-object p1

    .line 286
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 287
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getFullscreenSdk()Ljava/util/Map;

    move-result-object p0

    .line 289
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    .line 290
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getBannerId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 284
    :cond_2
    const-string p1, ""

    move-object p0, p1

    .line 293
    :goto_0
    const-string p2, "uniqid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string p1, "bannerid"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/appsgeyser/sdk/server/StatController;
    .locals 2

    const-class v0, Lcom/appsgeyser/sdk/server/StatController;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/appsgeyser/sdk/server/StatController;->instance:Lcom/appsgeyser/sdk/server/StatController;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Lcom/appsgeyser/sdk/server/StatController;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/server/StatController;-><init>()V

    sput-object v1, Lcom/appsgeyser/sdk/server/StatController;->instance:Lcom/appsgeyser/sdk/server/StatController;

    .line 169
    :cond_0
    sget-object v1, Lcom/appsgeyser/sdk/server/StatController;->instance:Lcom/appsgeyser/sdk/server/StatController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isInitialized()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/StatController;->items:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendQueryToYandexMetrica(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 243
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 245
    :goto_0
    invoke-static {p1, p2}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public init(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/StatController;->items:Ljava/util/HashMap;

    return-void
.end method

.method public sendRequestAsyncByKey(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void
.end method

.method public sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 192
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfoMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 195
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 198
    :cond_0
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p3

    .line 199
    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 202
    const-string p4, "templateversion"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/server/StatController;->sendQueryToYandexMetrica(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 208
    invoke-direct {p0}, Lcom/appsgeyser/sdk/server/StatController;->isInitialized()Z

    move-result p3

    const-string p4, "StatController"

    if-nez p3, :cond_2

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "StatController not initialized, skipping stat request on: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_2
    iget-object p3, p0, Lcom/appsgeyser/sdk/server/StatController;->items:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_3

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Stat url not set, skipping stat request on: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 219
    :cond_3
    new-instance p1, Lcom/appsgeyser/sdk/server/StatController$1;

    invoke-direct {p1, p0, p3, p2}, Lcom/appsgeyser/sdk/server/StatController$1;-><init>(Lcom/appsgeyser/sdk/server/StatController;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 236
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/server/StatController$1;->start()V

    return-void
.end method
