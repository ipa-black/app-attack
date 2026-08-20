.class public final Lcom/appodeal/ads/adapters/applovin/interstitial/a;
.super Lcom/appodeal/ads/unified/UnifiedInterstitial;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
        "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

.field public b:Lcom/applovin/sdk/AppLovinSdk;

.field public c:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedInterstitial;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/adapters/applovin/interstitial/a;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->c:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    check-cast p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    .line 1
    iget-object p1, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->jsonData:Lorg/json/JSONObject;

    const-string p2, "check_video"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->b:Lcom/applovin/sdk/AppLovinSdk;

    new-instance p2, Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    invoke-direct {p2, p4, p0, p1}, Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;Lcom/appodeal/ads/adapters/applovin/interstitial/a;Z)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    iget-object p1, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    invoke-static {p1}, Lcom/appodeal/ads/adapters/applovin/a;->a(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoaded()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    iget-object p2, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object p3, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    invoke-interface {p1, p2, p3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_1
    iget-object p2, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    iget-object p3, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    invoke-interface {p1, p2, p3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->c:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->b:Lcom/applovin/sdk/AppLovinSdk;

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 1

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {p2, p1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->a:Lcom/appodeal/ads/adapters/applovin/interstitial/a$a;

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/interstitial/a;->c:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
