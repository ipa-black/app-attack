.class public final Lcom/facebook/ads/redexgen/X/5i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/AdExperienceType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/5h;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 14816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14817
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5i;->A01:Lcom/facebook/ads/redexgen/X/5h;

    .line 14818
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 14819
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5i;->A01:Lcom/facebook/ads/redexgen/X/5h;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5i;->A02:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5i;->A00:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/5i;->A03:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A04:Z

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5h;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V

    .line 14820
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 14821
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5i;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    .locals 0

    .line 14822
    return-object p0
.end method

.method public final withAdCompanionView(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14823
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5i;->A04:Z

    .line 14824
    return-object p0
.end method

.method public final withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14825
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5i;->A00:Lcom/facebook/ads/AdExperienceType;

    .line 14826
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 14827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A01:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5h;->A06(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 14828
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 14829
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5i;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14830
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5i;->A02:Ljava/lang/String;

    .line 14831
    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14832
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5i;->A03:Z

    .line 14833
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 14834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A01:Lcom/facebook/ads/redexgen/X/5h;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5h;->A05(Lcom/facebook/ads/RewardData;)V

    .line 14835
    return-object p0
.end method
