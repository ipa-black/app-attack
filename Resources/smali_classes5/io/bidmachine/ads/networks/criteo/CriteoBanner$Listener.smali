.class final Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;
.super Ljava/lang/Object;
.source "CriteoBanner.java"

# interfaces
.implements Lcom/criteo/publisher/CriteoBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/criteo/CriteoBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdClicked()V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {p1}, Lio/bidmachine/ads/networks/criteo/CriteoAdapter;->mapError(Lcom/criteo/publisher/CriteoErrorCode;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/bidmachine/ads/networks/criteo/CriteoBanner$Listener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
