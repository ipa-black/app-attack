.class final Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;
.super Ljava/lang/Object;
.source "NotsyBanner.java"

# interfaces
.implements Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/NotsyBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field private final notsyBanner:Lio/bidmachine/ads/networks/notsy/NotsyBanner;


# direct methods
.method private constructor <init>(Lio/bidmachine/ads/networks/notsy/NotsyBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->notsyBanner:Lio/bidmachine/ads/networks/notsy/NotsyBanner;

    .line 59
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ads/networks/notsy/NotsyBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyBanner$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;-><init>(Lio/bidmachine/ads/networks/notsy/NotsyBanner;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdClicked()V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 49
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->notsyBanner:Lio/bidmachine/ads/networks/notsy/NotsyBanner;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyBanner;->access$102(Lio/bidmachine/ads/networks/notsy/NotsyBanner;Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;)Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    .line 66
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-virtual {p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->getAdView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShown()V
    .locals 0

    return-void
.end method
