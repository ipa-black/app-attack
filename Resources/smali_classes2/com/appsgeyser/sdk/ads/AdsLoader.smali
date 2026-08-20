.class public Lcom/appsgeyser/sdk/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"

# interfaces
.implements Lcom/appsgeyser/sdk/ads/behavior/BehaviorAcceptor;
.implements Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageFinishedListener;
.implements Lcom/appsgeyser/sdk/ads/AdsBannerWebViewClient$OnPageStartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;,
        Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;
    }
.end annotation


# static fields
.field private static final AD_DELAY:I = 0x3e8

.field private static final AD_DELAY_PERIOD:I = 0x64


# instance fields
.field private final DEFAULT_HIDE_TIMEOUT:F

.field private adView:Lcom/appsgeyser/sdk/ads/AdView;

.field private bannerUrl:Ljava/lang/String;

.field private clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

.field private clickUrl:Ljava/lang/String;

.field private closeBannerThread:Ljava/lang/Thread;

.field private headersReceiver:Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;

.field private loadingFinishedListener:Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;

.field private openInNativeBrowser:Z

.field private refreshTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x476a6000    # 60000.0f

    .line 40
    iput v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->DEFAULT_HIDE_TIMEOUT:F

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->closeBannerThread:Ljava/lang/Thread;

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->refreshTimer:Ljava/util/Timer;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->openInNativeBrowser:Z

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/AdsLoader;)Ljava/util/Timer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->refreshTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/AdsLoader;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->bannerUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/AdsLoader;)Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->headersReceiver:Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;

    return-object p0
.end method

.method private createBannerUrl(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)Ljava/lang/String;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getLimitAdTrackingEnabled()Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/deviceidparser/LimitAdTrackingEnabledStates;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getaId()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "&advid="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&limit_ad_tracking_enabled="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&aid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_1
    const-string p1, "&hid=&aid="

    .line 120
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?widgetid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&v=2.48.s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "&tlat=&tlon=&p=android&sdk=1&templateversion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 128
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://ads.appsgeyser.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setDefaults()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const v0, 0x476a6000    # 60000.0f

    .line 235
    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->setHideTimeout(F)V

    .line 236
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->applyDefaultSettings()V

    return-void
.end method


# virtual methods
.method public acceptBehavior(Lcom/appsgeyser/sdk/ads/behavior/BehaviorVisitor;)V
    .locals 1

    .line 227
    instance-of v0, p1, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;

    .line 229
    invoke-virtual {p1, p0}, Lcom/appsgeyser/sdk/ads/behavior/loaderBehaviors/LoaderBehavior;->visit(Lcom/appsgeyser/sdk/ads/behavior/BehaviorAcceptor;)V

    :cond_0
    return-void
.end method

.method public changeClickBehavior(Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    return-void
.end method

.method forceOpenInNativeBrowser(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->openInNativeBrowser:Z

    return-void
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method init(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    .line 63
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/appsgeyser/sdk/ads/AdsLoader$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$1;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/ads/AdsLoader;->createBannerUrl(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->bannerUrl:Ljava/lang/String;

    .line 84
    sget-object p1, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 86
    new-instance p1, Lcom/appsgeyser/sdk/ads/AdsLoader$2;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$2;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->closeBannerThread:Ljava/lang/Thread;

    return-void
.end method

.method public loadFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 303
    const-string p1, "data:text/html,chromewebdata"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "about:blank"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdView;->show()V

    .line 307
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdView;->switchToHtmlBanner()V

    .line 309
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/BannerUtils;->isDataTextHtmlUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->setDefaults()V

    .line 312
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->loadingFinishedListener:Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;

    if-eqz p1, :cond_3

    .line 313
    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;->onAdLoadFinished()V

    goto :goto_1

    .line 304
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdView;->hide()V

    :cond_3
    :goto_1
    return-void
.end method

.method public loadStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V

    return p3

    .line 246
    :cond_0
    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/EndpointGetter;->getUrlWithoutArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->bannerUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/appsgeyser/sdk/utils/EndpointGetter;->getUrlWithoutArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/appsgeyser/sdk/utils/BannerUtils;->isDataTextHtmlUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 251
    invoke-static {}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->getInstance()Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->isClickAllowed()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 255
    :try_start_0
    const-string p3, "UTF-8"

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 257
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p2, "-1"

    .line 259
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "javascript:processACWithUrl(\'"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\')"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0

    .line 262
    :cond_1
    invoke-static {}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->getInstance()Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/ads/CorrectClickStateHolder;->reset()V

    .line 263
    const-string p3, "AUTOCLICK_DETECT"

    const-string v1, "click ALLOWED!"

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    sget-object v1, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    if-ne p3, v1, :cond_2

    .line 267
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/ads/AdView;->hide()V

    .line 268
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->refreshTimer:Ljava/util/Timer;

    invoke-virtual {p3}, Ljava/util/Timer;->cancel()V

    goto :goto_1

    .line 269
    :cond_2
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickBehavior:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    sget-object v1, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    if-ne p3, v1, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/AdsLoader;->reload()V

    .line 273
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 277
    iget-boolean p3, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->openInNativeBrowser:Z

    if-eqz p3, :cond_4

    .line 278
    new-instance p3, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    const-string v1, "browser_url"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string p2, "banner_type"

    const-string v1, "banner_type_small"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/ads/AdView;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "uniqid"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 282
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 284
    :cond_4
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 287
    :goto_2
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 290
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p2

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendClickInfo(Ljava/lang/String;Landroid/content/Context;)V

    .line 291
    const-string p1, "small_banner_clicked"

    invoke-static {p1}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;)V

    :cond_5
    return v0

    .line 297
    :cond_6
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdView;->switchToHtmlBanner()V

    return p3
.end method

.method proceedClick(Ljava/lang/String;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/AdsLoader$6;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/ads/AdsLoader$6;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->getBrowser()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/AdsLoader$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$3;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method reload()V
    .locals 2

    .line 162
    :try_start_0
    new-instance v0, Lcom/appsgeyser/sdk/ads/AdsLoader$4;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$4;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    const-string v1, "AdsLoader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setAdsLoadingFinishedListener(Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->loadingFinishedListener:Lcom/appsgeyser/sdk/ads/AdsLoader$AdsLoadingFinishedListener;

    return-void
.end method

.method setClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method setHeaderReceiver(Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->headersReceiver:Lcom/appsgeyser/sdk/ads/AdsLoader$HeadersReceiver;

    return-void
.end method

.method public setHideTimeout(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const p1, 0x476a6000    # 60000.0f

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->closeBannerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/AdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->closeBannerThread:Ljava/lang/Thread;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v2

    float-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsgeyser/sdk/ads/AdView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setRefreshTimeout(F)V
    .locals 7

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->refreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 205
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->refreshTimer:Ljava/util/Timer;

    .line 207
    new-instance v2, Lcom/appsgeyser/sdk/ads/AdsLoader$5;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/AdsLoader$5;-><init>(Lcom/appsgeyser/sdk/ads/AdsLoader;)V

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-long v3, p1

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method stopLoading()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/AdsLoader;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->hide()V

    return-void
.end method
