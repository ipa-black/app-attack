.class public final Lcom/appodeal/ads/adapters/applovin/banner/a;
.super Lcom/appodeal/ads/unified/UnifiedBanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/applovin/banner/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedBanner<",
        "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedBanner;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedBannerParams;

    check-cast p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    .line 1
    invoke-interface {p1}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerParams;->needLeaderBoard(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :goto_0
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/banner/a;->a:Lcom/applovin/adview/AppLovinAdView;

    new-instance p1, Lcom/appodeal/ads/adapters/applovin/banner/a$a;

    invoke-direct {p1, p4, v0}, Lcom/appodeal/ads/adapters/applovin/banner/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedBannerCallback;Lcom/applovin/adview/AppLovinAdView;)V

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/banner/a;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p2, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/banner/a;->a:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/banner/a;->a:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/banner/a;->a:Lcom/applovin/adview/AppLovinAdView;

    :cond_0
    return-void
.end method
