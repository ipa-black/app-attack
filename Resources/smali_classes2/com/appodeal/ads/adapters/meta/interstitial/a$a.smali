.class public final Lcom/appodeal/ads/adapters/meta/interstitial/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/meta/interstitial/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdClicked()V

    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoaded()V

    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->printError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/meta/MetaNetwork;->mapError(Lcom/facebook/ads/AdError;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/Ad;->destroy()V

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdClosed()V

    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;->a:Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShown()V

    return-void
.end method
