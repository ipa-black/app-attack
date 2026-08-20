.class public Lcom/appodeal/ads/unified/mraid/UnifiedMraidInterstitialListener;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener<",
        "Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;-><init>(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    return-void
.end method

.method public bridge synthetic onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V

    return-void
.end method

.method public bridge synthetic onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    return-void
.end method

.method public bridge synthetic onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public bridge synthetic onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    return-void
.end method
