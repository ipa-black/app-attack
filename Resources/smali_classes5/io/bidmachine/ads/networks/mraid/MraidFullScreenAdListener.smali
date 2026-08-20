.class Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;
.super Ljava/lang/Object;
.source "MraidFullScreenAdListener.java"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidInterstitialListener;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field private final mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    .line 32
    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    return-void
.end method


# virtual methods
.method public onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->destroy()V

    .line 87
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    .line 88
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 43
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    const-string p2, "Error when showing interstitial object"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 45
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 47
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdExpired()V

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    .line 68
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$1;-><init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;Lcom/explorestack/iab/utils/IabClickCallback;)V

    invoke-static {p1, p2, v0}, Lcom/explorestack/iab/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->onAdShown()V

    .line 59
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
