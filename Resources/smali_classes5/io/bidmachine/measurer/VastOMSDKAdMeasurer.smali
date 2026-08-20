.class public Lio/bidmachine/measurer/VastOMSDKAdMeasurer;
.super Lio/bidmachine/measurer/OMSDKAdMeasurer;
.source "VastOMSDKAdMeasurer.java"

# interfaces
.implements Lcom/explorestack/iab/measurer/VastAdMeasurer;
.implements Lcom/explorestack/iab/vast/VastPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/measurer/OMSDKAdMeasurer<",
        "Landroid/view/View;",
        ">;",
        "Lcom/explorestack/iab/measurer/VastAdMeasurer;",
        "Lcom/explorestack/iab/vast/VastPlaybackListener;"
    }
.end annotation


# static fields
.field private static final IS_AUTO_PLAY:Z = true


# instance fields
.field private mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

.field private final resourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private skipOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->resourceList:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    .line 42
    iput v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->skipOffset:F

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->resourceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    return-object p0
.end method

.method static synthetic access$102(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .locals 0

    .line 37
    iput-object p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->mediaEvents:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    return-object p1
.end method


# virtual methods
.method public addVerificationScriptResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    invoke-static {p2, v0, p3}, Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/appodeal/adsession/VerificationScriptResource;

    move-result-object p1

    .line 96
    :goto_0
    iget-object p2, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->resourceList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 98
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public addVerificationScriptResourceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$1;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;Ljava/util/List;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 336
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$13;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$13;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    .line 343
    invoke-super {p0}, Lio/bidmachine/measurer/OMSDKAdMeasurer;->destroy()V

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 136
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$3;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$3;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAdLoaded(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 156
    iget v0, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->skipOffset:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 157
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/appodeal/adsession/media/Position;

    .line 158
    invoke-static {v2, v0}, Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/appodeal/adsession/media/Position;)Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    sget-object v1, Lcom/iab/omid/library/appodeal/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/appodeal/adsession/media/Position;

    .line 162
    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/appodeal/adsession/media/Position;)Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;

    move-result-object v0

    .line 166
    :goto_0
    invoke-virtual {p1, v0}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->loaded(Lcom/iab/omid/library/appodeal/adsession/media/VastProperties;)V

    .line 168
    const-string p1, "onAdLoaded"

    invoke-virtual {p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onAdViewReady(Landroid/view/View;)V
    .locals 0

    .line 104
    new-instance p1, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$2;

    invoke-direct {p1, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$2;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    .line 246
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$8;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$8;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoFirstQuartile()V
    .locals 1

    .line 192
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$5;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$5;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoMidpoint()V
    .locals 1

    .line 210
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$6;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$6;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    .line 264
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$9;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$9;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    .line 282
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$10;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoSkipped()V
    .locals 1

    .line 318
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$12;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$12;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoStarted(FF)V
    .locals 1

    .line 174
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$4;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$4;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;FF)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoThirdQuartile()V
    .locals 1

    .line 228
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$7;

    invoke-direct {v0, p0}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$7;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoVolumeChanged(F)V
    .locals 1

    .line 300
    new-instance v0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$11;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/measurer/VastOMSDKAdMeasurer$11;-><init>(Lio/bidmachine/measurer/VastOMSDKAdMeasurer;F)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSkipOffset(F)V
    .locals 0

    .line 79
    iput p1, p0, Lio/bidmachine/measurer/VastOMSDKAdMeasurer;->skipOffset:F

    return-void
.end method
