.class public final Lcom/appodeal/ads/adapters/bidmachine/mrec/a;
.super Lcom/appodeal/ads/unified/UnifiedMrec;
.source "BidMachineMrec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/bidmachine/mrec/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedMrec<",
        "Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lio/bidmachine/banner/BannerView;

.field public b:Lio/bidmachine/banner/BannerRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedMrec;-><init>()V

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
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedMrecParams;

    check-cast p3, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    .line 2
    new-instance p2, Lio/bidmachine/banner/BannerRequest$Builder;

    invoke-direct {p2}, Lio/bidmachine/banner/BannerRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p3, p2}, Lcom/appodeal/ads/adapters/bidmachine/BidMachineNetwork$RequestParams;->prepareRequest(Lio/bidmachine/models/RequestBuilder;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p2

    check-cast p2, Lio/bidmachine/banner/BannerRequest$Builder;

    sget-object p3, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 4
    invoke-virtual {p2, p3}, Lio/bidmachine/banner/BannerRequest$Builder;->setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lio/bidmachine/banner/BannerRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p2

    check-cast p2, Lio/bidmachine/banner/BannerRequest;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->b:Lio/bidmachine/banner/BannerRequest;

    .line 6
    new-instance p2, Lio/bidmachine/banner/BannerView;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/banner/BannerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->a:Lio/bidmachine/banner/BannerView;

    .line 7
    new-instance p1, Lcom/appodeal/ads/adapters/bidmachine/mrec/a$a;

    invoke-direct {p1, p4}, Lcom/appodeal/ads/adapters/bidmachine/mrec/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedMrecCallback;)V

    invoke-virtual {p2, p1}, Lio/bidmachine/banner/BannerView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    .line 8
    iget-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->a:Lio/bidmachine/banner/BannerView;

    iget-object p2, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->b:Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {p1, p2}, Lio/bidmachine/banner/BannerView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->b:Lio/bidmachine/banner/BannerRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->destroy()V

    .line 3
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->b:Lio/bidmachine/banner/BannerRequest;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->a:Lio/bidmachine/banner/BannerView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/banner/BannerView;->destroy()V

    .line 7
    iput-object v1, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->a:Lio/bidmachine/banner/BannerView;

    :cond_1
    return-void
.end method

.method public final onMediationLoss(Ljava/lang/String;D)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationLoss(Ljava/lang/String;D)V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->b:Lio/bidmachine/banner/BannerRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/banner/BannerRequest;->notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public final onMediationWin()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onMediationWin()V

    .line 2
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/mrec/a;->b:Lio/bidmachine/banner/BannerRequest;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->notifyMediationWin()V

    :cond_0
    return-void
.end method
