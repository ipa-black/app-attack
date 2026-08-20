.class abstract Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedViewAdCallback;",
        ">",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener<",
        "TUnifiedCallbackType;>;",
        "Lcom/explorestack/iab/mraid/MraidViewListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedViewAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnifiedCallbackType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/explorestack/iab/mraid/MraidView;I)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedViewAdCallback;

    sget-object p2, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public onExpand(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->handleBrowserOpen(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method
