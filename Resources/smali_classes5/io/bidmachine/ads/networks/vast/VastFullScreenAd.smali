.class Lio/bidmachine/ads/networks/vast/VastFullScreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "VastFullScreenAd.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

.field private vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

.field private vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

.field private vastRequest:Lcom/explorestack/iab/vast/VastRequest;

.field private final videoType:Lcom/explorestack/iab/vast/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/vast/VideoType;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 31
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->videoType:Lcom/explorestack/iab/vast/VideoType;

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    new-instance p3, Lio/bidmachine/ads/networks/vast/VastParams;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/vast/VastParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 41
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/vast/VastParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 46
    :cond_0
    iget-boolean p4, p3, Lio/bidmachine/ads/networks/vast/VastParams;->omsdkEnabled:Z

    if-eqz p4, :cond_1

    .line 47
    new-instance p4, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-direct {p4}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;-><init>()V

    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 49
    :cond_1
    new-instance p4, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    iget-object p5, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-direct {p4, p2, p5}, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    .line 50
    invoke-static {}, Lcom/explorestack/iab/vast/VastRequest;->newBuilder()Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget-object p4, p3, Lio/bidmachine/ads/networks/vast/VastParams;->cacheControl:Lcom/explorestack/iab/CacheControl;

    .line 51
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget p4, p3, Lio/bidmachine/ads/networks/vast/VastParams;->placeholderTimeoutSec:F

    .line 52
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setPlaceholderTimeoutSec(F)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget p4, p3, Lio/bidmachine/ads/networks/vast/VastParams;->skipOffset:I

    .line 53
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setVideoCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget p4, p3, Lio/bidmachine/ads/networks/vast/VastParams;->companionSkipOffset:I

    .line 54
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->setCompanionCloseTime(I)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    iget-boolean p4, p3, Lio/bidmachine/ads/networks/vast/VastParams;->useNativeClose:Z

    .line 55
    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/VastRequest$Builder;->forceUseNativeCloseTime(Z)Lcom/explorestack/iab/vast/VastRequest$Builder;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/VastRequest$Builder;->build()Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    .line 58
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p3, Lio/bidmachine/ads/networks/vast/VastParams;->creativeAdm:Ljava/lang/String;

    iget-object p4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    invoke-virtual {p2, p1, p3, p4}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdLoadListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;

    .line 81
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    .line 82
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->destroy()V

    .line 84
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    .line 86
    :cond_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_1

    .line 87
    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    :cond_1
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->canDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-direct {v0, p2, v1}, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    .line 68
    iget-object v2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->videoType:Lcom/explorestack/iab/vast/VideoType;

    iget-object v5, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastAdShowListener:Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;

    iget-object v7, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAd;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    move-object v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/explorestack/iab/vast/VastRequest;->display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;Lcom/explorestack/iab/vast/VastPlaybackListener;Lcom/explorestack/iab/measurer/VastAdMeasurer;)V

    goto :goto_0

    .line 74
    :cond_0
    const-string p1, "Fullscreen object is null or can not find video file"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
