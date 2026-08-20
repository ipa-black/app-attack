.class Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;
.super Ljava/lang/Object;
.source "MraidBannerAdListener.java"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidViewListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public onClose(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/explorestack/iab/mraid/MraidView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 31
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    const-string p2, "Error when showing banner object"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 33
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->PlaceholderTimeout:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 35
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdExpired()V

    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public onExpand(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdClicked()V

    .line 52
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$1;-><init>(Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;Lcom/explorestack/iab/utils/IabClickCallback;)V

    invoke-static {p1, p2, v0}, Lcom/explorestack/iab/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShown()V

    return-void
.end method
