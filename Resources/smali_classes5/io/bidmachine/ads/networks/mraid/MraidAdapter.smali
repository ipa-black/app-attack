.class public Lio/bidmachine/ads/networks/mraid/MraidAdapter;
.super Lio/bidmachine/NetworkAdapter;
.source "MraidAdapter.java"


# static fields
.field public static final ADAPTER_SDK_VERSION_NAME:Ljava/lang/String; = "1.3.0"

.field public static final ADAPTER_VERSION_NAME:Ljava/lang/String; = "2.1.5.1"

.field public static final KEY:Ljava/lang/String; = "mraid"


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v0, 0x3

    .line 30
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

    const-string v2, "mraid"

    const-string v3, "1.3.0"

    const-string v4, "2.1.5.1"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/NetworkAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 1

    .line 61
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 2

    .line 66
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    sget-object v1, Lcom/explorestack/iab/mraid/MraidType;->Static:Lcom/explorestack/iab/mraid/MraidType;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;-><init>(Lcom/explorestack/iab/mraid/MraidType;)V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 2

    .line 71
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    sget-object v1, Lcom/explorestack/iab/mraid/MraidType;->Rewarded:Lcom/explorestack/iab/mraid/MraidType;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;-><init>(Lcom/explorestack/iab/mraid/MraidType;)V

    return-object v0
.end method

.method protected isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    new-instance p2, Lcom/explorestack/iab/bridge/NativeStorageJsBridge;

    invoke-direct {p2}, Lcom/explorestack/iab/bridge/NativeStorageJsBridge;-><init>()V

    invoke-static {p2}, Lcom/explorestack/iab/bridge/JsBridgeHandler;->addBridge(Lcom/explorestack/iab/bridge/a;)Z

    .line 54
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/measurer/OMSDKSettings;->initialize(Landroid/content/Context;)V

    .line 56
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method

.method public setLogging(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    sget-object p1, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    :goto_0
    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->setLoggingLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)V

    return-void
.end method
