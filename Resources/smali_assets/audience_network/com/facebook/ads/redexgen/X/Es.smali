.class public final Lcom/facebook/ads/redexgen/X/Es;
.super Lcom/facebook/ads/redexgen/X/Za;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 0

    .line 32309
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1p;)V

    .line 32310
    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;
    .locals 1

    .line 32311
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZY;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ZY;-><init>(Lcom/facebook/ads/redexgen/X/Es;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Es;)V
    .locals 0

    .line 32312
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Za;->A0H()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A0F()Lcom/facebook/ads/redexgen/X/1B;
    .locals 1

    .line 32313
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Es;->A0V()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    return-object v0
.end method

.method public final A0L()V
    .locals 1

    .line 32314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/a9;

    .line 32315
    .local v0, "interstitialAdapter":Lcom/facebook/ads/redexgen/X/a9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0B()Z

    .line 32316
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V
    .locals 12

    .line 32317
    move-object v4, p1

    check-cast v4, Lcom/facebook/ads/redexgen/X/a9;

    .line 32318
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/a9;
    new-instance v3, Lcom/facebook/ads/redexgen/X/ZZ;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/ZZ;-><init>(Lcom/facebook/ads/redexgen/X/Es;Lcom/facebook/ads/redexgen/X/1q;Lcom/facebook/ads/redexgen/X/a9;)V

    .line 32319
    .local v9, "interstitialTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Za;->A0E()Landroid/os/Handler;

    move-result-object v2

    .line 32320
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32321
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 32322
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Es;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/0x;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/1p;->A0A:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1p;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/1p;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/1p;->A02:Lcom/facebook/ads/RewardData;

    .line 32323
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/a9;->A0A(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/0x;Lcom/facebook/ads/redexgen/X/1q;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    .line 32324
    return-void
.end method

.method public final A0V()Lcom/facebook/ads/redexgen/X/Zs;
    .locals 1

    .line 32325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/a9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A09()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    return-object v0
.end method
