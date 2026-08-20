.class public final Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

.field public final b:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer<",
            "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer<",
            "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;->b:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-static {p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->mapError(Lcom/google/android/gms/ads/LoadAdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;->b:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;->setAd(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoaded()V

    return-void
.end method
