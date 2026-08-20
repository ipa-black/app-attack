.class Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;
.super Ljava/lang/Object;
.source "VastFullScreenAdLoadListener.java"

# interfaces
.implements Lcom/explorestack/iab/vast/VastRequestListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field private final vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    .line 30
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    return-void
.end method


# virtual methods
.method public onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    const/4 p1, 0x4

    if-ne p3, p1, :cond_0

    .line 50
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdExpired()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAdVerificationsExtensionList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-virtual {v1, v0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->addVerificationScriptResourceList(Ljava/util/List;)V

    .line 41
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoCloseTime()F

    move-result p1

    invoke-virtual {v0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->setSkipOffset(F)V

    .line 44
    :cond_1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method
