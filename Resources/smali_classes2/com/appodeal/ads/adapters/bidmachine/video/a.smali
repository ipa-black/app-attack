.class public final Lcom/appodeal/ads/adapters/bidmachine/video/a;
.super Lcom/appodeal/ads/unified/UnifiedVideo;
.source "BidMachineVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/bidmachine/video/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedVideo<",
        "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lio/bidmachine/interstitial/InterstitialRequest;

.field public b:Lio/bidmachine/interstitial/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    check-cast p3, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 2
    new-instance p2, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    invoke-direct {p2}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p3, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->prepareRequest(Lio/bidmachine/models/RequestBuilder;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p2

    check-cast p2, Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    sget-object p3, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    .line 4
    invoke-virtual {p2, p3}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p2

    check-cast p2, Lio/bidmachine/interstitial/InterstitialRequest;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->a:Lio/bidmachine/interstitial/InterstitialRequest;

    .line 6
    new-instance p2, Lio/bidmachine/interstitial/InterstitialAd;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/interstitial/InterstitialAd;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;

    invoke-direct {p1, p4}, Lcom/appodeal/ads/adapters/bidmachine/video/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V

    .line 7
    invoke-virtual {p2, p1}, Lio/bidmachine/interstitial/InterstitialAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    iget-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->a:Lio/bidmachine/interstitial/InterstitialRequest;

    .line 8
    invoke-virtual {p1, p2}, Lio/bidmachine/interstitial/InterstitialAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialAd;

    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->b:Lio/bidmachine/interstitial/InterstitialAd;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->a:Lio/bidmachine/interstitial/InterstitialRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->a:Lio/bidmachine/interstitial/InterstitialRequest;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->b:Lio/bidmachine/interstitial/InterstitialAd;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialAd;->destroy()V

    .line 7
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->b:Lio/bidmachine/interstitial/InterstitialAd;

    :cond_1
    return-void
.end method

.method public final onMediationLoss(Ljava/lang/String;D)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationLoss(Ljava/lang/String;D)V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->a:Lio/bidmachine/interstitial/InterstitialRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/interstitial/InterstitialRequest;->notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public final onMediationWin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationWin()V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->a:Lio/bidmachine/interstitial/InterstitialRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->notifyMediationWin()V

    :cond_0
    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 2
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->b:Lio/bidmachine/interstitial/InterstitialAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/bidmachine/interstitial/InterstitialAd;->canShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/video/a;->b:Lio/bidmachine/interstitial/InterstitialAd;

    invoke-virtual {p1}, Lio/bidmachine/interstitial/InterstitialAd;->show()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
