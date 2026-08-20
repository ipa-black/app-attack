.class public final Lcom/facebook/ads/redexgen/X/UO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HT;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/9a;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/HG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 1

    .line 56745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56746
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Lcom/facebook/ads/redexgen/X/HG;

    .line 56747
    sget-object v0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/9a;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/9a;

    .line 56748
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 56749
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    if-nez v0, :cond_0

    .line 56750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->A5B()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    .line 56751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    .line 56752
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 2

    .line 56753
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    if-eqz v0, :cond_0

    .line 56754
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UO;->A7R()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/UO;->A02(J)V

    .line 56755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    .line 56756
    :cond_0
    return-void
.end method

.method public final A02(J)V
    .locals 2

    .line 56757
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    .line 56758
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    if-eqz v0, :cond_0

    .line 56759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->A5B()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    .line 56760
    :cond_0
    return-void
.end method

.method public final A7O()Lcom/facebook/ads/redexgen/X/9a;
    .locals 1

    .line 56761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/9a;

    return-object v0
.end method

.method public final A7R()J
    .locals 6

    .line 56762
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UO;->A01:J

    .line 56763
    .local v0, "positionUs":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    if-eqz v0, :cond_0

    .line 56764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A04:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->A5B()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A00:J

    sub-long/2addr v4, v0

    .line 56765
    .local v2, "elapsedSinceBaseMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/9a;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 56766
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/99;->A00(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 56767
    .end local v2    # "elapsedSinceBaseMs":J
    :cond_0
    :goto_0
    return-wide v2

    .line 56768
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/9a;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/9a;->A00(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;
    .locals 2

    .line 56769
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UO;->A03:Z

    if-eqz v0, :cond_0

    .line 56770
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UO;->A7R()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/UO;->A02(J)V

    .line 56771
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UO;->A02:Lcom/facebook/ads/redexgen/X/9a;

    .line 56772
    return-object p1
.end method
