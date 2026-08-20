.class public final Lcom/facebook/ads/redexgen/X/Mp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Mq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44854
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A01:J

    .line 44855
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A03:J

    .line 44856
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A04:J

    .line 44857
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A00:J

    .line 44858
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A05:J

    .line 44859
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A02:J

    .line 44860
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A06:J

    .line 44861
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A07:Ljava/lang/String;

    .line 44862
    return-void
.end method


# virtual methods
.method public final A00(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44863
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A00:J

    .line 44864
    return-object p0
.end method

.method public final A01(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44865
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A01:J

    .line 44866
    return-object p0
.end method

.method public final A02(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44867
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A02:J

    .line 44868
    return-object p0
.end method

.method public final A03(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44869
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A03:J

    .line 44870
    return-object p0
.end method

.method public final A04(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44871
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A04:J

    .line 44872
    return-object p0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44873
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A05:J

    .line 44874
    return-object p0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/Mp;
    .locals 0

    .line 44875
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A06:J

    .line 44876
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 19

    .line 44877
    move-object/from16 v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Mp;->A07:Ljava/lang/String;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Mp;->A01:J

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/Mp;->A03:J

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/Mp;->A04:J

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/Mp;->A00:J

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/Mp;->A05:J

    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/Mp;->A02:J

    move-object v2, v2

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Mp;->A06:J

    const/16 v18, 0x0

    move-wide/from16 v16, v0

    invoke-direct/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/Mq;-><init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/redexgen/X/Mo;)V

    return-object v2
.end method
