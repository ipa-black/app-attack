.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;
.super Ljava/lang/Object;
.source "MultiAdsFullscreenUnityAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->loadFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsShowClick(Ljava/lang/String;)V
    .locals 4

    .line 97
    const-string p1, "multiAdsTag"

    const-string v0, "unity fullscreen onUnityAdsShowClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v0, "ad_source"

    const-string v1, "ft_ma_unity"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v0, "net_name"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v0, "net_name_FS"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 102
    const-string v3, "ft_interstitial_sdk_click"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 104
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenClicked()V

    return-void
.end method

.method public onUnityAdsShowComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string p2, "multiAdsTag"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    const-string p1, "progressDialog dismissal IAE"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :goto_0
    const-string p1, "unity fullscreen onInterstitialDismissed"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenClosed()V

    .line 118
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;Z)Z

    return-void
.end method

.method public onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 0

    .line 80
    const-string p1, "fastTrackTag"

    const-string p2, "unity fs onUnityAdsShowFailure"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnityAdsShowStart(Ljava/lang/String;)V
    .locals 4

    .line 85
    const-string p1, "multiAdsTag"

    const-string v0, "unity fullscreen onUnityAdsShowStart"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v0, "ad_source"

    const-string v1, "ft_ma_unity"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v0, "net_name"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v0, "net_name_FS"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 90
    const-string v3, "ft_interstitial_sdk_impression"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 92
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenOpened()V

    return-void
.end method
