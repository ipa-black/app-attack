.class public Lcom/appsgeyser/sdk/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/behavior/BehaviorAcceptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsgeyserSDK"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

.field private browser:Landroid/webkit/WebView;

.field private browserClient:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;

.field private isAdmobInitialized:Z

.field private networkListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

.field private uniqueId:Ljava/lang/String;

.field private wasPausedBefore:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->wasPausedBefore:Z

    .line 42
    const-string v0, "-1"

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->uniqueId:Ljava/lang/String;

    .line 43
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->isAdmobInitialized:Z

    .line 47
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/AdView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->wasPausedBefore:Z

    .line 42
    const-string p2, "-1"

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/AdView;->uniqueId:Ljava/lang/String;

    .line 43
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->isAdmobInitialized:Z

    .line 52
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/AdView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/AdView;)Lcom/appsgeyser/sdk/ads/AdsLoader;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/ads/AdView;->initWithDeviceIdParameters(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->activity:Landroid/app/Activity;

    .line 57
    new-instance v0, Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    .line 58
    new-instance v0, Lcom/appsgeyser/sdk/ads/AdView$1;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appsgeyser/sdk/ads/AdView$1;-><init>(Lcom/appsgeyser/sdk/ads/AdView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->networkListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 71
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->networkListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/InternalEntryPoint;->addNetworkListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;Landroid/content/Context;)V

    const/16 v0, 0x8

    .line 73
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/sdk/ads/AdView$2;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/AdView$2;-><init>(Lcom/appsgeyser/sdk/ads/AdView;)V

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getDeviceIdParameters()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->initWithDeviceIdParameters(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    :goto_0
    return-void

    .line 80
    :cond_2
    :goto_1
    const-string v0, "AppsgeyserSDK"

    const-string v1, "You have to grant ACCESS_NETWORK_STATE and INTERNET permissions to work properly"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initWithDeviceIdParameters(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    .line 104
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->init(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    .line 109
    new-instance p1, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {p1, p0, v0}, Lcom/appsgeyser/sdk/ads/AdsHeaderReceiver;-><init>(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    .line 110
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->setAdsLoadingFinishedListener(Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;)V

    .line 111
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->setHeaderReceiver(Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;)V

    .line 113
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    new-instance v0, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-direct {v0, p0, v1}, Lcom/appsgeyser/sdk/ads/BannerJavascriptInterface;-><init>(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    const-string v1, "AppsgeyserBanner"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;

    invoke-direct {p1}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browserClient:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;

    .line 117
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->setOnPageFinishedListener(Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;)V

    .line 118
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browserClient:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {p1, v0}, Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;->setOnPageStartedListener(Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;)V

    .line 120
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    new-instance v0, Lcom/appsgeyser/sdk/ads/AdView$3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/AdView$3;-><init>(Lcom/appsgeyser/sdk/ads/AdView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browserClient:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 140
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->applyDefaultSettings()V

    .line 144
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V

    return-void
.end method


# virtual methods
.method public acceptBehavior(Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;)V
    .locals 1

    .line 177
    instance-of v0, p1, Lcom/appsgeyser/sdk/ads/behavior/bannerBehaviors/AdViewBehavior;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {p1, p0}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;->visit(Lcom/appsgeyser/sdk/ads/behavior/BehaviorAcceptor;)V

    :cond_0
    return-void
.end method

.method public addJsCode(Ljava/lang/String;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function(){ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " })()"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public applyDefaultSettings()V
    .locals 5

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 160
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 162
    const-string v3, "appcache"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 163
    const-string v3, "databases"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 164
    const-string v4, "geolocation"

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 165
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 166
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBrowser()Landroid/webkit/WebView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 183
    const-string v0, "AppsgeyserSDK"

    const-string v1, "Hiding banner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 184
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/appsgeyser/sdk/ads/AdView$4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/AdView$4;-><init>(Lcom/appsgeyser/sdk/ads/AdView;)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    .line 220
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 223
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 224
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->wasPausedBefore:Z

    .line 225
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->stopLoading()V

    .line 226
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->networkListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->removeNetworkListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->adsLoader:Lcom/appsgeyser/sdk/ads/AdsLoader;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 235
    new-instance v0, Lcom/appsgeyser/sdk/ads/AdView$5;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/AdView$5;-><init>(Lcom/appsgeyser/sdk/ads/AdView;)V

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->post(Ljava/lang/Runnable;)Z

    .line 241
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->wasPausedBefore:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/AdView;->init()V

    :cond_0
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 2

    .line 192
    const-string v0, "AppsgeyserSDK"

    const-string v1, "Showing banner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdView;->browserClient:Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method public switchToHtmlBanner()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdView;->browser:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
