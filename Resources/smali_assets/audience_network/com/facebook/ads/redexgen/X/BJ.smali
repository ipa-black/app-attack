.class public abstract Lcom/facebook/ads/redexgen/X/BJ;
.super Lcom/facebook/ads/redexgen/X/Wf;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FR;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/FR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23239
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wf;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 23240
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ak;->A07()V

    .line 23241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/FR;

    .line 23242
    return-void
.end method

.method public abstract A08()V
.end method

.method public final A09(JLcom/facebook/ads/redexgen/X/FR;J)V
    .locals 3

    .line 23243
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Wf;->A01:J

    .line 23244
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/FR;

    .line 23245
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, p4, v1

    if-nez v0, :cond_0

    iget-wide p4, p0, Lcom/facebook/ads/redexgen/X/Wf;->A01:J

    :cond_0
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/BJ;->A00:J

    .line 23246
    return-void
.end method

.method public final A6H(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation

    .line 23247
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/FR;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FR;->A6H(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6i(I)J
    .locals 4

    .line 23248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/FR;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/FR;->A6i(I)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A00:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A6j()I
    .locals 1

    .line 23249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/FR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FR;->A6j()I

    move-result v0

    return v0
.end method

.method public final A7A(J)I
    .locals 3

    .line 23250
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BJ;->A01:Lcom/facebook/ads/redexgen/X/FR;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BJ;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/FR;->A7A(J)I

    move-result v0

    return v0
.end method
