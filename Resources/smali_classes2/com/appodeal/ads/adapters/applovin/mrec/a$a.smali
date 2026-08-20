.class public final Lcom/appodeal/ads/adapters/applovin/mrec/a$a;
.super Lcom/appodeal/ads/adapters/applovin/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/applovin/mrec/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/applovin/b<",
        "Lcom/appodeal/ads/unified/UnifiedMrecCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedMrecCallback;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/applovin/b;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a$a;->b:Lcom/applovin/adview/AppLovinAdView;

    return-void
.end method


# virtual methods
.method public final adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object p1, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast p1, Lcom/appodeal/ads/unified/UnifiedMrecCallback;

    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/mrec/a$a;->b:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/unified/UnifiedMrecCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method
