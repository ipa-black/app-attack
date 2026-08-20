.class Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "InternalNotsyFullscreenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalFullscreenShowListener"
.end annotation


# instance fields
.field private final adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

.field private final internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    .line 49
    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    .line 50
    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    invoke-interface {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    invoke-interface {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdComplete()V

    .line 74
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    invoke-interface {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 55
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    invoke-static {v0}, Lio/bidmachine/ads/networks/notsy/NotsyLoader;->onNotsyAdShown(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;)V

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->internalNotsyAd:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;

    sget-object v1, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Shown:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {v0, v1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 58
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;->adListener:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    invoke-interface {v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdShown()V

    return-void
.end method
