.class public Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;
.super Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;
.source "FastTrackHtmlAdapter.java"


# instance fields
.field private adView:Lcom/appsgeyser/sdk/ads/AdView;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackSdkModel;Landroid/content/Context;)V

    return-void
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

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->getBannerViewRefreshRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_0

    .line 41
    new-instance p2, Lcom/appsgeyser/sdk/ads/AdView;

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/appsgeyser/sdk/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    .line 42
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    const/4 v0, -0x1

    invoke-direct {p2, v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    .line 46
    invoke-virtual {p2, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p3, p2}, Lcom/appsgeyser/sdk/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 49
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-static {p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V

    .line 51
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/AdView;->onResume()V

    :cond_0
    return-void
.end method

.method public loadFullscreen()V
    .locals 0

    return-void
.end method

.method public loadRewardedVideo()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 176
    invoke-static {v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V

    .line 177
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public sendNativeViewRequest()V
    .locals 0

    return-void
.end method

.method public setFullscreenListener(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter$1;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setListener(Lcom/appsgeyser/sdk/ads/IFullScreenBannerListener;)V

    return-void
.end method

.method public showFullscreen(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 6

    .line 63
    const-string v0, "appsgeyserSdk_lastRequestTiming"

    const-string v1, "fastTrackTag"

    if-eqz p3, :cond_0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-wide/16 v4, 0x0

    .line 65
    invoke-virtual {p3, v0, v4, v5}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 66
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->getFullscreenFrequencyTimerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-gtz p3, :cond_0

    .line 67
    const-string p1, "html fullscreen show request was cancelled due to frequency timing settings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    iget-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->preferencesCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    invoke-virtual {p3, v0, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    .line 73
    const-string p3, "html fullscreen show request"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->getFullscreenIntensityPoints(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p3, p2, :cond_1

    .line 75
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    const-string p1, "html fullscreen attempt to show canceled due to intensity settings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onRequest()V

    .line 80
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->fullscreenListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;->onFailedToShow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->getRewardedVideoActivationStatus(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 126
    new-instance p2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter$2;

    invoke-direct {p2, p0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter$2;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;)V

    invoke-static {p2}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->loadRewardedVideo(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    goto :goto_0

    .line 158
    :cond_0
    const-string p1, "fastTrackTag"

    const-string p2, "Rewarded video placement disabled"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoDeactivated()V

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackHtmlAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :goto_0
    return-void
.end method
