.class public final Lcom/facebook/ads/redexgen/X/W4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/W5;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/CN;

.field public final A0B:Lcom/facebook/ads/redexgen/X/CR;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 61182
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qlUqm53dx2wRFYI19yFYkvkmPQFopPfK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kfzPj4jiKhQrTstJ9wOtTomcMDMJFI2R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tio4jxSpdKgrcMNksdh3F2ai0PxCizyi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S5qskWqDqPkhPpuUuuvRcKySD9vc4n0H"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "X67UodKHNvmZa3DnASt4fZlpL2cJMcNV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "01LnOYH7rGQp5f5o2UGBiyg7bnJQxBa8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qDTiiMVukWANjWrPbJo4riKeblMOo1tu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5dAWhKcmsHilqUXjq3PFXu2GkNxyPnDG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W4;->A0A()V

    return-void
.end method

.method public constructor <init>(JJLcom/facebook/ads/redexgen/X/CR;IJ)V
    .locals 4

    .line 61183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61184
    new-instance v0, Lcom/facebook/ads/redexgen/X/CN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    .line 61185
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    cmp-long v0, p3, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 61186
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/W4;->A0B:Lcom/facebook/ads/redexgen/X/CR;

    .line 61187
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/W4;->A09:J

    .line 61188
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    .line 61189
    int-to-long v1, p6

    sub-long/2addr p3, p1

    cmp-long v0, v1, p3

    if-nez v0, :cond_0

    .line 61190
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/W4;->A07:J

    .line 61191
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    .line 61192
    :goto_1
    return-void

    .line 61193
    :cond_0
    iput v3, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    goto :goto_1

    .line 61194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(JJJ)J
    .locals 7

    .line 61195
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A09:J

    sub-long/2addr v3, v1

    mul-long/2addr v3, p3

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/W4;->A07:J

    div-long/2addr v3, v5

    sub-long/2addr v3, p5

    add-long/2addr p1, v3

    .line 61196
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 61197
    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/W4;->A09:J

    .line 61198
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 61199
    const-wide/16 v0, 0x1

    sub-long p1, v2, v0

    .line 61200
    :cond_1
    return-wide p1
.end method

