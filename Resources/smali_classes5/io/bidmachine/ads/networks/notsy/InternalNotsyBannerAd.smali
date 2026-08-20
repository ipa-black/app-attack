.class Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;
.super Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
.source "InternalNotsyBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;
    }
.end annotation


# instance fields
.field private adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-void
.end method


# virtual methods
.method protected destroyAd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    :cond_0
    return-void
.end method

.method protected getAdView()Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 34
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$Listener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 38
    sget-object p1, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd$1;->$SwitchMap$io$bidmachine$AdsFormat:[I

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/AdsFormat;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 46
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    sget-object p2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 48
    :goto_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->adView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;->createAdManagerAdRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method
