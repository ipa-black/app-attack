.class final Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;
.super Ljava/lang/Object;
.source "PangleBannerAd.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/pangle/PangleBannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadListener"
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field private final pangleBannerAd:Lio/bidmachine/ads/networks/pangle/PangleBannerAd;


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/pangle/PangleBannerAd;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;->pangleBannerAd:Lio/bidmachine/ads/networks/pangle/PangleBannerAd;

    .line 99
    iput-object p2, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {}, Lio/bidmachine/utils/BMError;->noFill()Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_1

    .line 110
    iget-object p1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;->pangleBannerAd:Lio/bidmachine/ads/networks/pangle/PangleBannerAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/pangle/PangleBannerAd$LoadListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/ads/networks/pangle/PangleBannerAd;->prepareToShow(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
