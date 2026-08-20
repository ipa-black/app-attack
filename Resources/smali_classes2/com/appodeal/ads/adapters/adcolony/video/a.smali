.class public final Lcom/appodeal/ads/adapters/adcolony/video/a;
.super Lcom/appodeal/ads/unified/UnifiedVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/unified/UnifiedVideo<",
        "Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/adcolony/sdk/AdColonyInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/unified/UnifiedVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;Lcom/appodeal/ads/unified/UnifiedAdParams;Ljava/lang/Object;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoParams;

    check-cast p3, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;

    check-cast p4, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 1
    new-instance p1, Lcom/appodeal/ads/adapters/adcolony/video/b;

    invoke-direct {p1, p4, p0}, Lcom/appodeal/ads/adapters/adcolony/video/b;-><init>(Lcom/appodeal/ads/unified/UnifiedVideoCallback;Lcom/appodeal/ads/adapters/adcolony/video/a;)V

    iget-object p2, p3, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;->zoneId:Ljava/lang/String;

    iget-object p3, p3, Lcom/appodeal/ads/adapters/adcolony/AdcolonyNetwork$RequestParams;->adOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-static {p2, p1, p3}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/adcolony/video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    iput-object v1, p0, Lcom/appodeal/ads/adapters/adcolony/video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    :cond_0
    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/appodeal/ads/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    check-cast p2, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    .line 1
    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/adcolony/video/a;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShowFailed()V

    :goto_0
    return-void
.end method
