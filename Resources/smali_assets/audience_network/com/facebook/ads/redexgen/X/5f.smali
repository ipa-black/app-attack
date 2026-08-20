.class public final Lcom/facebook/ads/redexgen/X/5f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5e;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 2

    .line 14716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14717
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    .line 14718
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    sget-object v0, Lcom/facebook/ads/AdExperienceType;->AD_EXPERIENCE_TYPE_REWARDED_INTERSTITIAL:Lcom/facebook/ads/AdExperienceType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 14719
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 14720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5i;->A00()V

    .line 14721
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 14722
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5f;->build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;
    .locals 0

    .line 14723
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedInterstitialAdListener;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 2

    .line 14724
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5e;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/5e;-><init>(Lcom/facebook/ads/RewardedInterstitialAdListener;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5i;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 14725
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 14726
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5f;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 1

    .line 14727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5i;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 14728
    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 1

    .line 14729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5i;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 14730
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;
    .locals 1

    .line 14731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5f;->A00:Lcom/facebook/ads/redexgen/X/5i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5i;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 14732
    return-object p0
.end method
