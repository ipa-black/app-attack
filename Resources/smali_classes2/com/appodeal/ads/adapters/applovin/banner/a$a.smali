.class public final Lcom/appodeal/ads/adapters/applovin/banner/a$a;
.super Lcom/appodeal/ads/adapters/applovin/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/adapters/applovin/banner/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/adapters/applovin/b<",
        "Lcom/appodeal/ads/unified/UnifiedBannerCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/unified/UnifiedBannerCallback;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/adapters/applovin/b;-><init>(Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    iput-object p2, p0, Lcom/appodeal/ads/adapters/applovin/banner/a$a;->b:Lcom/applovin/adview/AppLovinAdView;

    return-void
.end method


# virtual methods
.method public final adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/adapters/applovin/b;->a:Lcom/appodeal/ads/unified/UnifiedAdCallback;

    check-cast v0, Lcom/appodeal/ads/unified/UnifiedBannerCallback;

    iget-object v1, p0, Lcom/appodeal/ads/adapters/applovin/banner/a$a;->b:Lcom/applovin/adview/AppLovinAdView;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/appodeal/ads/unified/UnifiedBannerCallback;->onAdLoaded(Landroid/view/View;II)V

    return-void
.end method
