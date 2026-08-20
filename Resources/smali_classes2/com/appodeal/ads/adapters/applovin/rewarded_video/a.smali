.class public final Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;

.field public b:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewarded;-><init>()V

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

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 1
    new-instance p1, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;

    invoke-direct {p1, p4}, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;-><init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->a:Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;

    iget-object p1, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->zoneId:Ljava/lang/String;

    iget-object p2, p3, Lcom/appodeal/ads/adapters/applovin/ApplovinNetwork$RequestParams;->sdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {p1, p2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->b:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object p2, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->a:Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;

    invoke-virtual {p1, p2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->b:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iput-object v0, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->a:Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 7

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->b:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->b:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v6, p0, Lcom/appodeal/ads/adapters/applovin/rewarded_video/a;->a:Lcom/appodeal/ads/adapters/applovin/rewarded_video/a$a;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
