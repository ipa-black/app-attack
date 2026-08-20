.class Lio/bidmachine/ads/networks/notsy/NotsyRewarded;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "NotsyRewarded.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private listener:Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;

.field private notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lio/bidmachine/ads/networks/notsy/NotsyRewarded;Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;)Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;
    .locals 0

    .line 16
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    new-instance p1, Lio/bidmachine/ads/networks/notsy/NotsyParams;

    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/notsy/NotsyParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 30
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/notsy/NotsyParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p1, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/ads/networks/notsy/NotsyRewarded;Lio/bidmachine/ads/networks/notsy/NotsyRewarded$1;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->listener:Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;

    .line 38
    invoke-static {p5, p1}, Lio/bidmachine/ads/networks/notsy/NotsyNetwork;->loadRewarded(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->listener:Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;

    .line 59
    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->destroy()V

    .line 61
    iput-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    :cond_0
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 46
    const-string p1, "Activity is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->notsyRewardedAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/NotsyRewarded;->listener:Lio/bidmachine/ads/networks/notsy/NotsyRewarded$Listener;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;->show(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V

    goto :goto_0

    .line 52
    :cond_1
    const-string p1, "Rewarded object is null or not loaded"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
