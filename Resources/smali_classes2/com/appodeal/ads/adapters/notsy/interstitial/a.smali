.class public final Lcom/appodeal/ads/adapters/notsy/interstitial/a;
.super Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/notsy/interstitial/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial<",
        "Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;",
        "Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;",
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
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 2

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    check-cast p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    .line 1
    new-instance p2, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-direct {p2}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;-><init>()V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->key:Ljava/lang/String;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;->request:Lcom/google/android/gms/ads/AdRequest;

    check-cast p3, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    new-instance v0, Lcom/appodeal/ads/adapters/notsy/interstitial/a$a;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/admob/interstitial/UnifiedAdmobInterstitial;->unifiedAdContainer:Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;

    invoke-direct {v0, p4, v1}, Lcom/appodeal/ads/adapters/notsy/interstitial/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdContainer;)V

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void
.end method
