.class Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;
.super Lio/bidmachine/unified/UnifiedNativeAd;
.source "MetaAudienceNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;,
        Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BannerAdapter;,
        Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;,
        Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;
    }
.end annotation


# instance fields
.field private listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;

.field private nativeAdBase:Lcom/facebook/ads/NativeAdBase;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedNativeAd;-><init>()V

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

    .line 37
    check-cast p2, Lio/bidmachine/unified/UnifiedNativeAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedNativeAdCallback;Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedNativeAdCallback;Lio/bidmachine/unified/UnifiedNativeAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    new-instance p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;

    invoke-direct {p5, p4}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 51
    invoke-virtual {p5, p2}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-interface {p3}, Lio/bidmachine/unified/UnifiedNativeAdRequestParams;->getAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;

    move-result-object p3

    .line 56
    sget-object p4, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p3, p4}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result p4

    .line 57
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    invoke-virtual {p3, v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 59
    invoke-virtual {p3, v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    new-instance p3, Lcom/facebook/ads/NativeBannerAd;

    iget-object p4, p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->placementId:Ljava/lang/String;

    invoke-direct {p3, p1, p4}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    new-instance p3, Lcom/facebook/ads/NativeAd;

    iget-object p4, p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->placementId:Ljava/lang/String;

    invoke-direct {p3, p1, p4}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    .line 65
    :goto_1
    new-instance p1, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;

    iget-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-direct {p1, p2, p3}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;-><init>(Lio/bidmachine/unified/UnifiedNativeAdCallback;Lcom/facebook/ads/NativeAdBase;)V

    iput-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;

    .line 66
    iget-object p1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    iget-object p3, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;

    .line 67
    invoke-interface {p2, p3}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    sget-object p3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 68
    invoke-interface {p2, p3}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    iget-object p3, p5, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceParams;->bidPayload:Ljava/lang/String;

    .line 69
    invoke-interface {p2, p3}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    .line 70
    invoke-interface {p2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->destroy()V

    .line 77
    iput-object v1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->listener:Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;

    .line 79
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    .line 81
    iput-object v1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    :cond_1
    return-void
.end method
