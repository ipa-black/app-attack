.class final Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;
.super Ljava/lang/Object;
.source "PangleRewardedAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadListener"
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field private isDestroyed:Z

.field private final pangleRewardedAd:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->pangleRewardedAd:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;

    .line 100
    iput-object p2, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->isDestroyed:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 121
    iget-boolean p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->isDestroyed:Z

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->pangleRewardedAd:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->setTtRewardVideoAd(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 111
    iget-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onRewardVideoCached()V
    .locals 0

    return-void
.end method
