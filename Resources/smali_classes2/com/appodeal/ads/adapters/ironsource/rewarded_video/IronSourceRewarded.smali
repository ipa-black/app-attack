.class public Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;
.super Lcom/appodeal/ads/unified/UnifiedRewarded;
.source "IronSourceRewarded.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedRewarded<",
        "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private instanceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedRewarded;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedParams;

    check-cast p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->load(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public load(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedParams;Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    iget-object p2, p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;->instanceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->instanceId:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p2

    .line 25
    new-instance p3, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->instanceId:Ljava/lang/String;

    invoke-direct {p3, v0, p4, p2}, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewardedListener;-><init>(Ljava/lang/String;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;Z)V

    invoke-static {p3}, Lcom/ironsource/mediationsdk/IronSource;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p4}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdLoaded()V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->instanceId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyRewardedVideo(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedRewardedCallback;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/rewarded_video/IronSourceRewarded;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedRewardedCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
