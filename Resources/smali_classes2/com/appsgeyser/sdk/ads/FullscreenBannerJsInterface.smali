.class Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;
.super Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;
.source "FullscreenBannerJsInterface.java"


# static fields
.field static JS_INTERFACE_NAME:Ljava/lang/String; = "AppsgeyserBanner"


# instance fields
.field private fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/appsgeyser/sdk/ads/FullScreenBanner;Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lcom/appsgeyser/sdk/ads/sdk/JavascriptSdkController;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->close()V

    return-void
.end method

.method public dismissAdMobOnTimeout(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public dismissMoPubOnTimeout(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public forceOpenInNativeBrowser(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->forceOpenInNativeBrowser(Z)V

    return-void
.end method

.method public saveImpressionUrl(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setImpressionUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setBackKeyLocked(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setBackKeyLocked(Z)V

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->checkSecurityCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setClickUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setStatUrls(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setUniqueId(Ljava/lang/String;)V

    return-void
.end method

.method public showTimer(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setShowTimer(J)V

    return-void
.end method

.method public stayAlive()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->stayAlive()V

    return-void
.end method

.method public takeScreenShot()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/FullscreenBannerJsInterface;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/appsgeyser/sdk/utils/WebViewScreenShooter;->takeScreenShotInBase64(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackBannerClick()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 67
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    const-string v1, "click_html_tap_start"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    return-void
.end method

.method public trackCrossClick()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 62
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    const-string v1, "click_cross_banner"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    return-void
.end method

.method public trackTimerClick()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    const-string v1, "click_timer_banner"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    return-void
.end method
