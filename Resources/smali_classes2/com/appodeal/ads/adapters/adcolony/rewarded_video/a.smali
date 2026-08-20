.class public final Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/adcolony/sdk/AdColonyInterstitial;

.field public b:Lcom/appodeal/ads/adapters/adcolony/rewarded_video/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewarded;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p3, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 1
    new-instance p1, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/b;

    invoke-direct {p1, p4, p0}, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/b;-><init>(Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;)V

    iput-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->b:Lcom/appodeal/ads/adapters/adcolony/rewarded_video/b;

    invoke-static {p1}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    iget-object p1, p3, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;->zoneId:Ljava/lang/String;

    iget-object p2, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->b:Lcom/appodeal/ads/adapters/adcolony/rewarded_video/b;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;->adOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-static {p1, p2, p3}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->b:Lcom/appodeal/ads/adapters/adcolony/rewarded_video/b;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/AdColonyInterstitial;->setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    iput-object v2, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    :cond_1
    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    .line 1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/rewarded_video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
