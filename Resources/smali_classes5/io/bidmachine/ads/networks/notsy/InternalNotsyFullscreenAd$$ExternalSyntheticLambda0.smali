.class public final synthetic Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;

    iput-object p2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;

    iget-object v1, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAd;->lambda$show$0$io-bidmachine-ads-networks-notsy-InternalNotsyFullscreenAd(Landroid/app/Activity;Lio/bidmachine/ads/networks/notsy/InternalNotsyFullscreenAdPresentListener;)V

    return-void
.end method
