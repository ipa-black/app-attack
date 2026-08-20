.class public Lcom/appodeal/ads/unified/vast/UnifiedVastRewardedListener;
.super Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener<",
        "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;-><init>(Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public bridge synthetic onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void
.end method

.method public bridge synthetic onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method

.method public bridge synthetic onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public bridge synthetic onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;->onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method
