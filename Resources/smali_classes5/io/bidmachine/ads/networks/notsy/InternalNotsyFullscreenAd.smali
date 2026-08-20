.class abstract Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;
.super Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
.source "InternalNotsyFullscreenAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$InternalFullscreenShowListener;
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$show$0$io-bidmachine-ads-networks-notsy-InternalNotsyFullscreenAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .locals 1

    .line 25
    :try_start_0
    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;->Showing:Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;

    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;->setStatus(Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Status;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;->showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lio/bidmachine/core/AdapterLogger;->logThrowable(Ljava/lang/Throwable;)V

    .line 30
    const-string p1, "Exception when showing ad object"

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    :goto_0
    return-void
.end method

.method public final show(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .locals 1

    .line 23
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract showAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
