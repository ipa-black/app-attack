.class public Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;
.super Lcom/appodeal/ads/unified/UnifiedInterstitial;
.source "IronSourceInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedInterstitial<",
        "Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field private instanceId:Ljava/lang/String;

.field isLoadFailed:Z

.field isLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedInterstitial;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->isLoaded:Z

    .line 27
    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->isLoadFailed:Z

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

    .line 22
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialParams;

    check-cast p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->load(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    return-void
.end method

.method public load(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedInterstitialParams;Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    iget-object p2, p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;->instanceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    .line 35
    iget-object p2, p3, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork$RequestParams;->jsonData:Lorg/json/JSONObject;

    const-string p3, "instances"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 36
    invoke-static {p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->registerInterstitialInstances(Lorg/json/JSONArray;)V

    .line 37
    iget-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    invoke-static {p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->canLoadInstance(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 38
    new-instance p2, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitialListener;

    invoke-direct {p2, p0, p4}, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitialListener;-><init>(Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    .line 40
    iget-object p3, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->subscribeInterstitialListener(Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 41
    iget-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    invoke-static {p2}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p4}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoaded()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 44
    invoke-static {p2}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->setInProgressInstance(Z)V

    .line 45
    iget-object p2, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->loadISDemandOnlyInterstitial(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/appodeal/ads/adapters/ironsource/IronSourceNetwork;->isInstanceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    sget-object p1, Lcom/appodeal/ads/LoadingError;->Canceled:Lcom/appodeal/ads/LoadingError;

    invoke-virtual {p4, p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/LoadingError;)V

    goto :goto_0

    .line 50
    :cond_2
    sget-object p1, Lcom/appodeal/ads/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/LoadingError;

    invoke-virtual {p4, p1}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdLoadFailed(Lcom/appodeal/ads/LoadingError;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/appodeal/ads/LoadingError;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/appodeal/ads/unified/UnifiedInterstitial;->onError(Lcom/appodeal/ads/LoadingError;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->isLoadFailed:Z

    return-void
.end method

.method public onLoaded()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/appodeal/ads/unified/UnifiedInterstitial;->onLoaded()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->isLoaded:Z

    return-void
.end method

.method public bridge synthetic show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;

    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/appodeal/ads/adapters/ironsource/interstitial/IronSourceInterstitial;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->showISDemandOnlyInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedInterstitialCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
