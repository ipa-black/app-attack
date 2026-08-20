.class public Lcom/amazon/device/ads/DTBAdView;
.super Landroid/webkit/WebView;
.source "DTBAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdView$WebBridge;
    }
.end annotation


# static fields
.field static final ADDITIONAL_WEBVIEW_METRICS:Ljava/lang/String; = "additional_webview_metric"

.field static final AD_INFO_FEATURE:Ljava/lang/String; = "webviewAdInfo_feature"

.field public static final AMAZON_AD_INFO:Ljava/lang/String; = "amazon_ad_info"

.field static final AMAZON_BRIDGE:Ljava/lang/String; = "amzn_bridge"

.field private static final AMAZON_INFO:Ljava/lang/String; = "{bidID:\'%s\',aaxHost:\'%s\'}"

.field public static final BID_HTML:Ljava/lang/String; = "bid_html_template"

.field public static final BID_IDENTIFIER:Ljava/lang/String; = "bid_identifier"

.field private static final ENV_TEMPLATE:Ljava/lang/String; = "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,impFired:true};"

.field private static final ENV_TEMPLATE_INFO:Ljava/lang/String; = "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,amznAdInfo:%s,impFired:true};"

.field public static final EVENT_SERVER_PARAMETER:Ljava/lang/String; = "event_server_parameter"

.field public static final EXPECTED_HEIGHT:Ljava/lang/String; = "expected_height"

.field public static final EXPECTED_WIDTH:Ljava/lang/String; = "expected_width"

.field public static final HOSTNAME_IDENTIFIER:Ljava/lang/String; = "hostname_identifier"

.field static final LOG_TAG:Ljava/lang/String; = "DTBAdView"

.field static final MRAID_IDENTIFIER:Ljava/lang/String; = "MRAID_ENV"

.field public static final REQUEST_QUEUE:Ljava/lang/String; = "amazon_request_queue"

.field public static final SMARTBANNER_STATE:Ljava/lang/String; = "smart_banner_state"

.field public static final START_LOAD_TIME:Ljava/lang/String; = "start_load_time"

.field public static final VIDEO:Ljava/lang/String; = "video_flag"

.field static final VIDEO_COMPLETE_EVENT:Ljava/lang/String; = "AD_VIDEO_PLAYER_COMPLETED"

.field static final VIDEO_EVENT_JSON_SUBTYPE:Ljava/lang/String; = "subtype"

.field static final VIDEO_EVENT_JS_COMMAND_TYPE:Ljava/lang/String; = "apsvid"


# instance fields
.field private bidId:Ljava/lang/String;

.field private controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

.field private exposurePercent:I

.field focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private hostname:Ljava/lang/String;

.field private ignoreDetachment:Z

.field private isFirstDisplay:Z

.field private isVideo:Z

.field private isVisible:Z

.field private localOnly:Z

.field scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private scrollEnabled:Z

.field private startTime:J

.field supportClient:Lcom/amazon/device/ads/DTBAdViewSupportClient;

.field private timeClicked:J

.field private timePressed:J

