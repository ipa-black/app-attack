.class public final Lcom/facebook/ads/redexgen/X/Wi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AE;


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/redexgen/X/Aj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Ljava/nio/ByteBuffer;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ShortBuffer;

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 64327
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pWxjFsNDaGkCJOJIXf3nBpXapJRDFAns"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UkLwcPvzhTn0p2HYHg4j6N15VQJC2l4J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YJRY7F74jhCJ9GxMtbKfeDIDzZlQRHvd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sMHZoQnzt9jO1PxekMXjLs1IjEAfMk8v"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KagcOA94TBJJAh6RgnCdHwb09FdTTp2T"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s5OQD0o5JvIPNjQnPDHHdNmWUeQWTVLd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wi;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64329
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    .line 64330
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:F

    .line 64331
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    .line 64332
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    .line 64333
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    .line 64334
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    .line 64335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0B:Ljava/nio/ShortBuffer;

    .line 64336
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0A:Ljava/nio/ByteBuffer;

    .line 64337
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A04:I

    .line 64338
    return-void
.end method


# virtual methods
.method public final A00(F)F
    .locals 2

    .line 64339
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(FFF)F

    move-result v1

    .line 64340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 64341
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:F

    .line 64342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    .line 64343
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wi;->flush()V

    .line 64344
    return v1
.end method

.method public final A01(F)F
    .locals 2

    .line 64345
    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(FFF)F

    move-result v1

    .line 64346
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 64347
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    .line 64348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    .line 64349
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wi;->flush()V

    .line 64350
    return v1
.end method

.method public final A02(J)J
    .locals 12

    .line 64351
    move-object v5, p0

    iget-wide v10, v5, Lcom/facebook/ads/redexgen/X/Wi;->A07:J

    const-wide/16 v1, 0x400

    cmp-long v0, v10, v1

    move-wide v6, p1

    if-ltz v0, :cond_2

    .line 64352
    iget v4, v5, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    iget v3, v5, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wi;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wi;->A0D:[Ljava/lang/String;

    const-string v1, "wo8T89BmhgCv6RPfRPDSoWflpmmFSmBw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    .line 64353
    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/Wi;->A06:J

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v0

    .line 64354
    :goto_0
    return-wide v0

    .line 64355
    :cond_1
    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/Wi;->A06:J

    int-to-long v0, v4

    mul-long/2addr v8, v0

    int-to-long v0, v3

    mul-long/2addr v10, v0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v0

    goto :goto_0

    .line 64356
    :cond_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    float-to-double v2, v0

    long-to-double v0, v6

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A4A(III)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 64357
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 64358
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A04:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 64359
    move v1, p1

    .line 64360
    .local v0, "outputSampleRateHz":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    if-ne v0, v1, :cond_1

    .line 64361
    const/4 v0, 0x0

    return v0

    .line 64362
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    .line 64363
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    .line 64364
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    .line 64365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    .line 64366
    const/4 v0, 0x1

    return v0

    .line 64367
    .end local v0    # "outputSampleRateHz":I
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AD;-><init>(III)V

    throw v0
.end method

.method public final A7D()Ljava/nio/ByteBuffer;
    .locals 2

    .line 64368
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0A:Ljava/nio/ByteBuffer;

    .line 64369
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0A:Ljava/nio/ByteBuffer;

    .line 64370
    return-object v1
.end method

.method public final A7E()I
    .locals 1

    .line 64371
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    return v0
.end method

.method public final A7F()I
    .locals 1

    .line 64372
    const/4 v0, 0x2

    return v0
.end method

.method public final A7G()I
    .locals 1

    .line 64373
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    return v0
.end method

.method public final A8c()Z
    .locals 3

    .line 64374
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 64375
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:F

    sub-float/2addr v0, v2

    .line 64376
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 64377
    :goto_0
    return v0

    .line 64378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8h()Z
    .locals 1

    .line 64379
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0H()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADm()V
    .locals 2

    .line 64380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 64381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0J()V

    .line 64382
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0C:Z

    .line 64383
    return-void

    .line 64384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADn(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 64385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 64386
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wi;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wi;->A0D:[Ljava/lang/String;

    const-string v1, "CgSP7s2gOF1CWMy2qVo8ASfS0wZJy2y3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 64388
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 64389
    .local v0, "shortBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 64390
    .local v1, "inputSize":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A06:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A06:J

    .line 64391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Aj;->A0L(Ljava/nio/ShortBuffer;)V

    .line 64392
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64393
    .end local v0    # "shortBuffer":Ljava/nio/ShortBuffer;
    .end local v1    # "inputSize":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    mul-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x2

    .line 64394
    .local v0, "outputSize":I
    if-lez v4, :cond_3

    .line 64395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 64396
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    .line 64397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0B:Ljava/nio/ShortBuffer;

    .line 64398
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0K(Ljava/nio/ShortBuffer;)V

    .line 64399
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A07:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A07:J

    .line 64400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0A:Ljava/nio/ByteBuffer;

    .line 64402
    :cond_3
    return-void

    .line 64403
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 64404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public final flush()V
    .locals 6

    .line 64405
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wi;->A8c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    if-nez v0, :cond_1

    .line 64407
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aj;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Aj;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    .line 64408
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0A:Ljava/nio/ByteBuffer;

    .line 64409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A06:J

    .line 64410
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A07:J

    .line 64411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0C:Z

    .line 64412
    return-void

    .line 64413
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Aj;->A0I()V

    goto :goto_0
.end method

.method public final reset()V
    .locals 2

    .line 64414
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:F

    .line 64415
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:F

    .line 64416
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:I

    .line 64417
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A05:I

    .line 64418
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A03:I

    .line 64419
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    .line 64420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0B:Ljava/nio/ShortBuffer;

    .line 64421
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0A:Ljava/nio/ByteBuffer;

    .line 64422
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A04:I

    .line 64423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A08:Lcom/facebook/ads/redexgen/X/Aj;

    .line 64424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A06:J

    .line 64425
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A07:J

    .line 64426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A0C:Z

    .line 64427
    return-void
.end method
