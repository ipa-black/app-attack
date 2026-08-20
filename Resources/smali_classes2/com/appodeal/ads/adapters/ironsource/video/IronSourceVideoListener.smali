.class Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;
.super Ljava/lang/Object;
.source "IronSourceVideoListener.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;


# instance fields
.field private final adObject:Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;

.field private final callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;


# direct methods
.method constructor <init>(Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->adObject:Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;

    .line 21
    iput-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClicked()V

    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->unsubscribeInterstitialListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->setInProgressInstance(Z)V

    .line 63
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClosed()V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    .line 42
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->unsubscribeInterstitialListener(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->prepareInstance()V

    if-eqz p2, :cond_0

    .line 45
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 46
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->mapError(I)Lcom/appodeal/ads/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoadFailed(Lcom/appodeal/ads/LoadingError;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoadFailed(Lcom/appodeal/ads/LoadingError;)V

    :goto_0
    return-void
.end method

.method public onInterstitialAdOpened(Ljava/lang/String;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShown()V

    return-void
.end method

.method public onInterstitialAdReady(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->adObject:Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;

    iget-boolean v0, v0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;->isLoaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->adObject:Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;

    iget-boolean v0, v0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;->isLoadFailed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoaded()V

    return-void

    .line 30
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->unsubscribeInterstitialListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->setInProgressInstance(Z)V

    .line 32
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->adObject:Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;

    iget-boolean p1, p1, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;->isLoaded:Z

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdExpired()V

    :cond_2
    return-void
.end method

.method public onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->unsubscribeInterstitialListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->setInProgressInstance(Z)V

    if-eqz p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 72
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 71
    invoke-virtual {p1, v0, p2}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideoListener;->callback:Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShowFailed()V

    return-void
.end method
