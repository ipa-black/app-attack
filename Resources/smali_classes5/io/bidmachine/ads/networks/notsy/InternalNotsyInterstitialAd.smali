.class Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;
.super Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;
.source "InternalNotsyInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;
    }
.end annotation


# instance fields
.field private interstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-void
.end method

.method static synthetic access$002(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 16
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->interstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p1
.end method


# virtual methods
.method protected destroyAd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->interstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 52
    iput-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->interstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    :cond_0
    return-void
.end method

.method protected loadAd(Landroid/content/Context;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->createAdManagerAdRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V

    .line 29
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void
.end method

.method protected showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->interstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;

    invoke-direct {v1, p0, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 41
    iget-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->interstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    .line 43
    :cond_0
    const-string p1, "Interstitial object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
