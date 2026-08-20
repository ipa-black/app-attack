.class final Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;
.super Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;
.source "MetaAudienceNative.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener<",
        "Lio/bidmachine/unified/UnifiedNativeAdCallback;",
        ">;",
        "Lcom/facebook/ads/NativeAdListener;"
    }
.end annotation


# instance fields
.field private nativeAdBase:Lcom/facebook/ads/NativeAdBase;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedNativeAdCallback;Lcom/facebook/ads/NativeAdBase;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    .line 95
    iput-object p2, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    instance-of v1, v0, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v1, :cond_1

    .line 106
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BannerAdapter;

    iget-object v1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    check-cast v1, Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BannerAdapter;-><init>(Lcom/facebook/ads/NativeBannerAd;)V

    goto :goto_0

    .line 107
    :cond_1
    instance-of v0, v0, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;

    iget-object v1, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    check-cast v1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$MediaViewAdapter;-><init>(Lcom/facebook/ads/NativeAd;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$BaseAdapter;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->getCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedNativeAdCallback;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedNativeAdCallback;->onAdLoaded(Lio/bidmachine/nativead/NativeNetworkAdapter;)V

    goto :goto_1

    .line 116
    :cond_3
    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-super {p0, p1, v0}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/bidmachine/ads/networks/meta_audience/MetaAudienceNative$Listener;->nativeAdBase:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lio/bidmachine/ads/networks/meta_audience/BaseMetaAudienceListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
