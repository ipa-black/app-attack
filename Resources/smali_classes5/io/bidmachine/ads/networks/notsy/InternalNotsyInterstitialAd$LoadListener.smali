.class final Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "InternalNotsyInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadListener"
.end annotation


# instance fields
.field private final loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

.field private final notsyInterstitialAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;Lio/bidmachine/ads/networks/notsy/InternalLoadListener;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    .line 66
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->notsyInterstitialAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    .line 67
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->notsyInterstitialAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoadFailed(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->notsyInterstitialAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->access$002(Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 73
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->notsyInterstitialAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Loaded:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 75
    iget-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->loadListener:Lio/bidmachine/ads/networks/notsy/InternalLoadListener;

    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->notsyInterstitialAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-interface {p1, v0}, Lio/bidmachine/ads/networks/notsy/InternalLoadListener;->onAdLoaded(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd$LoadListener;->onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    return-void
.end method
