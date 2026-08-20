.class public final Lcom/facebook/ads/redexgen/X/CK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/CH;

.field public final A04:[I

.field public final A05:[I

.field public final A06:[J

.field public final A07:[J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CH;[J[II[J[IJ)V
    .locals 3

    .line 25792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25793
    array-length v1, p3

    array-length v0, p5

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 25794
    array-length v1, p2

    array-length v0, p5

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 25795
    array-length v1, p6

    array-length v0, p5

    if-ne v1, v0, :cond_0

    :goto_2
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 25796
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CK;->A03:Lcom/facebook/ads/redexgen/X/CH;

    .line 25797
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CK;->A06:[J

    .line 25798
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CK;->A05:[I

    .line 25799
    iput p4, p0, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    .line 25800
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    .line 25801
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/CK;->A04:[I

    .line 25802
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/CK;->A02:J

    .line 25803
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    .line 25804
    return-void

    .line 25805
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 25806
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 25807
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(J)I
    .locals 3

    .line 25808
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0B([JJZZ)I

    move-result v1

    .line 25809
    .local v0, "startIndex":I
    .local v2, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 25810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A04:[I

    aget v0, v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 25811
    return v1

    .line 25812
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 25813
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final A01(J)I
    .locals 3

    .line 25814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0A([JJZZ)I

    move-result v1

    .line 25815
    .local v0, "startIndex":I
    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 25816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A04:[I

    aget v0, v0, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 25817
    return v1

    .line 25818
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25819
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
