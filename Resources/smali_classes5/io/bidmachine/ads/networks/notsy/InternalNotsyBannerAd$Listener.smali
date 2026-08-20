.class final Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;
.super Lcom/google/android/gms/ads/AdListener;
.source "InternalNotsyBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# instance fields
.field private final internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

.field private final loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;


# direct methods
.method private constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 75
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    .line 76
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 104
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdPresentListener()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdPresentListener()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 93
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->onNotsyAdShown(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    .line 94
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    sget-object v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Shown:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 96
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdPresentListener()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-virtual {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->getAdPresentListener()Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdPresentListener;->onAdShown()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    sget-object v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loaded:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 83
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-interface {v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
