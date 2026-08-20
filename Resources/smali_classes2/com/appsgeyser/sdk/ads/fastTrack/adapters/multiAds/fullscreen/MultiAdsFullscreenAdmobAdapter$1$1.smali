.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "MultiAdsFullscreenAdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 5

    .line 100
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    .line 101
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_admob"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name_FS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 106
    const-string v4, "ft_interstitial_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 108
    const-string v0, "multiAdsTag"

    const-string v1, "Admob fs onAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string v1, "multiAdsTag"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    const-string v0, "progressDialog dismissal IAE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->access$002(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;Z)Z

    .line 88
    const-string v0, "Admob fs onAdDismissedFullScreenContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenClosed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    .line 57
    const-string v0, "multiAdsTag"

    const-string v1, "Admob fs onAdFailedToShowFullScreenContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;Z)Z

    .line 59
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenError(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    .line 95
    const-string v0, "multiAdsTag"

    const-string v1, "Admob fs onAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 5

    .line 64
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_admob"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v1, "net_name_FS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 70
    const-string v4, "ft_interstitial_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 72
    const-string v0, "multiAdsTag"

    const-string v1, "Admob fs onAdShowedFullScreenContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1$1;->this$1:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenAdmobAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenOpened()V

    return-void
.end method
