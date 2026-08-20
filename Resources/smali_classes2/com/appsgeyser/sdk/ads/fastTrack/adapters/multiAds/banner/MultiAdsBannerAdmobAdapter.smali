.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;
.source "MultiAdsBannerAdmobAdapter.java"


# instance fields
.field private bannerView:Lcom/google/android/gms/ads/AdView;


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

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method


# virtual methods
.method protected init()V
    .locals 0

    return-void
.end method

.method public loadBanner(Landroid/view/ViewGroup;)V
    .locals 4

    .line 41
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->adNetworkSdkModel:Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/AdNetworkSdkModel;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "admob banner initializing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multiAdsTag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    .line 45
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 46
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    new-instance v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;Ljava/lang/String;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 115
    const-string p1, "admob banner attempt to attach bannerView to container"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    const-string p1, "admob banner attempt to load"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "ad_source"

    const-string v2, "ft_ma_admob"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v1, "net_name"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "banner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    const-string v0, "uniqid"

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    .line 123
    const-string v3, "ft_banner_sdk_request"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 126
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerBaseAdapter;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "multiAdsTag"

    const-string v1, "admob banner attempt to detach bannerView from container"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/multiAds/banner/MultiAdsBannerAdmobAdapter;->bannerView:Lcom/google/android/gms/ads/AdView;

    :cond_1
    return-void
.end method
