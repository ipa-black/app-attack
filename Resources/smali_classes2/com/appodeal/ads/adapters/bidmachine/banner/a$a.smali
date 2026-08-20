.class public final Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;
.super Ljava/lang/Object;
.source "BidMachineBanner.java"

# interfaces
.implements Lio/bidmachine/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/bidmachine/banner/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

.field public final b:Lio/bidmachine/banner/BannerSize;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedBannerCallback;Lio/bidmachine/banner/BannerSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    .line 3
    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->b:Lio/bidmachine/banner/BannerSize;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdExpired(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdExpired()V

    return-void
.end method

.method public final bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    return-void
.end method

.method public final onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-static {p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->printError(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lio/bidmachine/utils/BMError;)V

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->mapBidMachineError(Lio/bidmachine/utils/BMError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onAdLoaded(Lio/bidmachine/IAd;)V
    .locals 3

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerView;

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p1}, Lio/bidmachine/banner/BannerView;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork;->getRequestedAdInfo(Lio/bidmachine/models/AuctionResult;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdInfoRequested(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->a:Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/banner/a$a;->b:Lio/bidmachine/banner/BannerSize;

    iget v2, v1, Lio/bidmachine/banner/BannerSize;->width:I

    iget v1, v1, Lio/bidmachine/banner/BannerSize;->height:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdLoaded(Landroid/view/View;II)V

    return-void
.end method
