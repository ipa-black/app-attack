.class public final Lcom/facebook/ads/redexgen/X/W5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Be;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/W4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W4;)V
    .locals 0

    .line 61299
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/W4;Lcom/facebook/ads/redexgen/X/CL;)V
    .locals 0

    .line 61300
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W5;-><init>(Lcom/facebook/ads/redexgen/X/W4;)V

    return-void
.end method


# virtual methods
.method public final A6Y()J
    .locals 3

    .line 61301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/W4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W4;->A08(Lcom/facebook/ads/redexgen/X/W4;)Lcom/facebook/ads/redexgen/X/CR;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/W4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W4;->A05(Lcom/facebook/ads/redexgen/X/W4;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/CR;->A03(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7a(J)Lcom/facebook/ads/redexgen/X/Bd;
    .locals 7

    .line 61302
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    .line 61303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/W4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W4;->A04(Lcom/facebook/ads/redexgen/X/W4;)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0

    .line 61304
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/W4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W4;->A08(Lcom/facebook/ads/redexgen/X/W4;)Lcom/facebook/ads/redexgen/X/CR;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A04(J)J

    move-result-wide v3

    .line 61305
    .local p1, "granule":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/W4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W4;->A04(Lcom/facebook/ads/redexgen/X/W4;)J

    move-result-wide v1

    const-wide/16 v5, 0x7530

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/W4;->A06(Lcom/facebook/ads/redexgen/X/W4;JJJ)J

    move-result-wide v2

    .line 61306
    .local v0, "estimatedPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0
.end method

.method public final A8v()Z
    .locals 1

    .line 61307
    const/4 v0, 0x1

    return v0
.end method
