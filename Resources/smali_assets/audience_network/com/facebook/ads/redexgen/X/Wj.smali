.class public final Lcom/facebook/ads/redexgen/X/Wj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:Ljava/nio/ByteBuffer;

.field public A08:Ljava/nio/ByteBuffer;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[B

.field public A0D:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 64428
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fmVPqkFD1cgVEf5yEceID3qk2mv0y9jV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b0qKN8vCZijgotAYoetPmKMmgBOh17e"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g7TZXYRzX5Z2yGc3Q7ZfgtgqT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qnhKgbP1LxOTukF1AVGitzUWI170z7Sc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gLdsa9A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GaZA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7VW9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "auyYkXCiGRTQJpd2YduJgHCR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64430
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    .line 64431
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    .line 64432
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A01:I

    .line 64433
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    .line 64434
    const/4 v1, 0x0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    .line 64435
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    .line 64436
    return-void
.end method

.method private A00(J)I
    .locals 4

    .line 64437
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 64438
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 64439
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_0

    .line 64440
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    div-int/2addr v3, v0

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    const-string v1, "SOTn58r"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "mEuLJiBevsWuJD71nrz4KbfWqLj7leU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 64441
    :cond_0
    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64442
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method private A02(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 64443
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 64444
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_0

    .line 64445
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    return v0

    .line 64446
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 64447
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method private A03(I)V
    .locals 2

    .line 64448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 64449
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    .line 64450
    :goto_0
    if-lez p1, :cond_0

    .line 64451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0A:Z

    .line 64452
    :cond_0
    return-void

    .line 64453
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private A04(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 64454
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A03(I)V

    .line 64455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 64456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    .line 64458
    return-void
.end method

.method private A05(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 64459
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 64460
    .local v0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 64461
    .local v1, "noisePosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v3, v4, v0

    .line 64462
    .local v2, "maybeSilenceInputSize":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    array-length v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    sub-int/2addr v1, v0

    .line 64463
    .local v4, "maybeSilenceBufferRemaining":I
    const/4 v5, 0x0

    if-ge v4, v6, :cond_0

    if-ge v3, v1, :cond_0

    .line 64464
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A09([BI)V

    .line 64465
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 64466
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    const-string v1, "O6VD7siumNrk7CVoottqf9Wd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "eko4kK9cp1fEhg6H4c3WRP0k0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Wj;->A05:I

    .line 64467
    .end local v3
    :goto_0
    return-void

    .line 64468
    :cond_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 64469
    .local v3, "bytesToWrite":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 64471
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    .line 64472
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    array-length v0, v1

    if-ne v7, v0, :cond_1

    .line 64473
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0A:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 64474
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A09([BI)V

    .line 64475
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    .line 64476
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A08(Ljava/nio/ByteBuffer;[BI)V

    .line 64477
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    .line 64478
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Wj;->A05:I

    .line 64479
    :cond_1
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 64480
    :cond_2
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    div-int/2addr v7, v0

    int-to-long v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 64481
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 64482
    .local v0, "limit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64483
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A01(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 64484
    .local v1, "noiseLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 64485
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A05:I

    .line 64486
    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64487
    return-void

    .line 64488
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64489
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A04(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private A07(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 64490
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 64491
    .local v0, "limit":I
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 64492
    .local v1, "noisyPosition":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64493
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    .line 64494
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A08(Ljava/nio/ByteBuffer;[BI)V

    .line 64495
    if-ge v4, v5, :cond_0

    .line 64496
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Wj;->A09([BI)V

    .line 64497
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A05:I

    .line 64498
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64499
    :cond_0
    return-void
.end method

.method private A08(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 64500
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 64501
    .local v0, "fromInputSize":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    sub-int/2addr v2, v3

    .line 64502
    .local v1, "fromBufferSize":I
    sub-int/2addr p3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64503
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 64505
    return-void
.end method

.method private A09([BI)V
    .locals 2

    .line 64506
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Wj;->A03(I)V

    .line 64507
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 64508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    .line 64510
    return-void
.end method


# virtual methods
.method public final A0A()J
    .locals 2

    .line 64511
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    return-wide v0
.end method

.method public final A0B(Z)V
    .locals 0

    .line 64512
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A09:Z

    .line 64513
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wj;->flush()V

    .line 64514
    return-void
.end method

.method public final A4A(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 64515
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 64516
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A01:I

    if-ne v0, p2, :cond_0

    .line 64517
    const/4 v0, 0x0

    return v0

    .line 64518
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    .line 64519
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A01:I

    .line 64520
    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    .line 64521
    const/4 v0, 0x1

    return v0

    .line 64522
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AD;-><init>(III)V

    throw v0
.end method

.method public final A7D()Ljava/nio/ByteBuffer;
    .locals 2

    .line 64523
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    .line 64524
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    .line 64525
    return-object v1
.end method

.method public final A7E()I
    .locals 1

    .line 64526
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A01:I

    return v0
.end method

.method public final A7F()I
    .locals 1

    .line 64527
    const/4 v0, 0x2

    return v0
.end method

.method public final A7G()I
    .locals 1

    .line 64528
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    return v0
.end method

.method public final A8c()Z
    .locals 2

    .line 64529
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A09:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8h()Z
    .locals 2

    .line 64530
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0B:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADm()V
    .locals 6

    .line 64531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0B:Z

    .line 64532
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    if-lez v1, :cond_0

    .line 64533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Wj;->A09([BI)V

    .line 64534
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0A:Z

    if-nez v0, :cond_2

    .line 64535
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    div-int/2addr v5, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/Wj;->A0E:[Ljava/lang/String;

    const-string v1, "We9PvBsbdasK7tn9VyyhVUkeOk007ymd"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "bdBvwmZlOtVUMyUHuHiUMKijb9L0xmkD"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    .line 64536
    :cond_2
    return-void
.end method

.method public final ADn(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 64537
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64538
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A05:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 64539
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A07(Ljava/nio/ByteBuffer;)V

    .line 64540
    goto :goto_0

    .line 64541
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A05(Ljava/nio/ByteBuffer;)V

    .line 64542
    goto :goto_0

    .line 64543
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wj;->A06(Ljava/nio/ByteBuffer;)V

    .line 64544
    goto :goto_0

    .line 64545
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64546
    :cond_3
    return-void
.end method

.method public final flush()V
    .locals 3

    .line 64547
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wj;->A8c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64548
    const-wide/32 v0, 0x249f0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Wj;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    mul-int/2addr v1, v0

    .line 64549
    .local v0, "maybeSilenceBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    array-length v0, v0

    if-eq v0, v1, :cond_0

    .line 64550
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    .line 64551
    :cond_0
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Wj;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    .line 64552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    if-eq v1, v0, :cond_1

    .line 64553
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    .line 64554
    .end local v0    # "maybeSilenceBufferSize":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A05:I

    .line 64555
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A08:Ljava/nio/ByteBuffer;

    .line 64556
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0B:Z

    .line 64557
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A06:J

    .line 64558
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A02:I

    .line 64559
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0A:Z

    .line 64560
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 64561
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A09:Z

    .line 64562
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wj;->flush()V

    .line 64563
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A07:Ljava/nio/ByteBuffer;

    .line 64564
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A01:I

    .line 64565
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A04:I

    .line 64566
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wj;->A03:I

    .line 64567
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0C:[B

    .line 64568
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wj;->A0D:[B

    .line 64569
    return-void
.end method
