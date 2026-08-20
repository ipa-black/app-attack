.class final Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;
.super Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;
.source "NotsyRewarded.java"

# interfaces
.implements Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/NotsyRewarded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener<",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;",
        ">;",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAdListener;"
    }
.end annotation


# instance fields
.field private final notsyRewarded:Lio/bidmachine/ads/networks/notsy/NotsyRewarded;


# direct methods
.method private constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyRewarded;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    .line 76
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;->notsyRewarded:Lio/bidmachine/ads/networks/notsy/NotsyRewarded;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyRewarded;Lio/bidmachine/ads/networks/notsy/NotsyRewarded$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyRewarded;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 66
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;)V
    .locals 0

    .line 66
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;->notsyRewarded:Lio/bidmachine/ads/networks/notsy/NotsyRewarded;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->access$102(Lio/bidmachine/ads/networks/notsy/NotsyRewarded;Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;)Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    .line 83
    invoke-super {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;)V

    return-void
.end method
