.class Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "AdColonyFullscreenAd.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private adColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private final isRewarded:Z

.field private listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 25
    iput-boolean p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->isRewarded:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    new-instance p1, Lio/bidmachine/ads/networks/adcolony/AdColonyParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/adcolony/AdColonyParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 35
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/adcolony/AdColonyParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p3, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    iget-object p4, p1, Lio/bidmachine/ads/networks/adcolony/AdColonyParams;->zoneId:Ljava/lang/String;

    invoke-direct {p3, p4, p0, p2}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;-><init>(Ljava/lang/String;Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    iput-object p3, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    .line 42
    iget-boolean p2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->isRewarded:Z

    if-eqz p2, :cond_1

    .line 43
    invoke-static {}, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->get()Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    move-result-object p2

    iget-object p3, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    invoke-virtual {p2, p3}, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->addListener(Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;)V

    .line 45
    :cond_1
    iget-object p2, p1, Lio/bidmachine/ads/networks/adcolony/AdColonyParams;->zoneId:Ljava/lang/String;

    iget-object p3, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    new-instance p4, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p4}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    const-string p5, "adm"

    iget-object p1, p1, Lio/bidmachine/ads/networks/adcolony/AdColonyParams;->adm:Ljava/lang/String;

    .line 47
    invoke-virtual {p4, p5, p1}, Lcom/adcolony/sdk/AdColonyAdOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p1

    .line 45
    invoke-static {p2, p3, p1}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 62
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->adColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    .line 64
    iput-object v1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->adColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 66
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    if-eqz v0, :cond_2

    .line 67
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->isRewarded:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->get()Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    invoke-virtual {v0, v2}, Lio/bidmachine/ads/networks/adcolony/AdColonyRewardListenerWrapper;->removeListener(Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;)V

    .line 70
    :cond_1
    iput-object v1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->listener:Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAdListener;

    :cond_2
    return-void
.end method

.method setAdColonyInterstitial(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->adColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->adColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;->adColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "Interstitial object is null or expired"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
