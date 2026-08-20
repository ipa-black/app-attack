.class public abstract Lcom/appodeal/ads/AdNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final adActivityRules:[Lcom/appodeal/ads/utils/ActivityRule;

.field private final adapterVersion:Ljava/lang/String;

.field private isInterstitialShowing:Z

.field private isRewardedShowing:Z

.field private isVideoShowing:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/AdNetwork;->isInterstitialShowing:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/AdNetwork;->isVideoShowing:Z

    iput-boolean v0, p0, Lcom/appodeal/ads/AdNetwork;->isRewardedShowing:Z

    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetworkBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/AdNetwork;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetworkBuilder;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/AdNetwork;->adapterVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appodeal/ads/AdNetworkBuilder;->getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/AdNetwork;->adActivityRules:[Lcom/appodeal/ads/utils/ActivityRule;

    return-void
.end method


# virtual methods
.method public canLoadInterstitialWhenDisplaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canLoadRewardedWhenDisplaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canLoadVideoWhenDisplaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedBanner<",
            "TNetworkRequestParams;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "TNetworkRequestParams;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedMrec<",
            "TNetworkRequestParams;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createNativeAd()Lcom/appodeal/ads/unified/UnifiedNative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedNative<",
            "TNetworkRequestParams;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "TNetworkRequestParams;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "TNetworkRequestParams;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdActivityRules()[Lcom/appodeal/ads/utils/ActivityRule;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/AdNetwork;->adActivityRules:[Lcom/appodeal/ads/utils/ActivityRule;

    return-object v0
.end method

.method public final getAdapterVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/AdNetwork;->adapterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStateChangeListener()Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/AdNetwork;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "TNetworkRequestParams;>;)V"
        }
    .end annotation
.end method

.method public final isInterstitialShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/AdNetwork;->isInterstitialShowing:Z

    return v0
.end method

.method public final isRewardedShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/AdNetwork;->isRewardedShowing:Z

    return v0
.end method

.method public isSupportSmartBanners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isVideoShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/AdNetwork;->isVideoShowing:Z

    return v0
.end method

.method public final setInterstitialShowing(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/AdNetwork;->canLoadInterstitialWhenDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/appodeal/ads/AdNetwork;->isInterstitialShowing:Z

    :cond_0
    return-void
.end method

.method public setLogging(Z)V
    .locals 0

    return-void
.end method

.method public final setRewardedShowing(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/AdNetwork;->canLoadRewardedWhenDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/appodeal/ads/AdNetwork;->isRewardedShowing:Z

    :cond_0
    return-void
.end method

.method public final setVideoShowing(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/appodeal/ads/AdNetwork;->canLoadVideoWhenDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/appodeal/ads/AdNetwork;->isVideoShowing:Z

    :cond_0
    return-void
.end method

.method public verifyLoadAvailability(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
