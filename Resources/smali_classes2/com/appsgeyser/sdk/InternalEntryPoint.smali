.class public final Lcom/appsgeyser/sdk/InternalEntryPoint;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;,
        Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;
    }
.end annotation


# static fields
.field private static final CONFIG_PHP_KEY:Ljava/lang/String; = "config_php_key"

.field private static final INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field private static final METRICA_ON_START_EVENT:Ljava/lang/String; = "on_start_event"


# instance fields
.field private aboutDialogEnabledListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

.field private accessDataEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;

.field private adView:Lcom/appsgeyser/sdk/ads/AdView;

.field private additionalJsCode:Ljava/lang/String;

.field private advertisingTermsDialog:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

.field private afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

.field private appState:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

.field private application:Landroid/app/Application;

.field private configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

.field private customHtmlAbout:Z

.field private disableAdsDataEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;

.field private doneDeviceParser:Z

.field private enablePull:Z

.field private fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

.field private idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

.field private isApplicationVisible:Z

.field private isConsentRequestProcessActive:Z

.field private isConsentRequestProcessCompleted:Z

.field private isOnResumeFSEnabled:Z

.field private jsLoader:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;

.field private networkAvailableListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

.field private networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

.field private onInAppUpdateEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;

.field private rateMyAppEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;

.field private rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

.field private saveAccessDataEnableListener:Z

.field private saveDialogEnableListener:Z

.field private saveDisableAdsEnableListener:Z

.field private saveRateMyAppEnableListener:Z

.field private selectedRating:F

.field private wasFSShownInOnResume:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->enablePull:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isApplicationVisible:Z

    .line 66
    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->wasFSShownInOnResume:Ljava/util/HashMap;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->additionalJsCode:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_PAUSE:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->appState:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    return-object p0
.end method

.method static synthetic access$002(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    return-object p1
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->advertisingTermsDialog:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;)Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isOnResumeFSEnabled:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->customHtmlAbout:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    return-object p0
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    return p0
.end method

