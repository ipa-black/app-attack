.class public Lcom/appodeal/ads/adapters/meta/MetaNetwork;
.super Lcom/appodeal/ads/AdNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/meta/MetaNetwork$builder;,
        Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/AdNetwork<",
        "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final initializer:Lcom/appodeal/ads/adapters/meta/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/adapters/meta/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/meta/a;-><init>()V

    sput-object v0, Lcom/appodeal/ads/adapters/meta/MetaNetwork;->initializer:Lcom/appodeal/ads/adapters/meta/a;

    return-void
.end method

.method private constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/AdNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appodeal/ads/AdNetworkBuilder;Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/meta/MetaNetwork;-><init>(Lcom/appodeal/ads/AdNetworkBuilder;)V

    return-void
.end method

.method public static mapError(Lcom/facebook/ads/AdError;)Lcom/appodeal/ads/networking/LoadingError;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p0

    const/16 v1, 0x7d9

    if-eq p0, v1, :cond_4

    const/16 v1, 0x834

    if-eq p0, v1, :cond_3

    const/16 v1, 0xbb9

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1772

    if-eq p0, v1, :cond_3

    const/16 v1, 0x1773

    if-eq p0, v1, :cond_3

    const/16 v1, 0x1b59

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1b5a

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return-object v0

    :pswitch_0
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->ConnectionError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :cond_1
    :pswitch_2
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :cond_2
    :pswitch_3
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :cond_3
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->InvalidAssets:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :cond_4
    sget-object p0, Lcom/appodeal/ads/networking/LoadingError;->TimeoutError:Lcom/appodeal/ads/networking/LoadingError;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b5d
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateConsent(Lcom/appodeal/ads/RestrictedData;)V
    .locals 2

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserInCcpaScope()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "LDU"

    aput-object v1, p1, v0

    invoke-static {p1, v0, v0}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createBanner()Lcom/appodeal/ads/unified/UnifiedBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedBanner<",
            "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/meta/banner/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/meta/banner/a;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lcom/appodeal/ads/unified/UnifiedInterstitial;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
            "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/meta/interstitial/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/meta/interstitial/a;-><init>()V

    return-object v0
.end method

.method public createMrec()Lcom/appodeal/ads/unified/UnifiedMrec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedMrec<",
            "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/meta/mrec/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/meta/mrec/a;-><init>()V

    return-object v0
.end method

.method public createNativeAd()Lcom/appodeal/ads/unified/UnifiedNative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedNative<",
            "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/meta/native_ad/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/meta/native_ad/a;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lcom/appodeal/ads/unified/UnifiedRewarded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/appodeal/ads/unified/UnifiedRewarded<",
            "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/adapters/meta/rewarded_video/a;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/meta/rewarded_video/a;-><init>()V

    return-object v0
.end method

.method public getRecommendedVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.11.0"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.11.0"

    return-object v0
.end method

.method public initialize(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/AdUnit;Lcom/appodeal/ads/AdNetworkMediationParams;Lcom/appodeal/ads/NetworkInitializationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/AdUnit;",
            "Lcom/appodeal/ads/AdNetworkMediationParams;",
            "Lcom/appodeal/ads/NetworkInitializationListener<",
            "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "facebook_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;

    invoke-direct {v1, v0}, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v0

    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->isUserAgeRestricted()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->isTestMode()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setTestMode(Z)V

    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContextOrNull()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->turnOnSDKDebugger(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setTestAdType(Lcom/facebook/ads/AdSettings$TestAdType;)V

    :cond_0
    invoke-interface {p3}, Lcom/appodeal/ads/AdNetworkMediationParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/appodeal/ads/adapters/meta/MetaNetwork;->updateConsent(Lcom/appodeal/ads/RestrictedData;)V

    sget-object p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork;->initializer:Lcom/appodeal/ads/adapters/meta/a;

    invoke-virtual {p3}, Lcom/appodeal/ads/adapters/meta/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2}, Lcom/appodeal/ads/AdUnit;->getMediatorName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;

    invoke-direct {v0, p4, v1}, Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;-><init>(Lcom/appodeal/ads/NetworkInitializationListener;Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/appodeal/ads/adapters/meta/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/adapters/meta/MetaNetwork$a;)V

    goto :goto_0

    :cond_1
    invoke-interface {p4, v1}, Lcom/appodeal/ads/NetworkInitializationListener;->onInitializationFinished(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isSupportSmartBanners()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
