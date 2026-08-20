.class final Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "AdColonyFullscreenAdListener.java"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;


# instance fields
.field private final adColonyFullscreenAd:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;

.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field private isLoaded:Z

.field private isShown:Z

.field private final zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    .line 29
    iput-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->zoneId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->adColonyFullscreenAd:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;

    .line 31
    iput-object p3, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method getZoneId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdExpired()V

    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->isShown:Z

    .line 49
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->isLoaded:Z

    .line 37
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->adColonyFullscreenAd:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;

    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->setAdColonyInterstitial(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 38
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->success()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-boolean p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->isShown:Z

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    goto :goto_0

    .line 72
    :cond_0
    iget-boolean p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->isLoaded:Z

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdExpired()V

    :cond_1
    :goto_0
    return-void
.end method
