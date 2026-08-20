.class public abstract Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork$builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/google/android/gms/ads/AdRequest;",
        "AdRequestBuilderType:",
        "Lcom/google/android/gms/ads/AdRequest$Builder;",
        ">",
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
        "TAdRequestType;>;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static isInitialized:Z = false


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

.method private createParams(Lcom/google/android/gms/ads/AdRequest;Ljava/lang/String;Ljava/lang/Boolean;ZZ)Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "ZZ)",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "TAdRequestType;>;"
        }
    .end annotation

    new-instance v6, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;-><init>(Lcom/google/android/gms/ads/AdRequest;Ljava/lang/String;Ljava/lang/Boolean;ZZ)V

    return-object v6
.end method

.method public static mapError(Lcom/google/android/gms/ads/LoadAdError;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdRequestType:",
            "Lcom/google/android/gms/ads/AdRequest;",
            ">(",
            "Lcom/google/android/gms/ads/LoadAdError;",
            ")",
            "Lcom/appodeal/ads/networking/LoadingError;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    return-object v0

    :cond_1
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :cond_2
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :cond_3
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0
.end method

.method private obtainTestDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    const-string p1, "B3EEABB8EE11C2BE770B684D95219ECB"

    return-object p1
.end method

.method private setConsent(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/appodeal/ads/AdNetworkMediationParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestBuilderType;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p2

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserGdprProtected()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "npa"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_0
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->isUserCcpaProtected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "rdp"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getUSPrivacyString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "IABUSPrivacy_String"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_2
    :goto_0
    return-void
.end method

.method private setMediatorName(Lcom/google/android/gms/ads/AdRequest$Builder;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestBuilderType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_0
    return-void
.end method

.method private setTargeting(Landroid/content/Context;Lcom/google/android/gms/ads/RequestConfiguration$Builder;Lcom/appodeal/ads/AdNetworkMediationParams;)V
    .locals 1

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->isUserAgeRestricted()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->isTestMode()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->obtainTestDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    const-string v0, "B3EEABB8EE11C2BE770B684D95219ECB"

    aput-object v0, p3, p1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public configureAdRequest(Landroid/content/Context;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;)Lcom/google/android/gms/ads/AdRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            ")TAdRequestType;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->createAdRequestBuilder(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v1

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getMediatorName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->setMediatorName(Lcom/google/android/gms/ads/AdRequest$Builder;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->setConsent(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/appodeal/ads/AdNetworkMediationParams;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->setTargeting(Landroid/content/Context;Lcom/google/android/gms/ads/RequestConfiguration$Builder;Lcom/appodeal/ads/AdNetworkMediationParams;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->createAdRequest(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public abstract createAdRequest(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestBuilderType;)TAdRequestType;"
        }
    .end annotation
.end method

.method public abstract createAdRequestBuilder(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TAdRequestBuilderType;"
        }
    .end annotation
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "21.4.0"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersion()Lcom/google/android/gms/ads/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams<",
            "TAdRequestType;>;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "admob_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "use_adaptive_banner"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "use_smart_banner"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->isMuted()Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-boolean v0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->isInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->isInitialized:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setAppMuted(Z)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->configureAdRequest(Landroid/content/Context;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobNetwork;->createParams(Lcom/google/android/gms/ads/AdRequest;Ljava/lang/String;Ljava/lang/Boolean;ZZ)Lcom/appodeal/ads/adapters/admob/unified/UnifiedAdmobRequestParams;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public isSupportSmartBanners()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
