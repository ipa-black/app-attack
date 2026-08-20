.class public final Lcom/appodeal/ads/adapters/meta/interstitial/a;
.super Lcom/appodeal/ads/unified/UnifiedInterstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/meta/interstitial/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
        "Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    check-cast p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    .line 1
    new-instance p2, Lcom/facebook/ads/InterstitialAd;

    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p3, Lcom/appodeal/ads/adapters/meta/MetaNetwork$RequestParams;->metaKey:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a;->a:Lcom/facebook/ads/InterstitialAd;

    new-instance p1, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;

    invoke-direct {p1, p4}, Lcom/appodeal/ads/adapters/meta/interstitial/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    invoke-virtual {p2}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a;->a:Lcom/facebook/ads/InterstitialAd;

    :cond_0
    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    .line 1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/meta/interstitial/a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
