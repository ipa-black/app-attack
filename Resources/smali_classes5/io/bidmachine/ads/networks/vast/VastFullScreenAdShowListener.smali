.class Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;
.super Ljava/lang/Object;
.source "VastFullScreenAdShowListener.java"

# interfaces
.implements Lcom/explorestack/iab/vast/VastActivityListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field private final vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    .line 29
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    return-void
.end method


# virtual methods
.method public onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .locals 0

    .line 55
    iget-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->onAdClicked()V

    .line 59
    :cond_0
    iget-object p2, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    if-eqz p4, :cond_1

    .line 61
    new-instance p2, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener$1;

    invoke-direct {p2, p0, p3}, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener$1;-><init>(Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;Lcom/explorestack/iab/utils/IabClickCallback;)V

    invoke-static {p1, p4, p2}, Lcom/explorestack/iab/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p3}, Lcom/explorestack/iab/utils/IabClickCallback;->clickHandleCanceled()V

    :goto_0
    return-void
.end method

.method public onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    return-void
.end method

.method public onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    .line 82
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->destroy()V

    .line 86
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    .line 35
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    const-string p2, "Error when showing interstitial object"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->vastOMSDKAdMeasurer:Lio/bidmachine/measurer/VastOMSDKAdMeasurer;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->onAdShown()V

    .line 47
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
