.class Lio/bidmachine/ads/networks/pangle/PangleAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "PangleAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v0, 0x3

    .line 40
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

    const-string v2, "pangle_sdk"

    const-string v3, "4.5.0.6"

    const-string v4, "2.1.5.4"

    const/16 v5, 0x10

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method private configure(Lio/bidmachine/models/DataRestrictions;)V
    .locals 1

    .line 156
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;->toPangleCoppa(Lio/bidmachine/models/DataRestrictions;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->setCoppa(I)V

    .line 157
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;->toPangleGDPR(Lio/bidmachine/models/DataRestrictions;)I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->setGdpr(I)V

    return-void
.end method

.method private createPangleData()Ljava/lang/String;
    .locals 5

    .line 175
    const-string v0, "value"

    const-string v1, "name"

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "mediation"

    .line 177
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "BidMachine"

    .line 178
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "adapter_version"

    .line 180
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "2.1.5"

    .line 181
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private toPangleCoppa(Lio/bidmachine/models/DataRestrictions;)I
    .locals 0

    .line 163
    invoke-interface {p1}, Lio/bidmachine/models/DataRestrictions;->isUserAgeRestricted()Z

    move-result p1

    return p1
.end method

.method private toPangleGDPR(Lio/bidmachine/models/DataRestrictions;)I
    .locals 0

    .line 169
    invoke-interface {p1}, Lio/bidmachine/models/DataRestrictions;->isUserGdprProtected()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 1

    .line 49
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 54
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleInterstitialAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/pangle/PangleInterstitialAd;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 1

    .line 59
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;-><init>()V

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
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result p1

    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    const-string p1, "app_id"

    invoke-virtual {p3, p1}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 125
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 130
    :cond_0
    const-string v0, "slot_id"

    invoke-virtual {p3, v0}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 131
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-static {v0}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 137
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedAdRequestParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;->configure(Lio/bidmachine/models/DataRestrictions;)V

    .line 139
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "network_bid_token"

    if-eqz v1, :cond_2

    .line 141
    invoke-static {v2}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 146
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-interface {p5, v1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    return-void
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-interface {p3}, Lio/bidmachine/NetworkConfigParams;->obtainNetworkParams()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    .line 75
    const-string p1, "Network parameters not found"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string p1, "%s not provided"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object v0

    .line 86
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 88
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p3

    .line 89
    invoke-interface {p2}, Lio/bidmachine/InitializationParams;->isTestMode()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 90
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;->toPangleCoppa(Lio/bidmachine/models/DataRestrictions;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->coppa(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 91
    invoke-direct {p0, v0}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;->toPangleGDPR(Lio/bidmachine/models/DataRestrictions;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->setGDPR(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 92
    invoke-direct {p0}, Lio/bidmachine/ads/networks/pangle/PangleAdapter;->createPangleData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p2

    .line 94
    new-instance p3, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lio/bidmachine/ads/networks/pangle/PangleAdapter$1;-><init>(Lio/bidmachine/ads/networks/pangle/PangleAdapter;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lio/bidmachine/NetworkInitializationCallback;)V

    invoke-static {p3}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
