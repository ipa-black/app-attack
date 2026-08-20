.class public Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$builder;,
        Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private loggingLevel:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method static synthetic lambda$initialize$0(Lcom/appodeal/ads/NetworkInitializationListener;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Lcom/appodeal/ads/AdUnit;Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 0

    :try_start_0
    new-instance p4, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;

    invoke-interface {p3}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Lorg/json/JSONObject;)V

    invoke-interface {p0, p4}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p0, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_0
    return-void
.end method

.method private setMediatorName(Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedBanner<",
            "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/applovin/banner/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/applovin/banner/a;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/applovin/interstitial/a;-><init>()V

    return-object v0
.end method

.method public createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedMrec<",
            "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/applovin/mrec/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/applovin/mrec/a;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;-><init>()V

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/applovin/video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/applovin/video/a;-><init>()V

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "11.6.1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p3

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;-><init>(Lorg/json/JSONObject;Lcom/appodeal/ads/RestrictedData;)V

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applovin_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "zone_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v2, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v2

    iget-boolean v3, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;->loggingLevel:Z

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->isMuted()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->setMuted(Z)V

    :cond_1
    new-instance v2, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v2, p4, v1, v0, p2}, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/NetworkInitializationListener;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Lcom/appodeal/ads/AdUnit;)V

    invoke-virtual {v0, v2}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    invoke-virtual {p0, p1, p3}, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;->updateConsent(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)V

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getMediatorName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;->setMediatorName(Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork;->loggingLevel:Z

    return-void
.end method

.method public updateConsent(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)V
    .locals 1

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserInGdprScope()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserInCcpaScope()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setDoNotSell(ZLandroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserAgeRestricted()Z

    move-result p2

    invoke-static {p2, p1}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setIsAgeRestrictedUser(ZLandroid/content/Context;)V

    return-void
.end method
