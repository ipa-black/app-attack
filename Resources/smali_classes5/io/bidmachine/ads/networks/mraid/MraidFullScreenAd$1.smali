.class Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;
.super Ljava/lang/Object;
.source "MraidFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field final synthetic val$creativeAdm:Ljava/lang/String;

.field final synthetic val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$applicationContext:Landroid/content/Context;

    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    iput-object p5, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$creativeAdm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 59
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->newBuilder()Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->cacheControl:Lcom/explorestack/iab/CacheControl;

    .line 60
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->placeholderTimeoutSec:F

    .line 61
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setPlaceholderTimeoutSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->skipOffset:I

    int-to-float v2, v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->useNativeClose:Z

    .line 63
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;

    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    iget-object v5, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    .line 66
    invoke-static {v5}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->access$100(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;-><init>(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;)V

    .line 64
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->r1:Z

    .line 67
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR1(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->r2:Z

    .line 68
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR2(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressDuration:I

    int-to-float v2, v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setDurationSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->storeUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->closeableViewStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    .line 71
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->countDownStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    .line 72
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/MraidParams;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    .line 73
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProgressStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    .line 74
    invoke-static {v2}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->access$100(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setAdMeasurer(Lcom/explorestack/iab/measurer/MraidAdMeasurer;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$applicationContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->access$002(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    .line 76
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->this$0:Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->access$000(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$creativeAdm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 79
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;->val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    const-string v1, "Exception when loading fullscreen object"

    invoke-static {v1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
