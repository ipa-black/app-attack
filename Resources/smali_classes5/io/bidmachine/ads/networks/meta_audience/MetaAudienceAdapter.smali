.class Lio/bidmachine/ads/networks/meta_audience/MetaAudienceAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "MetaAudienceAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v0, 0x4

    .line 35
    new-array v6, v0, [Lio/bidmachine/AdsType;

    const/4 v0, 0x0

    sget-object v1, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x3

    sget-object v1, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const-string v2, "meta_audience"

    const-string v3, "6.11.0"

    const-string v4, "2.1.5.12"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method private configure(ZLio/bidmachine/models/DataRestrictions;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 116
    sget-object p1, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setTestAdType(Lcom/facebook/ads/AdSettings$TestAdType;)V

    .line 119
    :cond_0
    const-string p1, "BidMachine"

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2.1.5"

    .line 122
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 119
    const-string v0, "%s_%s:%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 123
    invoke-interface {p2}, Lio/bidmachine/models/DataRestrictions;->isUserAgeRestricted()Z

    move-result p1

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V

    .line 124
    invoke-interface {p2}, Lio/bidmachine/models/DataRestrictions;->isUserInCcpaScope()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    invoke-interface {p2}, Lio/bidmachine/models/DataRestrictions;->isUserHasCcpaConsent()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 126
    new-array p1, p2, [Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 128
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "LDU"

    aput-object v0, p1, p2

    invoke-static {p1, p2, p2}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 1

    .line 44
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceBanner;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 49
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceInterstitial;-><init>()V

    return-object v0
.end method

.method public createNativeAd()Lio/bidmachine/unified/UnifiedNativeAd;
    .locals 1

    .line 59
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 54
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceRewarded;-><init>()V

    return-object v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    const-string p2, "app_id"

    invoke-virtual {p3, p2}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 87
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p2}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 92
    :cond_0
    const-string v0, "meta_key"

    invoke-virtual {p3, v0}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 99
    :cond_1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/BidderTokenProvider;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "token"

    if-eqz v1, :cond_2

    .line 101
    invoke-static {v2}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 106
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-interface {v1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p5, v1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->isTestMode()Z

    move-result p3

    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceAdapter;->configure(ZLio/bidmachine/models/DataRestrictions;)V

    .line 74
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 76
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method