.method static synthetic access$202(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    return p1
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->aboutDialogEnabledListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveRateMyAppEnableListener:Z

    return p0
.end method

.method static synthetic access$402(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveRateMyAppEnableListener:Z

    return p1
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rateMyAppEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveAccessDataEnableListener:Z

    return p0
.end method

.method static synthetic access$602(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveAccessDataEnableListener:Z

    return p1
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->accessDataEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/InternalEntryPoint;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDisableAdsEnableListener:Z

    return p0
.end method

.method static synthetic access$802(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDisableAdsEnableListener:Z

    return p1
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->disableAdsDataEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;

    return-object p0
.end method

.method private checkPermissions(Landroid/app/Activity;)Z
    .locals 1

    .line 203
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.INTERNET"

    .line 204
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 205
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid permission. You have to grant ACCESS_NETWORK_STATE and INTERNET permissions to work properly"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lcom/appsgeyser/sdk/ExceptionHandler;->handleException(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;
    .locals 1

    .line 95
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    return-object v0
.end method

.method private init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 138
    invoke-virtual {v0, p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->setTemplateVersion(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->loadConfiguration()V

    .line 141
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 143
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->clearApplicationSettings()V

    .line 146
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v0, p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->setApplicationId(Ljava/lang/String;)V

    .line 147
    iget-object p3, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {p3, p4, p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->setMetricaOnStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    invoke-static {p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/analytics/Analytics;

    move-result-object p2

    .line 151
    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->activityStarted(Landroid/content/Context;)V

    .line 152
    new-instance p2, Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    .line 155
    new-instance p2, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->advertisingTermsDialog:Lcom/appsgeyser/sdk/ui/AdvertisingTermsDialog;

    .line 157
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-nez p2, :cond_2

    .line 158
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    .line 161
    :cond_2
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkAvailableListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 163
    iget-object p3, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {p3, p2}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    .line 165
    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/sdk/SdkController;->initSdk(Landroid/content/Context;)V

    return-void
.end method

.method private isFSWasAlreadyShown(Landroid/app/Activity;)Z
    .locals 1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->wasFSShownInOnResume:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->wasFSShownInOnResume:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addNetworkListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;Landroid/content/Context;)V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-static {p2}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    move-result-object p2

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    .line 578
    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    :goto_0
    return-void
.end method

.method checkIsOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$8;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$8;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V

    .line 591
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/InternalEntryPoint$9;

    invoke-direct {v1, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$9;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    :goto_0
    return-void
.end method

.method public enablePull()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->enablePull:Z

    return-void
.end method

.method getAdView()Lcom/appsgeyser/sdk/ads/AdView;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    return-object v0
.end method

.method public getAdditionalJsCode()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->additionalJsCode:Ljava/lang/String;

    return-object v0
.end method

.method getAdditionalJsCode(Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->jsLoader:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;

    return-void
.end method

.method public getAppState()Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->appState:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->application:Landroid/app/Application;

    return-object v0
.end method

.method getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    .locals 1

    .line 627
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    return-object v0
.end method

.method public getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;
    .locals 2

    .line 176
    const-class v0, Lcom/appsgeyser/sdk/InternalEntryPoint;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setContext(Landroid/content/Context;)V

    .line 182
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMarketChecker()Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;
    .locals 1

    .line 686
    invoke-static {}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->getInstance()Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

    move-result-object v0

    return-object v0
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V
    .locals 3

    .line 391
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->aboutDialogEnabledListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;

    .line 392
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$3;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$3;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    .line 394
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 404
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 407
    :try_start_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAboutScreenEnabled()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;->onDialogEnableReceived(Z)V

    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    goto :goto_0

    .line 414
    :cond_1
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    :goto_0
    return-void
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;)V
    .locals 3

    .line 449
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->accessDataEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;

    .line 450
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$5;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$5;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;)V

    .line 452
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 462
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 465
    :try_start_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserAccess()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;->onAccessDataEnable(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 467
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveAccessDataEnableListener:Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveAccessDataEnableListener:Z

    goto :goto_0

    .line 472
    :cond_1
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveAccessDataEnableListener:Z

    :goto_0
    return-void
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V
    .locals 3

    .line 479
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->disableAdsDataEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;

    .line 480
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$6;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$6;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V

    .line 482
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 492
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 495
    :try_start_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserDisableAds()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;->onDisableAdsDataEnable(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 497
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDisableAdsEnableListener:Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDisableAdsEnableListener:Z

    goto :goto_0

    .line 502
    :cond_1
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDisableAdsEnableListener:Z

    :goto_0
    return-void
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V
    .locals 3

    .line 420
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->onInAppUpdateEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;

    .line 421
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$4;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$4;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V

    .line 423
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 433
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 436
    :try_start_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;->onInAppUpdateEnable(Z)V

    const/4 p1, 0x0

    .line 438
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    goto :goto_0

    .line 443
    :cond_1
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveDialogEnableListener:Z

    :goto_0
    return-void
.end method

.method getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V
    .locals 3

    .line 508
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rateMyAppEnableListener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;

    .line 509
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v0, :cond_0

    .line 510
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v2, Lcom/appsgeyser/sdk/InternalEntryPoint$7;

    invoke-direct {v2, p0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint$7;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V

    .line 511
    invoke-virtual {v0, p1, v1, v2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object p1

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 521
    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 524
    :try_start_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isRateMyAppActive()Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;->onRateMyAppEnableReceived(Z)V

    const/4 p1, 0x0

    .line 526
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveRateMyAppEnableListener:Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveRateMyAppEnableListener:Z

    goto :goto_0

    .line 531
    :cond_1
    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->saveRateMyAppEnableListener:Z

    :goto_0
    return-void
.end method

.method getRewardedAdHelper()Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    return-object v0
.end method

.method public getSelectedRating()F
    .locals 1

    .line 678
    iget v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->selectedRating:F

    return v0
.end method

.method public getUserCountryLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserCountrySIM(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 553
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 554
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 556
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 558
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 559
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 560
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 561
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isApplicationVisible()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isApplicationVisible:Z

    return v0
.end method

.method public isConsentRequestProcessActive()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive:Z

    return v0
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0

    .line 620
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->onDestroy()V

    .line 623
    :cond_0
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onDestroy()V

    return-void
.end method

.method public onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 2

    .line 315
    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 316
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p2

    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v1, Lcom/appsgeyser/sdk/InternalEntryPoint$1;

    invoke-direct {v1, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint$1;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Landroid/content/Context;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    return-void
.end method

.method onPause(Landroid/content/Context;)V
    .locals 2

    .line 213
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_PAUSE:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->appState:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    .line 215
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 216
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 217
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, ""

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/AdView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/AdView;->onPause()V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-eqz v0, :cond_2

    .line 226
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->onPause()V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setActivityInForeground(Z)V

    .line 240
    :cond_4
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onPause()V

    .line 242
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setApplicationVisible(Z)V

    .line 244
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->setPause()V

    return-void
.end method

.method onResume(Landroid/content/Context;)V
    .locals 5

    .line 248
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_RESUME:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    iput-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->appState:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    .line 250
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 251
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .line 252
    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->setCurrentActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 250
    :cond_0
    const-string v2, ""

    .line 256
    :goto_0
    new-instance v1, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v1, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 257
    const-string v3, "ConfigAppBanned"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-static {p1, v4}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->startPausedContentInfoActivity(Landroid/content/Context;Z)V

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/AdView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/AdView;->onResume()V

    .line 265
    :cond_2
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 267
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-nez v1, :cond_3

    .line 268
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    .line 269
    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkAvailableListener:Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 270
    iget-object v2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {v2, v1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    goto :goto_1

    .line 272
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_4

    .line 274
    iget-object v2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 276
    :cond_4
    iget-object v2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    :goto_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 281
    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setContext(Landroid/content/Context;)V

    .line 282
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->setActivityInForeground(Z)V

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    if-eqz v1, :cond_6

    .line 286
    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->setContext(Landroid/content/Context;)V

    .line 287
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->rewardedAdHelper:Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->onResume()V

    .line 290
    :cond_6
    iget-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isOnResumeFSEnabled:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 293
    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->isFSWasAlreadyShown(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->wasFSShownInOnResume:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->fullScreenBanner:Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    const-string v1, "on_resume"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->load(Ljava/lang/String;)V

    .line 299
    :cond_7
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->onResume(Landroid/content/Context;)V

    .line 301
    sget-object p1, Lcom/appsgeyser/sdk/InternalEntryPoint;->INSTANCE:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-virtual {p1, v2}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setApplicationVisible(Z)V

    return-void
.end method

.method public pullEnabled()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->enablePull:Z

    return v0
.end method

.method public removeNetworkListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->networkReceiver:Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->removeListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public retryParsers(Landroid/content/Context;)V
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->doneDeviceParser:Z

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->doneDeviceParser:Z

    :cond_0
    return-void
.end method

.method setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->adView:Lcom/appsgeyser/sdk/ads/AdView;

    return-void
.end method

.method public setAdditionalJsCode(Ljava/lang/String;)V
    .locals 1

    .line 537
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->additionalJsCode:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->jsLoader:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;->onJsLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAfterConsentRequestCompletedListener(Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;)V
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessCompleted:Z

    if-eqz v0, :cond_0

    .line 656
    invoke-interface {p1}, Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;->onConsentRequestCompleted()V

    goto :goto_0

    .line 658
    :cond_0
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

    :goto_0
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->application:Landroid/app/Application;

    return-void
.end method

.method public setApplicationVisible(Z)V
    .locals 0

    .line 643
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isApplicationVisible:Z

    return-void
.end method

.method public setConsentRequestProcessActive(Z)V
    .locals 1

    .line 663
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessCompleted:Z

    if-nez v0, :cond_0

    .line 664
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 666
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessCompleted:Z

    .line 667
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

    if-eqz p1, :cond_1

    .line 668
    invoke-interface {p1}, Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;->onConsentRequestCompleted()V

    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->afterConsentRequestCompletedListener:Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 673
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectedRating(F)V
    .locals 0

    .line 682
    iput p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->selectedRating:F

    return-void
.end method

.method showAboutDialog(Landroid/app/Activity;)V
    .locals 5

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    if-eqz v1, :cond_0

    .line 358
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->idParameters:Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    new-instance v3, Lcom/appsgeyser/sdk/InternalEntryPoint$2;

    invoke-direct {v3, p0, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint$2;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Landroid/content/Intent;)V

    .line 359
    invoke-virtual {v1, p1, v2, v3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    move-result-object v1

    const-string v2, "ServerResponse"

    .line 369
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "config_php_key"

    if-nez v2, :cond_1

    .line 372
    :try_start_0
    invoke-static {v1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isCustomAboutActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->customHtmlAbout:Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :catch_0
    :goto_0
    iget-boolean v1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->customHtmlAbout:Z

    if-nez v1, :cond_2

    .line 384
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 386
    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->startPausedContentInfoActivity(Landroid/content/Context;Z)V

    :goto_1
    return-void
.end method

.method takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->checkPermissions(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/appsgeyser/sdk/InternalEntryPoint;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->getInstance()Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->init(Landroid/content/Context;)V

    .line 109
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    const-string p2, "34e75064-5ba5-4fac-b092-dc10aa167be0"

    invoke-static {p2}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->build()Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p2

    .line 111
    invoke-static {p1, p2}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/yandex/metrica/YandexMetrica;->enableActivityAutoTracking(Landroid/app/Application;)V

    .line 115
    :try_start_0
    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->configuration:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/Configuration;->getMetricaOnStartEvent()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 117
    const-string p3, "on_start_event"

    invoke-static {p3, p2}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 120
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 125
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->rescan(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;)V

    const/4 p2, 0x1

    .line 126
    iput-boolean p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint;->doneDeviceParser:Z

    .line 129
    :cond_2
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->increaseEntries()V

    const/16 p2, 0x7a

    .line 130
    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->requestNotificationPermissions(Landroid/app/Activity;I)V

    return-void
.end method