.method private final A01(JLcom/facebook/ads/redexgen/X/BW;)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61201
    move-object v10, p0

    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    iget-wide v1, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    const-wide/16 v13, 0x2

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 61202
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 61203
    :cond_0
    move-object/from16 v5, p3

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v1

    .line 61204
    .local v2, "initialPosition":J
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    invoke-direct {v10, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/W4;->A0D(Lcom/facebook/ads/redexgen/X/BW;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61205
    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 61206
    return-wide v3

    .line 61207
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W4;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61208
    :cond_2
    iget-object v3, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    const/4 v0, 0x0

    invoke-virtual {v3, v5, v0}, Lcom/facebook/ads/redexgen/X/CN;->A03(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    .line 61209
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 61210
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    sub-long p1, p1, v3

    .line 61211
    .local v4, "granuleDistance":J
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/CN;->A01:I

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    add-int/2addr v4, v0

    .line 61212
    .local v8, "pageSize":I
    const-wide/16 v8, 0x0

    cmp-long v0, p1, v8

    if-ltz v0, :cond_3

    const-wide/32 v6, 0x11940

    cmp-long v0, p1, v6

    if-lez v0, :cond_9

    .line 61213
    :cond_3
    const-wide/32 v11, 0x186a0

    cmp-long v0, p1, v8

    if-gez v0, :cond_5

    .line 61214
    iput-wide v1, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    .line 61215
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A02:J

    .line 61216
    :cond_4
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    sget-object v8, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v7, v8, v6

    const/4 v6, 0x0

    aget-object v8, v8, v6

    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v7, v6, :cond_8

    sget-object v8, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    const-string v7, "zvKF8WQUI0SajHpo4Xv9v8DHT9e2MTPL"

    const/4 v6, 0x3

    aput-object v7, v8, v6

    sub-long/2addr v2, v0

    cmp-long v6, v2, v11

    if-gez v6, :cond_6

    .line 61217
    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    .line 61218
    return-wide v0

    .line 61219
    :cond_5
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v2

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    .line 61220
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    iput-wide v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A05:J

    .line 61221
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    sub-long/2addr v2, v0

    int-to-long v0, v4

    add-long/2addr v2, v0

    cmp-long v0, v2, v11

    if-gez v0, :cond_4

    .line 61222
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 61223
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0

    .line 61224
    :cond_6
    int-to-long v3, v4

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_7

    :goto_0
    mul-long/2addr v3, v13

    .line 61225
    .local v9, "offset":J
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v6

    sub-long/2addr v6, v3

    iget-wide v8, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    iget-wide v4, v10, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    sub-long/2addr v8, v4

    mul-long v8, v8, p1

    .end local v2    # "initialPosition":J
    .local p1, "initialPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A02:J

    .end local v4    # "granuleDistance":J
    .local p3, "granuleDistance":J
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v8, v2

    add-long/2addr v6, v8

    .line 61226
    .local v6, "nextPosition":J
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 61227
    .end local v6    # "nextPosition":J
    .local v1, "nextPosition":J
    iget-wide v2, v10, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 61228
    return-wide v0

    .line 61229
    :cond_7
    const-wide/16 v13, 0x1

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61230
    :cond_9
    invoke-interface {v5, v4}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 61231
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    add-long/2addr v2, v13

    neg-long v0, v2

    return-wide v0
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/BW;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61232
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W4;->A0C(Lcom/facebook/ads/redexgen/X/BW;)V

    .line 61233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CN;->A02()V

    .line 61234
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/CN;->A04:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    const-string v1, "8L7HD1AI4we5ropKbStlQEIIPOmJrEUL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "xLnKc6RM4Edpr9DSdPLSxPAMnW98GKHb"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x4

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 61235
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/CN;->A03(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    .line 61236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/CN;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    goto :goto_0

    .line 61237
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/BW;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/CN;->A03(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    .line 61239
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    .line 61240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/CN;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 61241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    iget-wide p4, v0, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    .line 61242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0A:Lcom/facebook/ads/redexgen/X/CN;

    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/CN;->A03(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    goto :goto_0

    .line 61243
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 61244
    return-wide p4
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/W4;)J
    .locals 1

    .line 61245
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A09:J

    return-wide v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/W4;)J
    .locals 1

    .line 61246
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A07:J

    return-wide v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/W4;JJJ)J
    .locals 0

    .line 61247
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/W4;->A00(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final A07()Lcom/facebook/ads/redexgen/X/W5;
    .locals 6

    .line 61248
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/W4;->A07:J

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/W5;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/W5;-><init>(Lcom/facebook/ads/redexgen/X/W4;Lcom/facebook/ads/redexgen/X/CL;)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/W4;)Lcom/facebook/ads/redexgen/X/CR;
    .locals 0

    .line 61249
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0B:Lcom/facebook/ads/redexgen/X/CR;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W4;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W4;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x16t
        0x37t
        0x78t
        0x37t
        0x3ft
        0x3ft
        0x78t
        0x28t
        0x39t
        0x3ft
        0x3dt
        0x78t
        0x3bt
        0x39t
        0x36t
        0x78t
        0x3at
        0x3dt
        0x78t
        0x3et
        0x37t
        0x2dt
        0x36t
        0x3ct
        0x76t
    .end array-data
.end method

.method private final A0B()V
    .locals 2

    .line 61250
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:J

    .line 61251
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:J

    .line 61252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A05:J

    .line 61253
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A07:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:J

    .line 61254
    return-void
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/BW;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61255
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/W4;->A0D(Lcom/facebook/ads/redexgen/X/BW;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61256
    return-void

    .line 61257
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/BW;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61258
    const-wide/16 v2, 0x3

    add-long/2addr v2, p2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 61259
    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 61260
    .local v0, "buffer":[B
    array-length v2, v3

    .line 61261
    .local v1, "peekLength":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v4

    int-to-long v0, v2

    add-long/2addr v4, v0

    const/4 v6, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_0

    .line 61262
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v4

    sub-long v0, v7, v4

    long-to-int v2, v0

    .line 61263
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 61264
    return v6

    .line 61265
    :cond_0
    invoke-interface {p1, v3, v6, v2, v6}, Lcom/facebook/ads/redexgen/X/BW;->ADQ([BIIZ)Z

    .line 61266
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v0, v2, -0x3

    if-ge v4, v0, :cond_2

    .line 61267
    aget-byte v1, v3, v4

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    aget-byte v0, v3, v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x2

    aget-byte v0, v3, v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v4, 0x3

    aget-byte v1, v3, v0

    const/16 v0, 0x53

    if-ne v1, v0, :cond_1

    .line 61268
    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 61269
    const/4 v0, 0x1

    return v0

    .line 61270
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61271
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v0, v2, -0x3

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4V()Lcom/facebook/ads/redexgen/X/Be;
    .locals 1

    .line 61272
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A07()Lcom/facebook/ads/redexgen/X/W5;

    move-result-object v0

    return-object v0
.end method

.method public final ADq(Lcom/facebook/ads/redexgen/X/BW;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61273
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    const/4 v2, 0x1

    const/4 v4, 0x3

    move-object v8, p1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v4, :cond_0

    .line 61274
    const-wide/16 v0, -0x1

    return-wide v0

    .line 61275
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 61276
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A06:J

    const-wide/16 v2, 0x2

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 61277
    const-wide/16 v0, 0x0

    .line 61278
    .local v0, "currentGranule":J
    .local v0, "currentGranule":J
    :goto_0
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    .line 61279
    add-long/2addr v2, v0

    neg-long v0, v2

    return-wide v0

    .line 61280
    .end local v0    # "currentGranule":J
    :cond_2
    invoke-direct {p0, v0, v1, v8}, Lcom/facebook/ads/redexgen/X/W4;->A01(JLcom/facebook/ads/redexgen/X/BW;)J

    move-result-wide v0

    .line 61281
    .local v0, "position":J
    cmp-long v5, v0, v6

    if-ltz v5, :cond_3

    .line 61282
    return-wide v0

    .line 61283
    :cond_3
    iget-wide v9, p0, Lcom/facebook/ads/redexgen/X/W4;->A06:J

    add-long/2addr v0, v2

    neg-long v11, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v5, Lcom/facebook/ads/redexgen/X/W4;->A0D:[Ljava/lang/String;

    const-string v1, "dlJMt4bYi9Wd99tok2AKRnDxWagHn2V7"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/W4;->A03(Lcom/facebook/ads/redexgen/X/BW;JJ)J

    move-result-wide v0

    goto :goto_0

    .line 61284
    .end local v0    # "position":J
    :cond_5
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A03:J

    .line 61285
    iput v2, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    .line 61286
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/W4;->A08:J

    const-wide/32 v0, 0xff1b

    sub-long/2addr v5, v0

    .line 61287
    .local v0, "lastPageSearchPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A03:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_6

    .line 61288
    return-wide v5

    .line 61289
    .end local v0    # "lastPageSearchPosition":J
    :cond_6
    invoke-direct {p0, v8}, Lcom/facebook/ads/redexgen/X/W4;->A02(Lcom/facebook/ads/redexgen/X/BW;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A07:J

    .line 61290
    iput v4, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    .line 61291
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A03:J

    return-wide v0
.end method

.method public final AFR(J)J
    .locals 4

    .line 61292
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 61293
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    :goto_1
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A06:J

    .line 61294
    iput v3, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    .line 61295
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W4;->A0B()V

    .line 61296
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A06:J

    return-wide v0

    .line 61297
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A0B:Lcom/facebook/ads/redexgen/X/CR;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A04(J)J

    move-result-wide v1

    goto :goto_1

    .line 61298
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
