.class final Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;
.super Ljava/lang/Object;
.source "CriteoInterstitial.java"

# interfaces
.implements Lcom/criteo/publisher/CriteoInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/criteo/CriteoInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {p1}, Lio/bidmachine/ads/networks/criteo/CriteoAdapter;->mapError(Lcom/criteo/publisher/CriteoErrorCode;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoInterstitial$Listener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method
