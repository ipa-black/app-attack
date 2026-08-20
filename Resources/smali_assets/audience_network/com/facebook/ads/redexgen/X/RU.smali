.class public final Lcom/facebook/ads/redexgen/X/RU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A05:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50850
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A05:I

    .line 50851
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A04:Ljava/lang/String;

    .line 50852
    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/RU;->A03:J

    .line 50853
    mul-long/2addr p4, v0

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:J

    .line 50854
    mul-long/2addr v0, p6

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A02:J

    .line 50855
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:J

    .line 50856
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 50857
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:J

    return-wide v0
.end method

.method public final A01()J
    .locals 2

    .line 50858
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:J

    return-wide v0
.end method

.method public final A02()J
    .locals 2

    .line 50859
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A02:J

    return-wide v0
.end method

.method public final A03()J
    .locals 2

    .line 50860
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A03:J

    return-wide v0
.end method

.method public final A04()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50861
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A03:J

    .line 50862
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:J

    .line 50863
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/RU;->A02:J

    .line 50864
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 50865
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A05(J)V
    .locals 0

    .line 50866
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A00:J

    .line 50867
    return-void
.end method

.method public final A06(J)V
    .locals 0

    .line 50868
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A01:J

    .line 50869
    return-void
.end method

.method public final A07(J)V
    .locals 0

    .line 50870
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A02:J

    .line 50871
    return-void
.end method

.method public final A08(J)V
    .locals 0

    .line 50872
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/RU;->A03:J

    .line 50873
    return-void
.end method
