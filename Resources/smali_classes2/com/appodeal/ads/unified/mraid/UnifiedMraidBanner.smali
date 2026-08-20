.class public abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;
.super Lcom/appodeal/ads/unified/UnifiedBanner;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedBanner<",
        "TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid<",
        "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
        "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd<",
            "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
            "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
            "TNetworkRequestParams;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedBanner;-><init>()V

    new-instance v0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;

    invoke-direct {v0, p0, p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner$1;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedViewMraid;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    return-void
.end method


# virtual methods
.method public createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
            ")",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener<",
            "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBannerListener;

    iget p2, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->width:I

    iget v0, p3, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->height:I

    invoke-direct {p1, p4, p3, p2, v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBannerListener;-><init>(Lcom/appodeal/ads/unified/UnifiedBannerCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;II)V

    return-object p1
.end method

.method public bridge synthetic createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedBannerParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedBannerParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedBannerParams;",
            "TNetworkRequestParams;",
            "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    return-void
.end method

.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedBannerParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedBannerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedViewAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedViewAdCallback;)V

    return-void
.end method

.method public onClicked()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->onDestroy()V

    return-void
.end method

.method public onFinished()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    return-void
.end method

.method public bridge synthetic onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedBannerParams;)V

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedBannerParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidBanner;->unifiedMraid:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidViewAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedViewAdParams;)V

    return-void
.end method