.field private webBridge:Lcom/amazon/device/ads/DTBAdView$WebBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdBannerListener;)V
    .locals 2

    .line 143
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    .line 102
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    .line 104
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 108
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->isLocalSourcesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    .line 128
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 145
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;-><init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdBannerListener;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 146
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->commonInit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to initialize DTBAdView class with DTBAdBannerListener"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object p2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {p2, v1, v0, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    .line 102
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    .line 104
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 108
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->isLocalSourcesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    .line 128
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 159
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    invoke-direct {p1, p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    .line 160
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 161
    invoke-static {p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->findControllerByIndex(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->setMasterController(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    check-cast p1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    invoke-interface {p2, p1}, Lcom/amazon/device/ads/DTBAdExpandedListener;->onCreateExpandedController(Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;)V

    .line 163
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->commonInit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Fail to initialize DTBAdView class with DTBAdExpandedListener"

    invoke-static {p2, p3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object p2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v0, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {p2, v0, p3, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 2

    .line 133
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    .line 102
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    .line 104
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 108
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->isLocalSourcesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    .line 128
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 135
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;-><init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 136
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->commonInit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to initialize DTBAdView class with DTBAdInterstitialListener"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object p2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {p2, v1, v0, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->verifyIsVisible()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/DTBAdView;)Lcom/amazon/device/ads/DTBAdMRAIDController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-object p0
.end method

.method private commonInit()V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 227
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 233
    new-instance v0, Lcom/amazon/device/ads/DTBAdViewSupportClient;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/DTBAdViewSupportClient;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdMRAIDController;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->supportClient:Lcom/amazon/device/ads/DTBAdViewSupportClient;

    .line 234
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdView;->setScrollEnabled(Z)V

    .line 238
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$WebBridge;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$WebBridge;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->webBridge:Lcom/amazon/device/ads/DTBAdView$WebBridge;

    .line 239
    const-string v1, "amzn_bridge"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->init()V

    .line 245
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$1;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 251
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$2;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 258
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$3;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 264
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda0;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private computeExposureInScrollView(Landroid/widget/ScrollView;Z)V
    .locals 11

    .line 498
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1020002

    .line 503
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 508
    new-array v2, v1, [I

    .line 509
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 510
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v3, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 512
    new-array v0, v1, [I

    .line 513
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 514
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v5

    mul-int/2addr v2, v5

    int-to-float v2, v2

    .line 515
    new-instance v5, Landroid/graphics/Rect;

    aget v7, v0, v4

    aget v8, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v10

    add-int/2addr v0, v10

    invoke-direct {v5, v7, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_2

    .line 518
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 520
    :cond_2
    new-array v0, v1, [I

    .line 521
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 522
    new-instance v1, Landroid/graphics/Rect;

    aget v7, v0, v4

    aget v8, v0, v6

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v7, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 523
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 524
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 527
    :goto_0
    iget p1, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    div-float/2addr p1, v2

    float-to-int v4, p1

    .line 534
    :cond_3
    iget p1, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    if-ne v4, p1, :cond_4

    if-eqz p2, :cond_5

    .line 535
    :cond_4
    iput v4, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 536
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    .line 537
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCurrentPositionProperty()V

    :cond_5
    return-void
.end method

.method private getScrollViewParent()Landroid/widget/ScrollView;
    .locals 2

    move-object v0, p0

    .line 483
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 484
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 487
    :cond_0
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 488
    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    .line 490
    :cond_1
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 275
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    const-string v1, "</script>"

    const-string v2, "<script>"

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->getInstance()Lcom/amazon/device/ads/WebResourceService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebResourceService;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 286
    :catch_0
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to read local file"

    invoke-static {v0, v3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 292
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 294
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 301
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 302
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 298
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 304
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error reading file:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    .line 306
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private setIsVisible(Z)V
    .locals 2

    .line 543
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 546
    iput p1, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 547
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz p1, :cond_0

    .line 548
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private verifyIsVisible()V
    .locals 10

    .line 331
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 341
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 343
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 347
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    :cond_2
    return-void

    :cond_3
    const v2, 0x1020002

    .line 353
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 355
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 359
    :cond_4
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x2

    .line 364
    new-array v3, v2, [I

    .line 365
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 366
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v1

    const/4 v6, 0x1

    aget v7, v3, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v3, v3, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    invoke-direct {v4, v5, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 368
    new-array v0, v2, [I

    .line 369
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 370
    new-instance v3, Landroid/graphics/Rect;

    aget v5, v0, v1

    aget v7, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v9

    add-int/2addr v0, v9

    invoke-direct {v3, v5, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 373
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_e

    .line 374
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_7

    .line 375
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 377
    :cond_7
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    .line 378
    const-string v0, "SET MRAID Visible false because of root"

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_8
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->getScrollViewParent()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 384
    new-array v2, v2, [I

    .line 385
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 386
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v1

    aget v7, v2, v6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v4, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 387
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_a

    .line 388
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_9

    .line 389
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 391
    :cond_9
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    .line 392
    const-string v0, "SET MRAID Visible false because of scroll "

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_a
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-nez v0, :cond_e

    .line 394
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_b

    .line 395
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 397
    :cond_b
    invoke-direct {p0, v6}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    .line 398
    const-string v0, "SET MRAID Visible true because of scroll "

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_c
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-nez v1, :cond_d

    .line 402
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 404
    :cond_d
    invoke-direct {p0, v6}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    .line 408
    :cond_e
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_f

    .line 409
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->computeExposure()V

    :cond_f
    return-void

    .line 332
    :cond_10
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_12

    .line 333
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_11

    .line 334
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 336
    :cond_11
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    :cond_12
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    .line 215
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->customButtonListener:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    .line 216
    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-void
.end method

.method computeExposure()V
    .locals 1

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->computeExposure(Z)V

    return-void
.end method

.method computeExposure(Z)V
    .locals 6

    .line 418
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->getScrollViewParent()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->computeExposureInScrollView(Landroid/widget/ScrollView;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 422
    new-array v0, v0, [I

    .line 423
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 424
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 425
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->computeExposureInRootView(Z)V

    .line 427
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onPositionChanged(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method computeExposureInRootView()V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->computeExposureInRootView(Z)V

    return-void
.end method

.method computeExposureInRootView(Z)V
    .locals 9

    .line 438
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 439
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x1020002

    .line 444
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    .line 448
    new-array v2, v1, [I

    .line 449
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 450
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v3, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 452
    new-array v0, v1, [I

    .line 453
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationOnScreen([I)V

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v5, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v7

    add-int/2addr v7, v2

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    invoke-direct {v1, v2, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 455
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    .line 456
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    float-to-double v5, v2

    mul-double/2addr v5, v3

    float-to-double v2, v0

    div-double/2addr v5, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v2

    double-to-int v0, v5

    .line 459
    iget v2, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_6

    .line 460
    :cond_3
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 461
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 465
    :cond_4
    iget v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 466
    :cond_5
    iput v4, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 467
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 468
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iget v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    :cond_6
    :goto_1
    return-void
.end method

.method detectAdClick(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 875
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    iget-wide v2, p0, Lcom/amazon/device/ads/DTBAdView;->timeClicked:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    goto :goto_0

    .line 882
    :cond_1
    iget-wide v2, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    .line 883
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->timeClicked:J

    .line 884
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdClicked()V

    :cond_2
    const-wide/16 v0, 0x0

    .line 886
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    goto :goto_0

    .line 890
    :cond_3
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 707
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public fetchAd(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public fetchAd(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 593
    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    .line 603
    :try_start_0
    const-string p1, "bid_html_template"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 606
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    instance-of v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz v1, :cond_1

    .line 607
    check-cast v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    .line 608
    const-string v1, "expected_width"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 609
    const-string v3, "expected_height"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 611
    instance-of v3, v0, Lcom/amazon/device/ads/DTBExpectedSizeProvider;

    if-eqz v3, :cond_1

    .line 612
    check-cast v0, Lcom/amazon/device/ads/DTBExpectedSizeProvider;

    .line 613
    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBExpectedSizeProvider;->setExpectedWidth(I)V

    .line 614
    invoke-interface {v0, v2}, Lcom/amazon/device/ads/DTBExpectedSizeProvider;->setExpectedHeight(I)V

    .line 619
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;

    move-result-object v0

    const-string v1, "webviewAdInfo_feature"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "hostname_identifier"

    const-string v2, "bid_identifier"

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 620
    :try_start_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 621
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;->getAdInfo(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 622
    const-string v0, "amazon_ad_info"

    const-string v3, "{bidID:\'%s\',aaxHost:\'%s\'}"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 627
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->bidId:Ljava/lang/String;

    .line 628
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->hostname:Ljava/lang/String;

    .line 629
    const-string v0, "video_flag"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVideo:Z

    .line 631
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->startTime:J

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    const-string v1, "<!DOCTYPE html><html><head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, "<script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/DTBAdView;->getEnvironment(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 640
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string p2, "</script>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string p2, "aps-mraid"

    invoke-direct {p0, p2, v0}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 644
    const-string p2, "dtb-m"

    invoke-direct {p0, p2, v0}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 645
    invoke-static {}, Lcom/amazon/device/ads/DtbOmSdkSessionManager;->getFeatureEnableFlag()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 646
    const-string p2, "omsdk-v1"

    invoke-direct {p0, p2, v0}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 649
    :cond_4
    const-string p2, "</head>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string p2, "<body style=\'margin:0;padding:0;\'>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string p1, "</body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;

    move-result-object p1

    const-string p2, "additional_webview_metric"

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 655
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Creative Rendering started"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object p2

    instance-of p2, p2, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz p2, :cond_5

    .line 657
    const-string p2, " bannerCreativeBidId = %s"

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->bidId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_1

    .line 659
    :cond_5
    const-string p2, " interstitialCreativeBidId = %s"

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->bidId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 661
    :goto_1
    sget-object p2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventType;->LOG:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;)V

    .line 664
    :cond_6
    const-string v1, "https://c.amazon-adsystem.com/"

    .line 665
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    .line 664
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/device/ads/DTBAdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 667
    :goto_2
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to execute fetchAd method with bundle"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object p2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {p2, v1, v0, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public fetchAd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 558
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->initializeEmptyBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 560
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 562
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 563
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 565
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 566
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 567
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 568
    :cond_3
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 569
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 573
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 575
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to execute fetchAd method with map bundle"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object p2, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {p2, v1, v0, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public fetchAd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fetchAdWithLocation(Ljava/lang/String;)V
    .locals 9

    .line 687
    const-string v0, "</script>"

    const-string v1, "<script>"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 689
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/DTBAdView;->getEnvironment(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v3, "aps-mraid"

    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 693
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v1, "window.location=\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v4, "https://c.amazon-adsystem.com/"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/device/ads/DTBAdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 699
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute fetchAdWithLocation method"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v2, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 4

    .line 856
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 857
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 858
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 860
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute finalize method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v3, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v1, v3, v2, v0}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method getAdInfo(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 674
    const-string v0, "amzn.dtb.loadAd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const-string v0, "amzn.dtb.loadAd\\(\\\".*\\\", \\\"(.*)\\\", \\\"(.*)\\\".*isv: (\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 677
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 678
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bid_identifier"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 679
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hostname_identifier"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "video_flag"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method getBidId()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->bidId:Ljava/lang/String;

    return-object v0
.end method

.method getController()Lcom/amazon/device/ads/DTBAdMRAIDController;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-object v0
.end method

.method getEnvironment(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    .line 805
    const-string v0, "amazon_ad_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v7, p1

    .line 807
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 809
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 810
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 811
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 812
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/DtbSharedPreferences;->getIdfa()Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    const-string p1, "unknown"

    :cond_1
    move-object v4, p1

    .line 816
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/DtbSharedPreferences;->getOptOut()Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 819
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_2
    move-object v5, p1

    .line 821
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v7, :cond_3

    .line 824
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->getSDKMRAIDVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9.5.4"

    const-string v0, "3.0"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,impFired:true};"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 826
    :cond_3
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->getSDKMRAIDVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9.5.4"

    const-string v0, "3.0"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,amznAdInfo:%s,impFired:true};"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getHostname()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method getStartTime()J
    .locals 2

    .line 476
    iget-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->startTime:J

    return-wide v0
.end method

.method isVideo()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVideo:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    return v0
.end method

.method synthetic lambda$commonInit$0$com-amazon-device-ads-DTBAdView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 265
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/DTBAdView;->detectAdClick(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadUrl$1$com-amazon-device-ads-DTBAdView(Ljava/lang/String;)V
    .locals 0

    .line 906
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    const-string v0, "WebView is corrupted. loadUrl method will not be executed. URL:"

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->supportClient:Lcom/amazon/device/ads/DTBAdViewSupportClient;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdViewSupportClient;->isCrashed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v2, Lcom/amazon/aps/shared/analytics/APSEventType;->LOG:Lcom/amazon/aps/shared/analytics/APSEventType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;)V

    return-void

    .line 906
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/DTBAdView$$ExternalSyntheticLambda1;-><init>(Lcom/amazon/device/ads/DTBAdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 908
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to execute loadUrl method"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v0, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->FATAL:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v2, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v0, v2, v1, p1}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method onAdRemoved()V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getDtbOmSdkSessionManager()Lcom/amazon/device/ads/DtbOmSdkSessionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getDtbOmSdkSessionManager()Lcom/amazon/device/ads/DtbOmSdkSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbOmSdkSessionManager;->stopOmAdSession()V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdRemoved()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 195
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 197
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 198
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 201
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdOpened(Lcom/amazon/device/ads/DTBAdView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 206
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute onAttachedToWindow method in DTBAdView class"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v3, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v1, v3, v2, v0}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 176
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 178
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    .line 183
    instance-of v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getDtbOmSdkSessionManager()Lcom/amazon/device/ads/DtbOmSdkSessionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getDtbOmSdkSessionManager()Lcom/amazon/device/ads/DtbOmSdkSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbOmSdkSessionManager;->stopOmAdSession()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute onDetachedFromWindow method in DTBAdView class"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v1, Lcom/amazon/aps/shared/analytics/APSEventSeverity;->ERROR:Lcom/amazon/aps/shared/analytics/APSEventSeverity;

    sget-object v3, Lcom/amazon/aps/shared/analytics/APSEventType;->EXCEPTION:Lcom/amazon/aps/shared/analytics/APSEventType;

    invoke-static {v1, v3, v2, v0}, Lcom/amazon/aps/shared/APSAnalytics;->logEvent(Lcom/amazon/aps/shared/analytics/APSEventSeverity;Lcom/amazon/aps/shared/analytics/APSEventType;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 311
    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    if-eqz p1, :cond_2

    .line 312
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->getInstance()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isTestMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->getInstance()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    const-string v0, "AD displayed"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/DTBTimeTrace;->addPhase(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->getInstance()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBTimeTrace;->logTrace()V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    instance-of v0, p1, Lcom/amazon/device/ads/DTBAdViewDisplayListener;

    if-eqz v0, :cond_1

    .line 319
    check-cast p1, Lcom/amazon/device/ads/DTBAdViewDisplayListener;

    .line 320
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBAdViewDisplayListener;->onInitialDisplay()V

    :cond_1
    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    :cond_2
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 835
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    if-eqz v0, :cond_0

    .line 836
    invoke-super {p0, p1, p2, p4, p3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 838
    invoke-virtual {p0, p1, p1}, Lcom/amazon/device/ads/DTBAdView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method setIgnoreDetachment()V
    .locals 1

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    return-void
.end method

.method setScrollEnabled(Z)V
    .locals 0

    .line 847
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    .line 849
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->setVerticalScrollBarEnabled(Z)V

    .line 850
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method
