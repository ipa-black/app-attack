.class public final Lcom/appodeal/ads/adapters/applovin/video/a$a;
.super Lcom/appodeal/ads/adapters/applovin/b;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/applovin/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/applovin/b<",
        "Lcom/appodeal/ads/unified/UnifiedVideoCallback;",
        ">;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
        "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;"
    }
.end annotation


# instance fields
.field public final b:Lcom/appodeal/ads/adapters/applovin/video/a;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedVideoCallback;Lcom/appodeal/ads/adapters/applovin/video/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/applovin/b;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/video/a$a;->b:Lcom/appodeal/ads/adapters/applovin/video/a;

    return-void
.end method


# virtual methods
.method public final adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdShown()V

    return-void
.end method

.method public final adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdClosed()V

    return-void
.end method

.method public final adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    invoke-static {p1}, Lcom/appodeal/ads/adapters/applovin/a;->a(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/video/a$a;->b:Lcom/appodeal/ads/adapters/applovin/video/a;

    invoke-static {v0, p1}, Lcom/appodeal/ads/adapters/applovin/video/a;->a(Lcom/appodeal/ads/adapters/applovin/video/a;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdLoaded()V

    return-void
.end method

.method public final videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public final videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedVideoCallback;

    invoke-virtual {p1}, Lcom/appodeal/ads/unified/UnifiedVideoCallback;->onAdFinished()V

    :cond_0
    return-void
.end method
