.class Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;
.super Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedCallbackType:",
        "Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;",
        ">",
        "Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener<",
        "TUnifiedCallbackType;>;",
        "Lcom/explorestack/iab/mraid/MraidInterstitialListener;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TUnifiedCallbackType;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    iput-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    sget-object p2, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedAdCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidFullscreenListener;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->handleBrowserOpen(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V

    return-void
.end method

.method public onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/unified/mraid/UnifiedMraidListener;->callback:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
