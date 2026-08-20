.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;
.source "MultiAdsBannerAppodealAdapter.java"


# instance fields
.field private bannerView:Lcom/appodeal/ads/BannerView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V
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

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic lambda$loadBanner$0(Landroid/view/ViewGroup;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/appodeal/ads/Appodeal;->cache(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method public loadBanner(Landroid/view/ViewGroup;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appodeal banner initializing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiAdsTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->getBannerView(Landroid/content/Context;)Lcom/appodeal/ads/BannerView;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerView:Lcom/appodeal/ads/BannerView;

    .line 42
    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setBannerCallbacks(Lcom/appodeal/ads/BannerCallbacks;)V

    .line 93
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 94
    const-string v0, "appodeal banner attempt to attach bannerView to container"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerView:Lcom/appodeal/ads/BannerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    const-string v0, "appodeal banner attempt to load"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_appodeal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "banner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "uniqid"

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 102
    const-string v4, "ft_banner_sdk_request"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerView:Lcom/appodeal/ads/BannerView;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "multiAdsTag"

    const-string v1, "appodeal banner attempt to detach bannerView from container"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerView:Lcom/appodeal/ads/BannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x4

    .line 116
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->destroy(I)V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAppodealAdapter;->bannerView:Lcom/appodeal/ads/BannerView;

    :cond_1
    return-void
.end method
