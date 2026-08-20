.class public abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;
.super Lcom/appodeal/ads/unified/UnifiedVideo;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NetworkRequestParams:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appodeal/ads/unified/UnifiedVideo<",
        "TNetworkRequestParams;>;",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid<",
        "Lcom/appodeal/ads/unified/UnifiedVideoParams;",
        "Lcom/appodeal/ads/unified/UnifiedVideoCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd<",
            "Lcom/appodeal/ads/unified/UnifiedVideoParams;",
            "Lcom/appodeal/ads/unified/UnifiedVideoCallback;",
            "TNetworkRequestParams;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedVideo;-><init>()V

    new-instance v0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedFullscreenMraid;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    return-void
.end method


# virtual methods
.method public bridge synthetic createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedVideoParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;

    move-result-object p1

    return-object p1
.end method

.method public createListener(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedVideoParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/unified/UnifiedVideoParams;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedVideoCallback;",
            ")",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener<",
            "Lcom/appodeal/ads/unified/UnifiedVideoCallback;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideoListener;

    invoke-direct {p2, p1, p4, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideoListener;-><init>(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedVideoCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    return-object p2
.end method

.method public getMraidType()Lcom/explorestack/iab/mraid/MraidType;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/MraidType;->Video:Lcom/explorestack/iab/mraid/MraidType;

    return-object v0
.end method

.method public bridge synthetic load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedVideoParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V

    return-void
.end method

.method public load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedVideoParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;",
            "Lcom/appodeal/ads/unified/UnifiedVideoParams;",
            "TNetworkRequestParams;",
            "Lcom/appodeal/ads/unified/UnifiedVideoCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public bridge synthetic loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedVideoParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V

    return-void
.end method

.method public loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedVideoParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->loadMraid(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdParams;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method

.method public onClicked()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->onDestroy()V

    return-void
.end method

.method public onFinished()V
    .locals 1

    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0}, Lcom/appodeal/ads/unified/UnifiedAd;->onFinished()V

    return-void
.end method

.method public bridge synthetic onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedVideoParams;)V

    return-void
.end method

.method public onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedVideoParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/UnifiedAd;->onPrepareToShow(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;)V

    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedVideoCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidVideo;->unifiedAd:Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidUtils$UnifiedMraidFullscreenAd;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V

    return-void
.end method
