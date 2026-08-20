.class Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "AdColonyAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 7

    const/4 v0, 0x2

    .line 37
    new-array v6, v0, [Lio/bidmachine/AdsType;

    const/4 v0, 0x0

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    aput-object v1, v6, v0

    const-string v2, "adcolony"

    const-string v3, "4.8.0"

    const-string v4, "2.1.5.11"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method

.method private static createAppOptions(Landroid/content/Context;Lio/bidmachine/GeneralParams;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 3

    .line 136
    invoke-interface {p1}, Lio/bidmachine/GeneralParams;->getDataRestrictions()Lio/bidmachine/models/DataRestrictions;

    move-result-object v0

    .line 137
    invoke-interface {p1}, Lio/bidmachine/GeneralParams;->getTargetingInfo()Lio/bidmachine/models/TargetingInfo;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v2}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    .line 140
    invoke-interface {v1}, Lio/bidmachine/models/TargetingInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v2, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setUserID(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 144
    :cond_0
    invoke-virtual {v2, p2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 146
    invoke-static {p0}, Lio/bidmachine/core/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 149
    invoke-virtual {v2, p0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setAppVersion(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 152
    :cond_1
    const-string p0, "COPPA"

    .line 153
    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->isUserAgeRestricted()Z

    move-result p2

    .line 152
    invoke-virtual {v2, p0, p2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 155
    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->isUserInGdprScope()Z

    move-result p0

    .line 154
    const-string p2, "GDPR"

    invoke-virtual {v2, p2, p0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 157
    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->getIABGDPRString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {v2, p2, p0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 158
    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->getUSPrivacyString()Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 162
    invoke-interface {v0}, Lio/bidmachine/models/DataRestrictions;->isUserInCcpaScope()Z

    move-result p2

    .line 161
    const-string v0, "CCPA"

    invoke-virtual {v2, v0, p2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 163
    invoke-virtual {v2, v0, p0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 167
    :cond_2
    invoke-interface {p1}, Lio/bidmachine/GeneralParams;->isTestMode()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setTestModeEnabled(Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object v2
.end method


# virtual methods
.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 2

    .line 46
    new-instance v0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;-><init>(Z)V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 2

    .line 51
    new-instance v0, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/adcolony/AdColonyFullscreenAd;-><init>(Z)V

    return-object v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getSDKVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    const-string p4, "app_id"

    invoke-virtual {p3, p4}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 99
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string p1, "app_id"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 104
    :cond_0
    const-string v0, "zone_id"

    invoke-virtual {p3, v0}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string p1, "zone_id"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 110
    :cond_1
    const-string v1, "store_id"

    invoke-virtual {p3, v1}, Lio/bidmachine/NetworkAdUnit;->getMediationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string p1, "store_id"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->adapterGetsParameter(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 117
    :cond_2
    const-class v1, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;->createAppOptions(Landroid/content/Context;Lio/bidmachine/GeneralParams;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/adcolony/sdk/AdColony;->setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z

    .line 119
    new-instance p1, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;

    invoke-direct {p1, p0, p4, v0, p5}, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter$1;-><init>(Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V

    invoke-static {p1}, Lcom/adcolony/sdk/AdColony;->collectSignals(Lcom/adcolony/sdk/AdColonySignalsListener;)V

    .line 130
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-interface {p3}, Lio/bidmachine/NetworkConfigParams;->obtainNetworkParams()Ljava/util/Map;

    move-result-object p3

    if-nez p3, :cond_0

    .line 67
    const-string p1, "Network parameters not found"

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "%s not provided"

    if-eqz v2, :cond_1

    .line 72
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    const-string v0, "store_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 77
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lio/bidmachine/NetworkInitializationCallback;->onFail(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_2
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    .line 85
    invoke-static {p1, p2, p3}, Lio/bidmachine/ads/networks/adcolony/AdColonyAdapter;->createAppOptions(Landroid/content/Context;Lio/bidmachine/GeneralParams;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object p1

    .line 84
    invoke-static {v0, p1, v1}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Application;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;)Z

    .line 88
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method
