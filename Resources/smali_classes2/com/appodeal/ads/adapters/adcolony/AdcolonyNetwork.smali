.class public Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$builder;,
        Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static cachedSdkVersion:Ljava/lang/String; = null

.field private static isInitialized:Z = false

.field private static isInitializing:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method private getZones(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v0

    :cond_3
    return-object p1
.end method

.method private setMediatorName(Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setMediationNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    :cond_0
    return-void
.end method

.method private setTargeting(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 3

    new-instance v0, Lcom/adcolony/sdk/AdColonyUserMetadata;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyUserMetadata;-><init>()V

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getAge()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setUserAge(I)Lcom/adcolony/sdk/AdColonyUserMetadata;

    :cond_0
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$a;->a:[I

    invoke-virtual {v1}, Lcom/appodeal/ads/UserSettings$Gender;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "female"

    goto :goto_0

    :cond_2
    const-string v1, "male"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setUserGender(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    :cond_3
    :goto_1
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getZip()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setUserZipCode(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    :cond_4
    invoke-interface {p2, p1}, Lcom/appodeal/ads/RestrictedData;->getLocation(Landroid/content/Context;)Lcom/appodeal/ads/LocationData;

    move-result-object p1

    invoke-interface {p1}, Lcom/appodeal/ads/LocationData;->getDeviceLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyUserMetadata;->setUserLocation(Landroid/location/Location;)Lcom/adcolony/sdk/AdColonyUserMetadata;

    :cond_5
    new-instance p1, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p1}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/AdColonyAdOptions;->setUserMetadata(Lcom/adcolony/sdk/AdColonyUserMetadata;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p1

    return-object p1
.end method


# virtual methods
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

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;-><init>()V

    return-object v0
.end method

.method public createVideo()Lcom/appodeal/ads/unified/UnifiedVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedVideo<",
            "Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/adcolony/video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/adcolony/video/a;-><init>()V

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.8.0"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->isInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->cachedSdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "com.adcolony.sdk.q"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "I"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->cachedSdkVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method public initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "zone_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "zones"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "store"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "consent_string"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getAppOptions()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v5}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    :cond_0
    invoke-virtual {v5, v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setKeepScreenOn(Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v6

    invoke-virtual {p0, v6, v5, v4}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->updatePrivacy(Lcom/appodeal/ads/RestrictedData;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getMediatorName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v5, p2}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->setMediatorName(Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;)V

    sget-boolean p2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->isInitialized:Z

    if-eqz p2, :cond_1

    invoke-static {v5}, Lcom/adcolony/sdk/AdColony;->setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z

    new-instance p2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->setTargeting(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    :goto_0
    invoke-interface {p4, p2}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-boolean p2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->isInitializing:Z

    if-eqz p2, :cond_2

    new-instance p2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->setTargeting(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/adcolony/sdk/AdColonyAppOptions;->setAppVersion(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_1
    sput-boolean v2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->isInitializing:Z

    move-object v4, p1

    check-cast v4, Landroid/app/Application;

    invoke-direct {p0, v1, v0}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->getZones(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v3, v1}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Application;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    sput-boolean v2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->isInitialized:Z

    sput-boolean p2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->isInitializing:Z

    new-instance p2, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork;->setTargeting(Landroid/content/Context;Lcom/appodeal/ads/RestrictedData;)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    goto :goto_0
.end method

.method public updatePrivacy(Lcom/appodeal/ads/RestrictedData;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;)V
    .locals 5

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserInGdprScope()Z

    move-result v0

    const-string v1, "1"

    const-string v2, "0"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->getIabConsentString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p3, v1

    goto :goto_0

    :cond_0
    move-object p3, v2

    :cond_1
    :goto_0
    const-string v0, "GDPR"

    invoke-virtual {p2, v0, v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    :cond_2
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserInCcpaScope()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->getUSPrivacyString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, p3

    :goto_1
    const-string p3, "CCPA"

    invoke-virtual {p2, p3, v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    :cond_5
    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserAgeRestricted()Z

    move-result p1

    const-string p3, "COPPA"

    invoke-virtual {p2, p3, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-void
.end method

.method public verifyLoadAvailability(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Video:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Rewarded:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/AdNetwork;->isVideoShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/AdNetwork;->isRewardedShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/appodeal/ads/AdNetwork;->verifyLoadAvailability(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->Canceled:Lcom/appodeal/ads/networking/LoadingError;

    return-object p1
.end method
