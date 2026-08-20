.class Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "MraidFullScreenAd.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field private mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

.field private final mraidType:Lcom/explorestack/iab/mraid/MraidType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/mraid/MraidType;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 32
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidType:Lcom/explorestack/iab/mraid/MraidType;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    return-object p0
.end method

.method static synthetic access$002(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    return-object p1
.end method

.method static synthetic access$100(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->destroyMraidInterstitial()V

    return-void
.end method

.method private destroyMraidInterstitial()V
    .locals 1

    .line 112
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    new-instance v2, Lio/bidmachine/ads/networks/mraid/MraidParams;

    invoke-direct {v2, p4}, Lio/bidmachine/ads/networks/mraid/MraidParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 42
    invoke-virtual {v2, p2}, Lio/bidmachine/ads/networks/mraid/MraidParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 49
    iget-boolean p1, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->omsdkEnabled:Z

    if-eqz p1, :cond_1

    .line 50
    new-instance p1, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    invoke-direct {p1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 51
    iget-object p3, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->injectMeasurerJS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, v2, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    :goto_0
    move-object v5, p1

    .line 55
    new-instance p1, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$1;-><init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;Lio/bidmachine/ads/networks/mraid/MraidParams;Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Ljava/lang/String;)V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$2;

    invoke-direct {v1, p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd$2;-><init>(Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;->destroy(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidOMSDKAdMeasurer:Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->destroyMraidInterstitial()V

    :goto_0
    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;->mraidType:Lcom/explorestack/iab/mraid/MraidType;

    invoke-virtual {p2, p1, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidType;)V

    goto :goto_0

    .line 92
    :cond_0
    const-string p1, "Fullscreen object is null or not ready"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method
