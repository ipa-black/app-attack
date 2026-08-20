.class public Lcom/appodeal/ads/unified/mraid/UnifiedMraidMrecListener;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener<",
        "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedMrecCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;-><init>(Lcom/appodeal/ads/unified/UnifiedViewAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClose(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;->onClose(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method

.method public bridge synthetic onError(Lcom/explorestack/iab/mraid/MraidView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;->onError(Lcom/explorestack/iab/mraid/MraidView;I)V

    return-void
.end method

.method public bridge synthetic onExpand(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;->onExpand(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method

.method public onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast v0, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public bridge synthetic onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;->onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onShown(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidViewListener;->onShown(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method
