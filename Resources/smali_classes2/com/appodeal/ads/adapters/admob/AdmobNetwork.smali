.class public Lcom/appodeal/ads/adapters/admob/AdmobNetwork;
.super Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/admob/AdmobNetwork$builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork<",
        "Lcom/google/android/gms/ads/AdRequest;",
        "Lcom/google/android/gms/ads/AdRequest$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method


# virtual methods
.method public createAdRequest(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public createAdRequestBuilder(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 0

    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    return-object p1
.end method

.method public createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedBanner<",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/admob/banner/AdmobBanner;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/admob/banner/AdmobBanner;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/admob/interstitial/AdmobInterstitial;-><init>()V

    return-object v0
.end method

.method public createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedMrec<",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/admob/mrec/AdmobMrec;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/admob/mrec/AdmobMrec;-><init>()V

    return-object v0
.end method

.method public createNativeAd()Lcom/appodeal/ads/unified/UnifiedNative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedNative<",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/admob/native_ad/AdmobNative;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/admob/native_ad/AdmobNative;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/admob/rewarded_video/AdmobRewarded;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/admob/rewarded_video/AdmobRewarded;-><init>()V

    return-object v0
.end method
