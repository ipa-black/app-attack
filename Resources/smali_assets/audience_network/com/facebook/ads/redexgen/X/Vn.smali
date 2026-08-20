.class public final Lcom/facebook/ads/redexgen/X/Vn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cc;
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static final A0E:[D


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Bh;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/Cc;

.field public final A0C:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 60375
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vn;->A02()V

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vn;->A0E:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 60376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60377
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0C:[Z

    .line 60378
    const/16 v1, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Lcom/facebook/ads/redexgen/X/Cc;

    .line 60379
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Cc;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 60380
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Cc;->A02:[B

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Cc;->A00:I

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 60381
    .local v1, "csdData":[B
    const/4 v4, 0x4

    aget-byte v0, v8, v4

    and-int/lit16 v5, v0, 0xff

    .line 60382
    .local v3, "firstByte":I
    const/4 v0, 0x5

    aget-byte v0, v8, v0

    and-int/lit16 v3, v0, 0xff

    .line 60383
    .local v5, "secondByte":I
    const/4 v0, 0x6

    aget-byte v0, v8, v0

    and-int/lit16 v2, v0, 0xff

    .line 60384
    .local v6, "thirdByte":I
    shl-int/lit8 v14, v5, 0x4

    shr-int/lit8 v0, v3, 0x4

    or-int/2addr v14, v0

    .line 60385
    .local v7, "width":I
    and-int/lit8 v0, v3, 0xf

    shl-int/lit8 v15, v0, 0x8

    or-int/2addr v15, v2

    .line 60386
    .local v8, "height":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60387
    .local v9, "pixelWidthHeightRatio":F
    const/4 v6, 0x7

    aget-byte v0, v8, v6

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v3, v0, 0x4

    .line 60388
    .local v15, "aspectRatioCode":I
    const/4 v0, 0x2

    if-eq v3, v0, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    if-eq v3, v4, :cond_2

    .line 60389
    :goto_0
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v16, -0x40800000    # -1.0f

    .line 60390
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, -0x1

    const/16 p0, 0x0

    .line 60391
    const/4 v4, 0x0

    const/16 v3, 0xb

    const/16 v0, 0x79

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Vn;->A01(III)Ljava/lang/String;

    move-result-object v10

    .end local v15    # "aspectRatioCode":I
    .local p2, "aspectRatioCode":I
    move-object/from16 v9, p1

    move/from16 v19, v2

    invoke-static/range {v9 .. v20}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v5

    .line 60392
    .local v9, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    const-wide/16 v3, 0x0

    .line 60393
    .local v10, "frameDurationUs":J
    aget-byte v0, v8, v6

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v6, v0, -0x1

    .line 60394
    .local v12, "frameRateCodeMinusOne":I
    if-ltz v6, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vn;->A0E:[D

    array-length v0, v2

    if-ge v6, v0, :cond_1

    .line 60395
    aget-wide v6, v2, v6

    .line 60396
    .local v14, "frameRate":D
    iget v2, v1, Lcom/facebook/ads/redexgen/X/Cc;->A01:I

    .line 60397
    .local v13, "sequenceExtensionPosition":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v8, v0

    and-int/lit8 v0, v0, 0x60

    shr-int/lit8 v1, v0, 0x5

    .line 60398
    .local v4, "frameRateExtensionN":I
    add-int/lit8 v0, v2, 0x9

    aget-byte v0, v8, v0

    and-int/lit8 v4, v0, 0x1f

    .line 60399
    .local v0, "frameRateExtensionD":I
    if-eq v1, v4, :cond_0

    .line 60400
    .end local v1    # "csdData":[B
    .end local v2
    .local v16, "csdData":[B
    .local v17, "pixelWidthHeightRatio":F
    int-to-double v2, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    .end local v3    # "firstByte":I
    .local v18, "firstByte":I
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "frameRateExtensionN":I
    .local v19, "frameRateExtensionN":I
    int-to-double v0, v0

    div-double/2addr v2, v0

    mul-double/2addr v6, v2

    .line 60401
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .restart local v16    # "csdData":[B
    .restart local v17    # "pixelWidthHeightRatio":F
    .restart local v18    # "firstByte":I
    .restart local v19    # "frameRateExtensionN":I
    :cond_0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v6

    double-to-long v3, v0

    .line 60402
    .end local v1
    .end local v2
    .end local v3
    .restart local v16    # "csdData":[B
    .restart local v17    # "pixelWidthHeightRatio":F
    .restart local v18    # "firstByte":I
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 60403
    :cond_2
    mul-int/lit8 v0, v15, 0x79

    int-to-float v2, v0

    mul-int/lit8 v0, v14, 0x64

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 60404
    .end local v9    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .local v2, "pixelWidthHeightRatio":F
    goto :goto_0

    .line 60405
    .end local v2    # "pixelWidthHeightRatio":F
    .restart local v9    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_3
    mul-int/lit8 v0, v15, 0x10

    int-to-float v2, v0

    mul-int/lit8 v0, v14, 0x9

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 60406
    .end local v9    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .restart local v2    # "pixelWidthHeightRatio":F
    goto :goto_0

    .line 60407
    .end local v2    # "pixelWidthHeightRatio":F
    .restart local v9    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_4
    mul-int/lit8 v0, v15, 0x4

    int-to-float v2, v0

    mul-int/lit8 v0, v14, 0x3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 60408
    .end local v9    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .restart local v2    # "pixelWidthHeightRatio":F
    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vn;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vn;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x18t
        0x15t
        0x14t
        0x1et
        0x5et
        0x1ct
        0x1t
        0x14t
        0x16t
        0x43t
    .end array-data
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 21

    .line 60409
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v4

    .line 60410
    .local v2, "offset":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v8

    .line 60411
    .local v3, "limit":I
    iget-object v12, v13, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 60412
    .local v4, "dataArray":[B
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    .line 60413
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    invoke-interface {v1, v13, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60414
    :goto_0
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0C:[Z

    invoke-static {v12, v4, v8, v0}, Lcom/facebook/ads/redexgen/X/HY;->A04([BII[Z)I

    move-result v7

    .line 60415
    .local v5, "startCodeOffset":I
    if-ne v7, v8, :cond_1

    .line 60416
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A07:Z

    if-nez v0, :cond_0

    .line 60417
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0, v12, v4, v8}, Lcom/facebook/ads/redexgen/X/Cc;->A01([BII)V

    .line 60418
    :cond_0
    return-void

    .line 60419
    :cond_1
    iget-object v1, v13, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    add-int/lit8 v0, v7, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v6, v0, 0xff

    .line 60420
    .local v6, "startCodeValue":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A07:Z

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_3

    .line 60421
    sub-int v1, v7, v4

    .line 60422
    .local v7, "lengthToStartCode":I
    if-lez v1, :cond_2

    .line 60423
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0, v12, v4, v7}, Lcom/facebook/ads/redexgen/X/Cc;->A01([BII)V

    .line 60424
    :cond_2
    if-gez v1, :cond_d

    neg-int v1, v1

    .line 60425
    .local v10, "bytesAlreadyPassed":I
    :goto_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Cc;->A02(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60426
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Lcom/facebook/ads/redexgen/X/Cc;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A06:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vn;->A00(Lcom/facebook/ads/redexgen/X/Cc;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 60427
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Long;>;"
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60428
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A00:J

    .line 60429
    iput-boolean v10, v9, Lcom/facebook/ads/redexgen/X/Vn;->A07:Z

    .line 60430
    .end local v7    # "lengthToStartCode":I
    .end local v10    # "bytesAlreadyPassed":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Long;>;"
    :cond_3
    if-eqz v6, :cond_4

    const/16 v0, 0xb3

    if-ne v6, v0, :cond_c

    .line 60431
    :cond_4
    sub-int v4, v8, v7

    .line 60432
    .local v7, "bytesWrittenPastStartCode":I
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A07:Z

    if-eqz v0, :cond_5

    .line 60433
    iget-boolean v5, v9, Lcom/facebook/ads/redexgen/X/Vn;->A09:Z

    .line 60434
    .local v13, "flags":I
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A02:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    sub-int/2addr v0, v4

    .line 60435
    .local v17, "size":I
    iget-object v14, v9, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v15, v9, Lcom/facebook/ads/redexgen/X/Vn;->A03:J

    const/16 v20, 0x0

    move/from16 v17, v5

    move/from16 v18, v0

    move/from16 v19, v4

    invoke-interface/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 60436
    .end local v13    # "flags":I
    .end local v17    # "size":I
    :cond_5
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    if-eqz v0, :cond_7

    .line 60437
    :cond_6
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A02:J

    .line 60438
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A01:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    .line 60439
    :goto_2
    iput-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A03:J

    .line 60440
    iput-boolean v11, v9, Lcom/facebook/ads/redexgen/X/Vn;->A09:Z

    .line 60441
    iput-wide v4, v9, Lcom/facebook/ads/redexgen/X/Vn;->A01:J

    .line 60442
    iput-boolean v10, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Z

    .line 60443
    :cond_7
    if-nez v6, :cond_8

    const/4 v11, 0x1

    :cond_8
    iput-boolean v11, v9, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    .line 60444
    .end local v7    # "bytesWrittenPastStartCode":I
    :cond_9
    :goto_3
    add-int/lit8 v4, v7, 0x3

    .line 60445
    .end local v5    # "startCodeOffset":I
    .end local v6    # "startCodeValue":I
    goto/16 :goto_0

    .line 60446
    :cond_a
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Z

    if-eqz v0, :cond_b

    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/Vn;->A03:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/Vn;->A00:J

    add-long/2addr v2, v0

    goto :goto_2

    :cond_b
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 60447
    :cond_c
    const/16 v0, 0xb8

    if-ne v6, v0, :cond_9

    .line 60448
    iput-boolean v10, v9, Lcom/facebook/ads/redexgen/X/Vn;->A09:Z

    goto :goto_3

    .line 60449
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 2

    .line 60450
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60451
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A06:Ljava/lang/String;

    .line 60452
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60453
    return-void
.end method

.method public final ADM()V
    .locals 0

    .line 60454
    return-void
.end method

.method public final ADN(JZ)V
    .locals 0

    .line 60455
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A01:J

    .line 60456
    return-void
.end method

.method public final AEb()V
    .locals 2

    .line 60457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0C:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 60458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Lcom/facebook/ads/redexgen/X/Cc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cc;->A00()V

    .line 60459
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    .line 60460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Z

    .line 60461
    return-void
.end method
