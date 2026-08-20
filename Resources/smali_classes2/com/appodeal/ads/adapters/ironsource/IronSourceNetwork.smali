.class public Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "IronSourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$builder;,
        Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;,
        Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$GlobalInterstitialListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Ljava/lang/String; = "0"

.field private static final appStateChangeListener:Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;

.field private static instanceInProgress:Z

.field public static instancesList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final interstitialListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;",
            ">;"
        }
    .end annotation
.end field

.field public static isInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->interstitialListeners:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instancesList:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->isInitialized:Z

    .line 55
    sput-boolean v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instanceInProgress:Z

    .line 57
    new-instance v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$1;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$1;-><init>()V

    sput-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->appStateChangeListener:Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;

    return-void
.end method

.method private constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method public static canLoadInstance(Ljava/lang/String;)Z
    .locals 1

    .line 216
    sget-boolean v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instanceInProgress:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instancesList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInstanceInProgress()Z
    .locals 1

    .line 224
    sget-boolean v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instanceInProgress:Z

    return v0
.end method

.method public static mapError(I)Lcom/appodeal/ads/LoadingError;
    .locals 1

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x208

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1fa

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 254
    :pswitch_0
    sget-object p0, Lcom/appodeal/ads/LoadingError;->NoFill:Lcom/appodeal/ads/LoadingError;

    return-object p0

    .line 256
    :cond_0
    sget-object p0, Lcom/appodeal/ads/LoadingError;->ConnectionError:Lcom/appodeal/ads/LoadingError;

    return-object p0

    .line 251
    :cond_1
    :pswitch_1
    sget-object p0, Lcom/appodeal/ads/LoadingError;->InternalError:Lcom/appodeal/ads/LoadingError;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1fc
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static prepareInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    sput-boolean v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instanceInProgress:Z

    .line 200
    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instancesList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    return-void
.end method

.method public static registerInterstitialInstances(Lorg/json/JSONArray;)V
    .locals 3

    .line 204
    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instancesList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 207
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const/4 v0, 0x0

    .line 209
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 210
    sget-object v1, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instancesList:Ljava/util/Queue;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setInProgressInstance(Z)V
    .locals 0

    .line 220
    sput-boolean p0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->instanceInProgress:Z

    return-void
.end method

.method private setMediatorName(Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setMediationType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTargeting(Lcom/appodeal/ads/RestrictedData;)V
    .locals 1

    .line 182
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static subscribeInterstitialListener(Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .locals 1

    .line 233
    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->interstitialListeners:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unsubscribeInterstitialListener(Ljava/lang/String;)V
    .locals 1

    .line 237
    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->interstitialListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public canLoadInterstitialWhenDisplaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canLoadRewardedWhenDisplaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canLoadVideoWhenDisplaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;-><init>()V

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/ironsource/video/IronSourceVideo;-><init>()V

    return-object v0
.end method

.method protected getAppStateChangeListener()Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;
    .locals 1

    .line 85
    sget-object v0, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->appStateChangeListener:Lcom/appodeal/ads/unified/UnifiedAppStateChangeListener;

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, "7.2.1.1"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialize(Landroid/app/Activity;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "instance_id"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->updateConsent(Lcom/appodeal/ads/RestrictedData;)V

    .line 150
    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->setTargeting(Lcom/appodeal/ads/RestrictedData;)V

    .line 151
    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getMediatorName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->setMediatorName(Ljava/lang/String;)V

    .line 152
    new-instance p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 153
    sget-boolean p2, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->isInitialized:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 154
    sput-boolean p2, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->isInitialized:Z

    .line 155
    new-instance v1, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$2;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$2;-><init>(Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;)V

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 161
    new-instance v1, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$GlobalInterstitialListener;

    invoke-direct {v1}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$GlobalInterstitialListener;-><init>()V

    invoke-static {v1}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v2, 0x0

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v3, v1, v2

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v2, v1, p2

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->initISDemandOnly(Landroid/content/Context;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 167
    :cond_0
    invoke-interface {p4, p3}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public updateConsent(Lcom/appodeal/ads/RestrictedData;)V
    .locals 2

    .line 172
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserInGdprScope()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setConsent(Z)V

    .line 175
    :cond_0
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserInCcpaScope()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "do_not_sell"

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserAgeRestricted()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "is_child_directed"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/IronSource;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyLoadAvailability(Lcom/appodeal/ads/AdType;)Lcom/appodeal/ads/LoadingError;
    .locals 1

    .line 123
    sget-object v0, Lcom/appodeal/ads/AdType;->Interstitial:Lcom/appodeal/ads/AdType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/AdType;->Video:Lcom/appodeal/ads/AdType;

    if-ne p1, v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->isInterstitialShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->isVideoShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0, p1}, Lcom/appodeal/ads/AdNetwork;->verifyLoadAvailability(Lcom/appodeal/ads/AdType;)Lcom/appodeal/ads/LoadingError;

    move-result-object p1

    return-object p1

    .line 125
    :cond_2
    :goto_0
    sget-object p1, Lcom/appodeal/ads/LoadingError;->Canceled:Lcom/appodeal/ads/LoadingError;

    return-object p1
.end method
