.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenBaseAdapter;
.source "MultiAdsFullscreenAppnextAdapter.java"


# instance fields
.field private interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

.field private final onFullscreenClosedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenBaseAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    .line 123
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->onFullscreenClosedRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method public isFullscreenLoaded()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->isAdLoaded()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$loadFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 0

    .line 42
    const-string p1, "multiAdsTag"

    const-string p2, "Appnext fullscreen setOnAdLoadedCallback"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenLoaded()V

    return-void
.end method

.method synthetic lambda$loadFullscreen$1$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter(Ljava/lang/String;)V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appnext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name_FS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "No Ads"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "fs id: "

    const-string v3, "details"

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->context:Landroid/content/Context;

    .line 53
    const-string v4, "ft_interstitial_sdk_nofill"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; error_desc: error code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->context:Landroid/content/Context;

    .line 59
    const-string v4, "ft_interstitial_sdk_error"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 62
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Appnext fullscreen OnAdError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiAdsTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$loadFullscreen$2$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter()V
    .locals 5

    .line 68
    const-string v0, "multiAdsTag"

    const-string v1, "Appnext fullscreen OnAdOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appnext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name_FS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 74
    const-string v4, "ft_interstitial_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenOpened()V

    return-void
.end method

.method synthetic lambda$loadFullscreen$3$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string v1, "multiAdsTag"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    const-string v0, "progressDialog dismissal IAE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    const-string v0, "Appnext fullscreen OnAdClosed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->onFullscreenClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->onFullscreenClosedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$loadFullscreen$4$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter()V
    .locals 5

    .line 97
    const-string v0, "multiAdsTag"

    const-string v1, "Appnext fullscreen OnAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appnext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name_FS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 103
    const-string v4, "ft_interstitial_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 105
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenClicked()V

    return-void
.end method

.method synthetic lambda$new$5$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenClosed()V

    return-void
.end method

.method synthetic lambda$showFullscreen$6$com-appsgeyser-sdk-ads-fastTrack-adapters-multiAds-fullscreen-MultiAdsFullscreenAppnextAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .locals 1

    .line 139
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    const-string p1, "multiAdsTag"

    const-string v0, "progressDialog dismissal IAE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    return-void
.end method

.method public loadFullscreen()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiAdsTag"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/appnext/ads/interstitial/Interstitial;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v3}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Appnext fullscreen initializing: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 96
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 107
    const-string v0, "Appnext fullscreen attempt to load"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appnext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name_FS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "uniqid"

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 114
    const-string v4, "ft_interstitial_sdk_request"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 116
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->loadAd()V

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "Appnext fullscreen placement id missing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showFullscreen(Landroid/content/Context;)V
    .locals 4

    .line 134
    new-instance v0, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 135
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 136
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 137
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAppnextAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
