.class Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "PangleRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;,
        Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private loadListener:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

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

    .line 21
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    new-instance p3, Lio/bidmachine/ads/networks/pangle/PangleParams;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/pangle/PangleParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 37
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/pangle/PangleParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance p4, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {p4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object p5, p3, Lio/bidmachine/ads/networks/pangle/PangleParams;->slotId:Ljava/lang/String;

    .line 44
    invoke-virtual {p4, p5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p4

    iget-object p3, p3, Lio/bidmachine/ads/networks/pangle/PangleParams;->bidPayload:Ljava/lang/String;

    .line 45
    invoke-virtual {p4, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p3

    .line 46
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p3

    .line 48
    new-instance p4, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;

    invoke-direct {p4, p0, p2}, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;-><init>(Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    iput-object p4, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 50
    iget-object p2, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;

    invoke-interface {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 77
    iget-object v1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;->destroy()V

    .line 79
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->loadListener:Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$LoadListener;

    .line 81
    :cond_0
    iget-object v1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v1, :cond_1

    .line 82
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 83
    iput-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    :cond_1
    return-void
.end method

.method setTtRewardVideoAd(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-void
.end method

.method public show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 62
    const-string p1, "Activity is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-nez v0, :cond_1

    .line 66
    const-string p1, "Rewarded object is null"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 70
    :cond_1
    new-instance v1, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;

    invoke-direct {v1, p2}, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd$ShowListener;-><init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 71
    iget-object p2, p0, Lio/bidmachine/ads/networks/pangle/PangleRewardedAd;->ttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    return-void
.end method
