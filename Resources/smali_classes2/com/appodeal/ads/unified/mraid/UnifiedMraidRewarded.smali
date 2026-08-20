.class public abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid<",
        "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
        "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd<",
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

    new-instance v0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    return-void
.end method


# virtual methods
.method public bridge synthetic createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;

    move-result-object p1

    return-object p1
.end method

.method public createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedParams;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            ")",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener<",
            "Lcom/appodeal/ads/unified/UnifiedRewardedCallback;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewardedListener;

    invoke-direct {p2, p1, p4, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewardedListener;-><init>(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    return-object p2
.end method

.method public getMraidType()Lcom/explorestack/iab/mraid/MraidType;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/MraidType;->Rewarded:Lcom/explorestack/iab/mraid/MraidType;

    return-object v0
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

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

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public onClicked()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->onDestroy()V

    return-void
.end method

.method public onFinished()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    return-void
.end method

.method public bridge synthetic onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedParams;)V

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidRewarded;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method
