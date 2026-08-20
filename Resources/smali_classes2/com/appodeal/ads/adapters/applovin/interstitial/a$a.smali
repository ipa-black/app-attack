.class public final Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;
.super Lcom/appodeal/ads/adapters/applovin/b;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/applovin/interstitial/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/applovin/b<",
        "Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;",
        ">;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;"
    }
.end annotation


# instance fields
.field public final b:Lcom/appodeal/ads/adapters/applovin/interstitial/a;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;Lcom/appodeal/ads/adapters/applovin/interstitial/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/applovin/b;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;->b:Lcom/appodeal/ads/adapters/applovin/interstitial/a;

    iput-boolean p3, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;->c:Z

    return-void
.end method


# virtual methods
.method public final adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShown()V

    return-void
.end method

.method public final adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdClosed()V

    return-void
.end method

.method public final adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-boolean v0, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectCreative:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/appodeal/ads/adapters/applovin/a;->a(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;->b:Lcom/appodeal/ads/adapters/applovin/interstitial/a;

    invoke-static {v0, p1}, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a(Lcom/appodeal/ads/adapters/applovin/interstitial/a;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoaded()V

    :goto_0
    return-void
.end method
