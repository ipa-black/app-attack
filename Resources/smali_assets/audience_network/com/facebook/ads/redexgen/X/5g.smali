.class public final Lcom/facebook/ads/redexgen/X/5g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdShowConfigBuilder;
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5j;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 0

    .line 14733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5j;

    .line 14735
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/5j;
    .locals 1

    .line 14736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5j;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/FullScreenAd$ShowAdConfig;
    .locals 1

    .line 14737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5g;->build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialShowAdConfig;
    .locals 0

    .line 14738
    return-object p0
.end method

.method public final withAppOrientation(I)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdShowConfigBuilder;
    .locals 1

    .line 14739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5g;->A00:Lcom/facebook/ads/redexgen/X/5j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5j;->withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    .line 14740
    return-object p0
.end method
