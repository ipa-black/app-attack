.class public Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial;
.super Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial<",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "Lcom/google/android/gms/ads/AdRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    check-cast p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedInterstitialParams;",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">;",
            "Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;",
            ")V"
        }
    .end annotation

    new-instance p2, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-direct {p2}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->key:Ljava/lang/String;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->request:Lcom/google/android/gms/ads/AdRequest;

    new-instance v0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-direct {v0, p4, v1}, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;-><init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;)V

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method
