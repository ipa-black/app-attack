.class Lio/bidmachine/ads/networks/pangle/PangleBannerAd;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "PangleBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/pangle/PangleBannerAd$InteractionListener;,
        Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private interactionlistener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$InteractionListener;

.field private loadListener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

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

    .line 23
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    new-instance p5, Lio/bidmachine/ads/networks/pangle/PangleParams;

    invoke-direct {p5, p4}, Lio/bidmachine/ads/networks/pangle/PangleParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 41
    invoke-virtual {p5, p2}, Lio/bidmachine/ads/networks/pangle/PangleParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance p4, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v0, p5, Lio/bidmachine/ads/networks/pangle/PangleParams;->slotId:Ljava/lang/String;

    .line 48
    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p4

    iget-object p5, p5, Lio/bidmachine/ads/networks/pangle/PangleParams;->bidPayload:Ljava/lang/String;

    .line 49
    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p4

    .line 50
    sget-object p5, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$1;->$SwitchMap$io$bidmachine$banner$BannerSize:[I

    invoke-interface {p3}, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;->getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerSize()Lio/bidmachine/banner/BannerSize;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/banner/BannerSize;->ordinal()I

    move-result p3

    aget p3, p5, p3

    const/4 p5, 0x1

    if-eq p3, p5, :cond_2

    const/4 p5, 0x2

    if-eq p3, p5, :cond_1

    const/high16 p3, 0x43a00000    # 320.0f

    const/high16 p5, 0x42480000    # 50.0f

    .line 58
    invoke-virtual {p4, p3, p5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_0

    :cond_1
    const/high16 p3, 0x43960000    # 300.0f

    const/high16 p5, 0x437a0000    # 250.0f

    .line 55
    invoke-virtual {p4, p3, p5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    goto :goto_0

    :cond_2
    const/high16 p3, 0x44360000    # 728.0f

    const/high16 p5, 0x42b40000    # 90.0f

    .line 52
    invoke-virtual {p4, p3, p5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 62
    :goto_0
    new-instance p3, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;

    invoke-direct {p3, p0, p2}, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;-><init>(Lio/bidmachine/ads/networks/pangle/PangleBannerAd;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    iput-object p3, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 64
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    iget-object p3, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 79
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;

    .line 80
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->interactionlistener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$InteractionListener;

    .line 81
    iget-object v1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_0

    .line 82
    move-object v2, v0

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 83
    iget-object v1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 84
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    :cond_0
    return-void
.end method

.method prepareToShow(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 71
    new-instance v0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$InteractionListener;

    invoke-direct {v0, p2}, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$InteractionListener;-><init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->interactionlistener:Lio/bidmachine/ads/networks/pangle/PangleBannerAd$InteractionListener;

    .line 72
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 73
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    return-void
.end method
