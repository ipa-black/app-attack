.class final Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;
.super Ljava/lang/Object;
.source "PangleRewardedAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShowListener"
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 1

    .line 150
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 165
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method
