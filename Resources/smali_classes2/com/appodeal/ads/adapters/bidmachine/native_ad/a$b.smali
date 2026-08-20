.class public final Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;
.super Ljava/lang/Object;
.source "BidMachineNative.java"

# interfaces
.implements Lio/bidmachine/nativead/NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/native_ad/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedNativeCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdExpired()V

    return-void
.end method

.method public final bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    return-void
.end method

.method public final onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->mapBidMachineError(Lio/bidmachine/utils/BMError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 2

    .line 1
    check-cast p1, Lio/bidmachine/nativead/NativeAd;

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->getRequestedAdInfo(Lio/bidmachine/models/AuctionResult;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdInfoRequested(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$b;->a:Lcom/appodeal/ads/unified/UnifiedNativeCallback;

    new-instance v1, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;

    invoke-direct {v1, p1}, Lcom/appodeal/ads/adapters/bidmachine/native_ad/a$a;-><init>(Lio/bidmachine/nativead/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/unified/UnifiedNativeCallback;->onAdLoaded(Lcom/appodeal/ads/unified/UnifiedNativeAd;)V

    return-void
.end method
