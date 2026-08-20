.class public final Lcom/facebook/ads/redexgen/X/5j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;


# instance fields
.field public A00:I

.field public A01:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14837
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    .line 14838
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 14839
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    return v0
.end method

.method public final A01()J
    .locals 2

    .line 14840
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5j;->A01:J

    return-wide v0
.end method

.method public final A02(J)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 0

    .line 14841
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/5j;->A01:J

    .line 14842
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/FullScreenAd$ShowAdConfig;
    .locals 1

    .line 14843
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5j;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;
    .locals 0

    .line 14844
    return-object p0
.end method

.method public final withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .locals 0

    .line 14845
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5j;->A00:I

    .line 14846
    return-object p0
.end method
