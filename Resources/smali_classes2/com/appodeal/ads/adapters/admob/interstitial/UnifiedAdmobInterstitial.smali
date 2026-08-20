.class public abstract Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;
.super Lcom/appodeal/ads/unified/UnifiedInterstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InterstitialType:",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
        "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
        "TAdRequestType;>;>;"
    }
.end annotation


# instance fields
.field public unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer<",
            "TInterstitialType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    :cond_0
    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobFullscreenDisplayListener;

    invoke-direct {v1, p2}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobFullscreenDisplayListener;-><init>(Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShowFailed()V

    :goto_1
    return-void
.end method
