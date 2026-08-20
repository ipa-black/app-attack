.class public abstract Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# static fields
.field public static final AppnextConfigurationExtraKey:Ljava/lang/String; = "AppnextConfiguration"

.field public static final AppnextRewardPostbackExtraKey:Ljava/lang/String; = "AppnextRewardPostback"


# instance fields
.field protected mAd:Lcom/appnext/core/Ad;

.field protected mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createAd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/appnext/core/Ad;
.end method

.method public onDestroy()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->destroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    const/4 p4, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0, p1, p3, p5}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->createAd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/appnext/core/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    if-nez p1, :cond_0

    .line 61
    invoke-interface {p2, p4}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void

    .line 65
    :cond_0
    iput-object p2, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 68
    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$1;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$1;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 76
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$2;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$2;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 84
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$3;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$3;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 93
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$4;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$4;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 101
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    new-instance p2, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;

    invoke-direct {p2, p0}, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent$5;-><init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;)V

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 124
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {p1}, Lcom/appnext/core/Ad;->loadAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1, p4}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mAd:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->showAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEvent;->mListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
