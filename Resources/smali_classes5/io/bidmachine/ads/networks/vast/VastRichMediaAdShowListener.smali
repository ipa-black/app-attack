.class Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;
.super Ljava/lang/Object;
.source "VastRichMediaAdShowListener.java"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .locals 0

    .line 33
    iget-object p2, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdClicked()V

    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener$1;

    invoke-direct {p2, p0, p3}, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener$1;-><init>(Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;Lcom/explorestack/iab/utils/IabClickCallback;)V

    invoke-static {p1, p4, p2}, Lcom/explorestack/iab/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p3}, Lcom/explorestack/iab/utils/IabClickCallback;->clickHandleCanceled()V

    :goto_0
    return-void
.end method

.method public onComplete(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    .line 60
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    const-string p2, "Error when showing interstitial object"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    return-void
.end method

.method public onOrientationRequested(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdShowListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShown()V

    return-void
.end method
