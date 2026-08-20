.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;
.super Ljava/lang/Object;
.source "MultiAdsFullscreenUnityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;
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

    .line 40
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->access$002(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;Z)Z

    .line 44
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "multiAdsTag"

    const-string v1, "unity fullscreen initializing takes too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v2, "ad_source"

    const-string v3, "ft_ma_unity"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v2, "net_name"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    const-string v2, "net_name_FS"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->fullscreenDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x1

    .line 50
    const-string v5, "ft_interstitial_sdk_nofill"

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->listener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;

    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenInterface$FullscreenListener;->onFullscreenError(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/fullscreen/MultiAdsFullscreenUnityAdapter;->loadFullscreen()V

    :goto_0
    return-void
.end method
