.class public final Lcom/facebook/ads/redexgen/X/1z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZH;->A0F(Lcom/facebook/ads/redexgen/X/0n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZH;)V
    .locals 0

    .line 4959
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 4960
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 4961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 4962
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    .line 4963
    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 4964
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 4965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A03(Lcom/facebook/ads/redexgen/X/ZF;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    .line 4966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Zs;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0r(Z)V

    .line 4967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 4968
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    .line 4969
    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 4970
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 4971
    return-void
.end method

.method public final onRewardedVideoClosed()V
    .locals 1

    .line 4972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 4973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A09(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 4974
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    .line 4975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 4976
    return-void
.end method
