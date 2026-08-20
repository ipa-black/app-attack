.class Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;
.super Ljava/lang/Object;
.source "VastRichMediaAdLoadListener.java"

# interfaces
.implements Lcom/explorestack/iab/vast/VastRequestListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field private final vastView:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    .line 22
    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;->vastView:Lcom/explorestack/iab/vast/activity/VastView;

    return-void
.end method


# virtual methods
.method public onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    const/4 p1, 0x4

    if-ne p3, p1, :cond_0

    .line 33
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdExpired()V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastRichMediaAdLoadListener;->vastView:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
