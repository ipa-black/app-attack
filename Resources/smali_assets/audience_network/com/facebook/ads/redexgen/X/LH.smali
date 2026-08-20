.class public final Lcom/facebook/ads/redexgen/X/LH;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PK;
    .locals 2

    .line 43145
    sget-object v1, Lcom/facebook/ads/redexgen/X/LG;->A00:[I

    invoke-virtual {p0}, Lcom/facebook/ads/VideoStartReason;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    .line 43146
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    return-object v0

    .line 43147
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A04:Lcom/facebook/ads/redexgen/X/PK;

    return-object v0

    .line 43148
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A03:Lcom/facebook/ads/redexgen/X/PK;

    return-object v0

    .line 43149
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A02:Lcom/facebook/ads/redexgen/X/PK;

    return-object v0
.end method
