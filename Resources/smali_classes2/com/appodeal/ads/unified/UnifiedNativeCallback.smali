.class public abstract Lcom/appodeal/ads/unified/UnifiedNativeCallback;
.super Lcom/appodeal/ads/unified/UnifiedAdCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAdClicked(ILcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
.end method

.method public onAdClicked(Lcom/appodeal/ads/unified/UnifiedNativeAd;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
    .locals 0

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getAdId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdClicked(ILcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V

    return-void
.end method

.method public abstract onAdFinished(I)V
.end method

.method public onAdFinished(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V
    .locals 0

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getAdId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdFinished(I)V

    return-void
.end method

.method public abstract onAdLoaded(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V
.end method

.method public abstract onAdShown(I)V
.end method

.method public onAdShown(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V
    .locals 0

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeAd;->getAdId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdShown(I)V

    return-void
.end method
