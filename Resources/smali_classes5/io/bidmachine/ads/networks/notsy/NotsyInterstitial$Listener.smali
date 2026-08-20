.class final Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$Listener;
.super Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;
.source "NotsyInterstitial.java"

# interfaces
.implements Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener<",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;",
        ">;",
        "Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAdListener;"
    }
.end annotation


# instance fields
.field private final notsyInterstitial:Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;


# direct methods
.method private constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    .line 76
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$Listener;->notsyInterstitial:Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V
    .locals 0

    .line 66
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;)V
    .locals 0

    .line 66
    check-cast p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$Listener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial$Listener;->notsyInterstitial:Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;->access$102(Lio/bidmachine/ads/networks/notsy/NotsyInterstitial;Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;)Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    .line 83
    invoke-super {p0, p1}, Lio/bidmachine/ads/networks/notsy/NotsyFullscreenAdListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;)V

    return-void
.end method
