.class public final Lcom/facebook/ads/redexgen/X/Vp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A07:Lcom/facebook/ads/redexgen/X/Bh;

.field public A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0A:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60512
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w9cuQ6ovYh3ZHshq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zlsSG9X60zlLCJUVBT3vkSwjd33HW005"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8vaxpIc6NUL7cuBxBwbBxs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qXtpOKhwIOIw8VF1RV5ZQBWZqU2hmLV9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z7BiUu8Ok3CRqNW4O4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GwHEwqWk84SC7X7T1ylmsXGt995y5exC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gD736tfkPLt776OMRp3dW8RllnUCOlL1"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HMDdnULPUBD5CGRsSgG0WxNxi6c"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 60513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60514
    const/16 v0, 0x12

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60515
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:I

    .line 60516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/lang/String;

    .line 60517
    return-void
.end method

.method private A00()V
    .locals 6

    .line 60518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 60519
    .local v0, "frameData":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-nez v0, :cond_0

    .line 60520
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ae;->A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 60521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60522
    :cond_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ae;->A01([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A01:I

    .line 60523
    const-wide/32 v4, 0xf4240

    .line 60524
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ae;->A02([B)I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A04:J

    .line 60525
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .locals 5

    .line 60526
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 60527
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    .line 60528
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    .line 60529
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ae;->A07(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 60531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    .line 60532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v1, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 60533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v1, 0x3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 60534
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    .line 60535
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    .line 60536
    return v4

    .line 60537
    :cond_1
    return v3
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z
    .locals 2

    .line 60538
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60539
    .local v0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 60540
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    .line 60541
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 9

    .line 60542
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    if-lez v0, :cond_5

    .line 60543
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:I

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 60544
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vp;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60545
    .local v0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60546
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    .line 60547
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Vp;->A01:I

    if-ne v0, v6, :cond_0

    .line 60548
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vp;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vp;->A05:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 60549
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vp;->A05:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vp;->A04:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vp;->A05:J

    .line 60550
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:I

    goto :goto_0

    .line 60551
    .end local v0    # "bytesToRead":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/Vp;->A02(Lcom/facebook/ads/redexgen/X/Hc;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60552
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vp;->A00()V

    .line 60553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60555
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:I

    goto :goto_0

    .line 60556
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vp;->A01(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0B:[Ljava/lang/String;

    const-string v1, "o3J7EICCGaR78gVY0KOVd"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 60557
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:I

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60558
    :cond_5
    return-void
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 2

    .line 60559
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60560
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/lang/String;

    .line 60561
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60562
    return-void
.end method

.method public final ADM()V
    .locals 0

    .line 60563
    return-void
.end method

.method public final ADN(JZ)V
    .locals 0

    .line 60564
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A05:J

    .line 60565
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 60566
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:I

    .line 60567
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    .line 60568
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    .line 60569
    return-void
.end method
