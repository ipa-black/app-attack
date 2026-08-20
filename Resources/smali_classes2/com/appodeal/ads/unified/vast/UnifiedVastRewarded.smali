.class public abstract Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast<",
        "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
        "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd<",
            "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            "TNetworkRequestParams;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewarded;-><init>()V

    new-instance v0, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;-><init>(Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedFullscreenVast;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    return-void
.end method


# virtual methods
.method public bridge synthetic createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;

    move-result-object p1

    return-object p1
.end method

.method public createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            ")",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastFullscreenListener<",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/appodeal/ads/unified/vast/UnifiedVastRewardedListener;

    invoke-direct {p1, p4, p3}, Lcom/appodeal/ads/unified/vast/UnifiedVastRewardedListener;-><init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V

    return-object p1
.end method

.method public getVideoType()Lcom/explorestack/iab/vast/VideoType;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    return-object v0
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
            "TNetworkRequestParams;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public bridge synthetic loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->loadVast(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedParams;)V

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/vast/UnifiedVastRewarded;->unifiedVast:Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/vast/UnifiedVastUtils$UnifiedVastFullscreenAd;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method
