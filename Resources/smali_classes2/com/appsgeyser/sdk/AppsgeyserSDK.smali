.class public final Lcom/appsgeyser/sdk/AppsgeyserSDK;
.super Ljava/lang/Object;
.source "AppsgeyserSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;,
        Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YandexMetricaReportEvent(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static YandexMetricaReportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-static {p0, p1}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static addNetworkListener(Landroid/content/Context;Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V
    .locals 1

    .line 112
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->addNetworkListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;Landroid/content/Context;)V

    return-void
.end method

.method public static enablePull()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->enablePull()V

    return-void
.end method

.method public static getAdView()Lcom/appsgeyser/sdk/ads/AdView;
    .locals 1

    .line 43
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getAdView()Lcom/appsgeyser/sdk/ads/AdView;

    move-result-object v0

    return-object v0
.end method

.method public static getAdditionalJsCode()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdditionalJsCode(Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getAdditionalJsCode(Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAdditionalJsLoaded;)V

    return-void
.end method

.method public static getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
    .locals 1

    .line 51
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    return-object v0
.end method

.method public static getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;
    .locals 1

    .line 47
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object p0

    return-object p0
.end method

.method public static getPurchaseController()Lcom/appsgeyser/sdk/inapp/PurchaseController;
    .locals 1

    .line 55
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateManager()Lcom/appsgeyser/sdk/utils/UpdateManager;
    .locals 1

    .line 63
    invoke-static {}, Lcom/appsgeyser/sdk/utils/UpdateManager;->getInstance()Lcom/appsgeyser/sdk/utils/UpdateManager;

    move-result-object v0

    return-object v0
.end method

.method public static getUserCountryLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 154
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getUserCountryLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserCountrySIM(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 150
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getUserCountrySIM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAboutDialogEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V
    .locals 1

    .line 83
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAboutDialogEnableListener;)V

    return-void
.end method

.method public static isAccessDataEnable(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;)V

    return-void
.end method

.method public static isAppOnMarket(Landroid/content/Context;Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getMarketChecker()Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->chekIsAppOnMarket(Ljava/lang/String;Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;)V

    return-void
.end method

.method public static isConsentRequestProcessActive()Z
    .locals 1

    .line 136
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->isConsentRequestProcessActive()Z

    move-result v0

    return v0
.end method

.method public static isDisableAdsDataEnable(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V

    return-void
.end method

.method public static isInappUpdateEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V

    return-void
.end method

.method public static isOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    .locals 1

    .line 103
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->checkIsOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V

    return-void
.end method

.method public static isRateMyAppEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V

    return-void
.end method

.method public static launchAccessActivity(Landroid/content/Context;I)V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/inapp/ui/AccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "iconId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static launchDisableAdsDialog(Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 1

    .line 177
    new-instance v0, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;-><init>(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "DisableAds"

    invoke-virtual {v0, p0, p1}, Lcom/appsgeyser/sdk/inapp/ui/DisableAdsPurchaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static loadRewardedVideo(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getRewardedAdHelper()Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->loadRewardedVideo(Lcom/appsgeyser/sdk/ads/rewardedVideo/rewardedFacades/RewardedVideoFacade$RewardedVideoListener;)V

    :cond_0
    return-void
.end method

.method public static onDestroy(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->onDestroy(Landroid/content/Context;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public static setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setAdView(Lcom/appsgeyser/sdk/ads/AdView;)V

    return-void
.end method

.method public static setAfterConsentRequestCompletedListener(Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;)V
    .locals 1

    .line 141
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setAfterConsentRequestCompletedListener(Lcom/appsgeyser/sdk/InternalEntryPoint$AfterConsentRequestListener;)V

    return-void
.end method

.method public static setApplicationInstance(Landroid/app/Application;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setApplication(Landroid/app/Application;)V

    return-void
.end method

.method public static showAboutDialog(Landroid/app/Activity;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->showAboutDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static showRewardedVideo()V
    .locals 1

    .line 124
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getRewardedAdHelper()Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/rewardedVideo/RewardedAdHelper;->showRewardedVideo()V

    return-void
.end method

.method public static takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/appsgeyser/sdk/InternalEntryPoint;->takeOff(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
