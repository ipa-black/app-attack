.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.source "FastTrackAppnextAdapter.java"


# instance fields
.field private bannerClickReportedRecently:Z

.field private bannerPlacementId:Ljava/lang/String;

.field private bannerRequestFailReported:Z

.field private bannerView:Lcom/appnext/banners/BannerView;

.field private bannerViewRefreshRunnable:Ljava/lang/Runnable;

.field private bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

.field private fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

.field private fullscreenPlacementId:Ljava/lang/String;

.field private interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

.field private rewardedVideoPlacementId:Ljava/lang/String;

.field private rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    .line 206
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$2;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    .line 228
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$3;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    .line 388
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda16;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    .line 508
    new-instance p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerRequestFailReported:Z

    return p0
.end method

.method static synthetic access$002(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerRequestFailReported:Z

    return p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Landroid/widget/ProgressBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Lcom/appnext/banners/BannerView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerClickReportedRecently:Z

    return p0
.end method

.method static synthetic access$602(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerClickReportedRecently:Z

    return p1
.end method


# virtual methods
.method public getNativeAds(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected init()V
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getFullscreenPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getBannerPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerPlacementId:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->getRewardedVideoPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    const-string v1, "fastTrackTag"

    const-string v2, "net_name_FS"

    const-string v3, "net_name"

    const-string v4, "ad_source"

    const-string v5, "ft_appnext_custom"

    const-string v6, "ft_appnext"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomFullscreenActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "appnext fullscreen: custom"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "appnext fullscreen: platform"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomBannerActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "appnext banner: custom"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "appnext banner: platform"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->appDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fastTrackSdkModel:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;->isCustomRewardedActivated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "appnext rewarded: custom"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "appnext rewarded: platform"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->loadFullscreen()V

    .line 108
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->loadRewardedVideo()V

    return-void
.end method

.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    .line 113
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->getBannerViewRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x8

    .line 114
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 115
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerPlacementId:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eqz p3, :cond_0

    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "appnext banner initializing: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "fastTrackTag"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p3, Lcom/appnext/banners/BannerView;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/appnext/banners/BannerView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    .line 118
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    .line 120
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {p3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {v1, p3}, Lcom/appnext/banners/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appnext/banners/BannerView;->setPlacementId(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    sget-object v2, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {v1, v2}, Lcom/appnext/banners/BannerView;->setBannerSize(Lcom/appnext/banners/BannerSize;)V

    .line 125
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressBar:Landroid/widget/ProgressBar;

    .line 126
    invoke-virtual {v1, p3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V

    invoke-virtual {p3, v1}, Lcom/appnext/banners/BannerView;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 199
    const-string p2, "appnext banner attempt to attach bannerView to container"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 201
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$loadFullscreen$0$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .locals 1

    .line 268
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    return-void
.end method

.method synthetic lambda$loadFullscreen$1$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 4

    .line 260
    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->pendingFullscreenRequest:Z

    const-string p2, "fastTrackTag"

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->isInForeground:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 261
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->pendingFullscreenRequest:Z

    .line 262
    const-string p1, "appnext fullscreen loaded, pending request processing"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 265
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 266
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_0
    const-string p1, "appnext fullscreen setOnAdLoadedCallback"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadFullscreen$2$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter(Ljava/lang/String;)V
    .locals 5

    .line 278
    const-string v0, "No Ads"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "fs id: "

    const-string v3, "details"

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 281
    const-string v4, "ft_interstitial_sdk_nofill"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

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

    .line 286
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 287
    const-string v4, "ft_interstitial_sdk_error"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda14;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appnext fullscreen OnAdError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fastTrackTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadFullscreen$3$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 5

    .line 295
    const-string v0, "fastTrackTag"

    const-string v1, "appnext fullscreen OnAdOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 298
    const-string v4, "ft_interstitial_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 300
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onShow()V

    :cond_0
    return-void
.end method

.method synthetic lambda$loadFullscreen$4$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda14;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    const-string v0, "progressDialog dismissal IAE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onClose()V

    .line 316
    :cond_1
    const-string v0, "appnext fullscreen OnAdClosed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadFullscreen$5$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 5

    .line 319
    const-string v0, "fastTrackTag"

    const-string v1, "appnext fullscreen OnAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 322
    const-string v4, "ft_interstitial_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void
.end method

.method synthetic lambda$loadRewardedVideo$10$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter(Ljava/lang/String;)V
    .locals 5

    .line 0
    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->videoDownloadError:Z

    .line 423
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v1, :cond_1

    .line 424
    iget-boolean v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->videoShowRequested:Z

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 426
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->videoShowRequested:Z

    :cond_0
    const/4 v1, 0x0

    .line 428
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 430
    :cond_1
    const-string v1, "No Ads"

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "rewarded id: "

    const-string v3, "details"

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 433
    const-string v4, "ft_rewarded_sdk_nofill"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; error_desc: error code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    .line 439
    const-string v4, "ft_rewarded_sdk_error"

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 442
    :goto_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda13;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appnext rewarded OnAdError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fastTrackTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadRewardedVideo$11$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rewarded id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 448
    const-string v4, "ft_rewarded_sdk_click"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 450
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoClicked()V

    .line 453
    :cond_0
    const-string v0, "fastTrackTag"

    const-string v1, "appnext rewarded OnAdClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadRewardedVideo$12$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoClosed()V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->loadRewardedVideo()V

    .line 461
    const-string v0, "fastTrackTag"

    const-string v1, "appnext rewarded OnAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadRewardedVideo$13$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoFinished()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rewarded id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 469
    const-string v4, "ft_rewarded_sdk_completion"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 471
    const-string v0, "fastTrackTag"

    const-string v1, "appnext rewarded OnVideoEnded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadRewardedVideo$8$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 401
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->videoDownloadError:Z

    .line 402
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    const-string p1, "fastTrackTag"

    const-string p2, "appnext rewarded OnAdLoaded"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$loadRewardedVideo$9$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rewarded id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 414
    const-string v4, "ft_rewarded_sdk_impression"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 416
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoOpened()V

    .line 419
    :cond_1
    const-string v0, "fastTrackTag"

    const-string v1, "appnext rewarded OnAdOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$new$14$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 510
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 511
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 513
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :cond_0
    return-void
.end method

.method synthetic lambda$new$7$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->pendingFullscreenRequest:Z

    .line 390
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    .line 393
    :cond_0
    const-string v0, "fastTrackTag"

    const-string v1, "appnext fullscreen not loaded, cancelling wait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$showFullscreen$6$com-appsgeyser-sdk-ads-fastTrack-adapters-FastTrackAppnextAdapter(Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V
    .locals 1

    .line 363
    :try_start_0
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    const-string p1, "fastTrackTag"

    const-string v0, "progressDialog dismissal IAE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->showAd()V

    return-void
.end method

.method public loadFullscreen()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/appnext/ads/interstitial/Interstitial;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/appnext/ads/interstitial/Interstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appnext fullscreen initializing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastTrackTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 277
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 294
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 304
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 318
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    new-instance v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v2}, Lcom/appnext/ads/interstitial/Interstitial;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 325
    const-string v0, "appnext fullscreen attempt to load"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fs id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    const-string v1, "uniqid"

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->loadAd()V

    .line 329
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 330
    const-string v4, "ft_interstitial_sdk_request"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public loadRewardedVideo()V
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lcom/appnext/ads/fullscreen/RewardedVideo;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/appnext/ads/fullscreen/RewardedVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    .line 400
    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdLoadedCallback(Lcom/appnext/core/callbacks/OnAdLoaded;)V

    .line 408
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdOpenedCallback(Lcom/appnext/core/callbacks/OnAdOpened;)V

    .line 421
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdErrorCallback(Lcom/appnext/core/callbacks/OnAdError;)V

    .line 445
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdClickedCallback(Lcom/appnext/core/callbacks/OnAdClicked;)V

    .line 455
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnAdClosedCallback(Lcom/appnext/core/callbacks/OnAdClosed;)V

    .line 463
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;)V

    invoke-virtual {v0, v1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->setOnVideoEndedCallback(Lcom/appnext/core/callbacks/OnVideoEnded;)V

    .line 473
    const-string v0, "fastTrackTag"

    const-string v1, "appnext rewarded attempt to load"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rewarded id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    const-string v1, "uniqid"

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {v0}, Lcom/appnext/ads/fullscreen/RewardedVideo;->loadAd()V

    .line 477
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    .line 478
    const-string v4, "ft_rewarded_sdk_request"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 536
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    .line 537
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "fastTrackTag"

    const-string v2, "appnext banner attempt to detach bannerView from container"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 541
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerView;->setBannerListener(Lcom/appnext/banners/BannerListener;)V

    .line 546
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerView;->destroy()V

    .line 547
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerView:Lcom/appnext/banners/BannerView;

    .line 548
    iput-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressBar:Landroid/widget/ProgressBar;

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRepeatRequestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->bannerViewRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public sendNativeViewRequest()V
    .locals 0

    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 5

    .line 337
    const-string p1, "appsgeyserSdk_lastRequestTiming"

    const-string v0, "fastTrackTag"

    if-eqz p3, :cond_0

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-wide/16 v3, 0x0

    .line 339
    invoke-virtual {p3, p1, v3, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 340
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->getFullscreenFrequencyTimerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v3, p3

    cmp-long p3, v1, v3

    if-gtz p3, :cond_0

    .line 341
    const-string p1, "appnext fullscreen show request was cancelled due to frequency timing settings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 345
    :cond_0
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 345
    invoke-virtual {p3, p1, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    .line 347
    const-string p1, "appnext fullscreen show request"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onRequest()V

    .line 351
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->getFullscreenIntensityPoints(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p1, p2, :cond_4

    .line 352
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    if-eqz p1, :cond_3

    .line 353
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "fs id: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPlacementId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "details"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    const-string p2, "ft_interstitial_sdk_attempt"

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialDetails:Ljava/util/HashMap;

    .line 355
    invoke-virtual {p1, p2, v1, p4, p3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 357
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->interstitialAd:Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p1}, Lcom/appnext/ads/interstitial/Interstitial;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 358
    const-string p1, "appnext fullscreen attempt to show"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 360
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 361
    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter$$ExternalSyntheticLambda15;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 370
    :cond_2
    const-string p1, "appnext fullscreen not loaded yet, waiting for load"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->pendingFullscreenRequest:Z

    .line 372
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenPendingRequestCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->getFullscreenPendingDelayTimerValue()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 375
    :cond_3
    const-string p1, "appnext fullscreen disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_5

    .line 377
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    goto :goto_0

    .line 381
    :cond_4
    const-string p1, "appnext fullscreen attempt to show canceled due to intensity settings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_5

    .line 383
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_5
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .locals 2

    .line 485
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 486
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoCurrentPlacement:Ljava/lang/String;

    .line 487
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->getRewardedVideoActivationStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 488
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 489
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->videoShowRequested:Z

    .line 490
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoAd:Lcom/appnext/ads/fullscreen/RewardedVideo;

    invoke-virtual {p1}, Lcom/appnext/ads/fullscreen/RewardedVideo;->showAd()V

    goto :goto_0

    .line 491
    :cond_0
    iget-boolean p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->videoDownloadError:Z

    if-eqz p1, :cond_1

    .line 492
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 493
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    goto :goto_0

    .line 495
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    if-nez p1, :cond_2

    .line 496
    new-instance p1, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 498
    :cond_2
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->show()V

    .line 499
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoShowCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 502
    :cond_3
    const-string p1, "fastTrackTag"

    const-string v0, "Rewarded video placement disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    .line 504
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAppnextAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :goto_0
    return-void
.end method
