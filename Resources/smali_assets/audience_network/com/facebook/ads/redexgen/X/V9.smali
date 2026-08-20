.class public final Lcom/facebook/ads/redexgen/X/V9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Em;,
        Lcom/facebook/ads/redexgen/X/En;
    }
.end annotation


# static fields
.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A04:Lcom/facebook/ads/redexgen/X/Em;

.field public A05:Lcom/facebook/ads/redexgen/X/Em;

.field public A06:Lcom/facebook/ads/redexgen/X/Em;

.field public A07:Lcom/facebook/ads/redexgen/X/En;

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A0C:Lcom/facebook/ads/redexgen/X/El;

.field public final A0D:Lcom/facebook/ads/redexgen/X/GP;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58302
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J778k2tN1A71aNteuaiayf8W9Cwuw9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SddvXAFvjaaaNZPS5hBFE72C4u8NAkzU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DlS6L0Rs4yOHZbnixJzGuxf7gpgZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jQlCDwUBXdtP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ybgFHcAQFxf90xR6S9k4k72uXmSANsHZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TXMpPdQfareL1guTNfB0PsKfFvbJoTHv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R2X9ywuliv1XsGmKXBlkokivcnsZ5nAf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "17XTwjN4yTPZEt52JUGlNgZMXTvW6CfX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GP;)V
    .locals 4

    .line 58303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58304
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V9;->A0D:Lcom/facebook/ads/redexgen/X/GP;

    .line 58305
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GP;->A6v()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0A:I

    .line 58306
    new-instance v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/El;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    .line 58307
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ek;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0B:Lcom/facebook/ads/redexgen/X/Ek;

    .line 58308
    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    .line 58309
    iget v3, p0, Lcom/facebook/ads/redexgen/X/V9;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Em;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    .line 58310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    .line 58311
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    .line 58312
    return-void
.end method

.method private A00(I)I
    .locals 6

    .line 58313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A02:Z

    if-nez v0, :cond_0

    .line 58314
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0D:Lcom/facebook/ads/redexgen/X/GP;

    .line 58315
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GP;->A3M()Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/V9;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Em;-><init>(JI)V

    .line 58316
    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Em;->A02(Lcom/facebook/ads/redexgen/X/GO;Lcom/facebook/ads/redexgen/X/Em;)V

    .line 58317
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 5

    .line 58318
    if-nez p0, :cond_0

    .line 58319
    const/4 v0, 0x0

    return-object v0

    .line 58320
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const-string v1, "lOB1PW6jUN1Flr4ublIocLHYYSFUXZqB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 58321
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H(J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object p0

    .line 58322
    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(I)V
    .locals 5

    .line 58323
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    .line 58324
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 58325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    .line 58326
    :cond_0
    return-void
.end method

.method private A03(J)V
    .locals 3

    .line 58327
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    .line 58328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    goto :goto_0

    .line 58329
    :cond_0
    return-void
.end method

.method private A04(J)V
    .locals 5

    .line 58330
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 58331
    return-void

    .line 58332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 58333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V9;->A0D:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GP;->AE5(Lcom/facebook/ads/redexgen/X/GO;)V

    .line 58334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Em;->A01()Lcom/facebook/ads/redexgen/X/Em;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    goto :goto_0

    .line 58335
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Em;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 58336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    .line 58337
    :cond_2
    return-void
.end method

.method private A05(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 58338
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/V9;->A03(J)V

    .line 58339
    .local v0, "remaining":I
    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 58340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58341
    .local v1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    .line 58342
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/GO;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Em;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 58343
    sub-int/2addr p4, v2

    .line 58344
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 58345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 58346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    goto :goto_0

    .line 58347
    :cond_1
    return-void
.end method

.method private A06(J[BI)V
    .locals 5

    .line 58348
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/V9;->A03(J)V

    .line 58349
    move v3, p4

    .line 58350
    .local v0, "remaining":I
    :cond_0
    :goto_0
    if-lez v3, :cond_1

    .line 58351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 58352
    .local v1, "toCopy":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    .line 58353
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/GO;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    .line 58354
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Em;->A00(J)I

    move-result v1

    sub-int v0, p4, v3

    .line 58355
    invoke-static {v2, v1, p3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58356
    sub-int/2addr v3, v4

    .line 58357
    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 58358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    .line 58359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    goto :goto_0

    .line 58360
    :cond_1
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Wg;Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 18

    .line 58361
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    .line 58362
    .local v3, "offset":J
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 58363
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/V9;->A06(J[BI)V

    .line 58364
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 58365
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v9, 0x0

    aget-byte v3, v2, v9

    .line 58366
    .local v5, "signalByte":B
    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_7

    .line 58367
    .local v6, "subsampleEncryption":Z
    :goto_0
    and-int/lit8 v8, v3, 0x7f

    .line 58368
    .local v8, "ivSize":I
    move-object/from16 v7, p1

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/An;->A04:[B

    if-nez v2, :cond_0

    .line 58369
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v3, Lcom/facebook/ads/redexgen/X/An;->A04:[B

    .line 58370
    :cond_0
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/An;->A04:[B

    invoke-direct {v4, v0, v1, v2, v8}, Lcom/facebook/ads/redexgen/X/V9;->A06(J[BI)V

    .line 58371
    int-to-long v2, v8

    add-long/2addr v0, v2

    .line 58372
    if-eqz v5, :cond_6

    .line 58373
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 58374
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/V9;->A06(J[BI)V

    .line 58375
    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 58376
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v10

    .line 58377
    .local v9, "subsampleCount":I
    .restart local v9    # "subsampleCount":I
    :goto_1
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/An;->A06:[I

    .line 58378
    .local v10, "clearDataSizes":[I
    if-eqz v11, :cond_1

    array-length v2, v11

    if-ge v2, v10, :cond_2

    .line 58379
    :cond_1
    new-array v11, v10, [I

    .line 58380
    .end local v10    # "clearDataSizes":[I
    .local p1, "clearDataSizes":[I
    :cond_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/An;->A07:[I

    sget-object v3, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x1b

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x54

    if-eq v3, v2, :cond_a

    .line 58381
    .local v10, "encryptedDataSizes":[I
    sget-object v8, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const-string v3, "l74rmj1cvzMl"

    const/4 v2, 0x3

    aput-object v3, v8, v2

    if-eqz v12, :cond_3

    array-length v2, v12

    if-ge v2, v10, :cond_4

    .line 58382
    :cond_3
    new-array v12, v10, [I

    sget-object v3, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0xc

    if-eq v3, v2, :cond_5

    sget-object v8, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const-string v3, "mTjJh6O10GTQKtsNTzpZkGXCEgBidJyY"

    const/4 v2, 0x5

    aput-object v3, v8, v2

    .line 58383
    .end local v10    # "encryptedDataSizes":[I
    .local p2, "encryptedDataSizes":[I
    :cond_4
    :goto_2
    if-eqz v5, :cond_8

    .line 58384
    mul-int/lit8 v3, v10, 0x6

    .line 58385
    .local v10, "subsampleDataLength":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 58386
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/V9;->A06(J[BI)V

    .line 58387
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 58388
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 58389
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v3, v10, :cond_9

    .line 58390
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v2

    aput v2, v11, v3

    .line 58391
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/V9;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v2

    aput v2, v12, v3

    .line 58392
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const-string v3, "gGnYbSzqov18WRGS84osGLTli7oQ4"

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const-string v3, "bcZjTvBd8pDqGicoFFRFmeT3NfcxuZ"

    const/4 v2, 0x0

    aput-object v3, v8, v2

    goto :goto_2

    .line 58393
    .end local v9    # "subsampleCount":I
    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    .line 58394
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 58395
    :cond_8
    aput v9, v11, v9

    .line 58396
    iget v8, v6, Lcom/facebook/ads/redexgen/X/Ek;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sub-int/2addr v8, v4

    aput v8, v12, v9

    .line 58397
    :cond_9
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Ek;->A02:Lcom/facebook/ads/redexgen/X/Bg;

    .line 58398
    .local v7, "cryptoData":Lcom/facebook/ads/redexgen/X/Bg;
    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    iget-object v13, v4, Lcom/facebook/ads/redexgen/X/Bg;->A03:[B

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/An;->A04:[B

    iget v15, v4, Lcom/facebook/ads/redexgen/X/Bg;->A01:I

    iget v3, v4, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    iget v2, v4, Lcom/facebook/ads/redexgen/X/Bg;->A00:I

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/An;->A03(I[I[I[B[BIII)V

    .line 58399
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    .line 58400
    .local v11, "bytesRead":I
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    .line 58401
    iget v0, v6, Lcom/facebook/ads/redexgen/X/Ek;->A00:I

    sub-int/2addr v0, v4

    iput v0, v6, Lcom/facebook/ads/redexgen/X/Ek;->A00:I

    .line 58402
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Em;)V
    .locals 6

    .line 58403
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Em;->A02:Z

    if-nez v0, :cond_0

    .line 58404
    return-void

    .line 58405
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Em;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Em;->A04:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Em;->A04:J

    sub-long/2addr v4, v0

    long-to-int v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0A:I

    div-int/2addr v1, v0

    add-int/2addr v3, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_2

    .line 58406
    .local v0, "allocationCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const-string v1, "iejtrz5gn5ypfg4If5spWIciPKrb2ZMM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v2, v3, [Lcom/facebook/ads/redexgen/X/GO;

    .line 58407
    .local v1, "allocationsToRelease":[Lcom/facebook/ads/redexgen/X/GO;
    .local v2, "currentNode":Lcom/facebook/ads/redexgen/X/Em;
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 58408
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    aput-object v0, v2, v1

    .line 58409
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Em;->A01()Lcom/facebook/ads/redexgen/X/Em;

    move-result-object p1

    .line 58410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58411
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0D:Lcom/facebook/ads/redexgen/X/GP;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/GP;->AE6([Lcom/facebook/ads/redexgen/X/GO;)V

    .line 58412
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A09(Z)V
    .locals 4

    .line 58413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/El;->A0H(Z)V

    .line 58414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V9;->A08(Lcom/facebook/ads/redexgen/X/Em;)V

    .line 58415
    iget v3, p0, Lcom/facebook/ads/redexgen/X/V9;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Em;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    .line 58416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    .line 58417
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    .line 58418
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    .line 58419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0D:Lcom/facebook/ads/redexgen/X/GP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GP;->AFd()V

    .line 58420
    return-void
.end method


# virtual methods
.method public final A0A()I
    .locals 1

    .line 58421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A07()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 1

    .line 58422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A05()I

    move-result v0

    return v0
.end method

.method public final A0C()I
    .locals 1

    .line 58423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A06()I

    move-result v0

    return v0
.end method

.method public final A0D(JZZ)I
    .locals 1

    .line 58424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/El;->A08(JZZ)I

    move-result v0

    return v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;ZZJ)I
    .locals 10

    .line 58425
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/V9;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/V9;->A0B:Lcom/facebook/ads/redexgen/X/Ek;

    .line 58426
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/El;->A09(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;ZZLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Ek;)I

    move-result v2

    .line 58427
    .local v0, "result":I
    const/4 v1, -0x5

    if-eq v2, v1, :cond_6

    const/4 v4, -0x4

    if-eq v2, v4, :cond_1

    const/4 v0, -0x3

    if-ne v2, v0, :cond_0

    .line 58428
    return v0

    .line 58429
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 58430
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/V9;->A0F:[Ljava/lang/String;

    const-string v1, "3oC8GcXqxYNt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    .line 58431
    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    cmp-long v0, v1, p5

    if-gez v0, :cond_2

    .line 58432
    const/high16 v0, -0x80000000

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Ak;->A00(I)V

    .line 58433
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Wg;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0B:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/V9;->A07(Lcom/facebook/ads/redexgen/X/Wg;Lcom/facebook/ads/redexgen/X/Ek;)V

    .line 58435
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0B:Lcom/facebook/ads/redexgen/X/Ek;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ek;->A00:I

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Wg;->A09(I)V

    .line 58436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0B:Lcom/facebook/ads/redexgen/X/Ek;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Ek;->A01:J

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0B:Lcom/facebook/ads/redexgen/X/Ek;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ek;->A00:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/V9;->A05(JLjava/nio/ByteBuffer;I)V

    .line 58437
    :cond_4
    return v4

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58438
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 58439
    return v1
.end method

.method public final A0F()J
    .locals 2

    .line 58440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A0B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0G()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 1

    .line 58441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A0E()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 2

    .line 58442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A0A()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V9;->A04(J)V

    .line 58443
    return-void
.end method

.method public final A0I()V
    .locals 1

    .line 58444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/V9;->A09(Z)V

    .line 58445
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 58446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A0F()V

    .line 58447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A04:Lcom/facebook/ads/redexgen/X/Em;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A05:Lcom/facebook/ads/redexgen/X/Em;

    .line 58448
    return-void
.end method

.method public final A0K(JZZ)V
    .locals 2

    .line 58449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/El;->A0D(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/V9;->A04(J)V

    .line 58450
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/En;)V
    .locals 0

    .line 58451
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V9;->A07:Lcom/facebook/ads/redexgen/X/En;

    .line 58452
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 58453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->A0I()Z

    move-result v0

    return v0
.end method

.method public final A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 3

    .line 58454
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A00:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/V9;->A01(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .line 58455
    .local v0, "adjustedFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/El;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v1

    .line 58456
    .local v1, "formatChanged":Z
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V9;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 58457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A08:Z

    .line 58458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A07:Lcom/facebook/ads/redexgen/X/En;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 58459
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/En;->ACt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 58460
    :cond_0
    return-void
.end method

.method public final AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58461
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/V9;->A00(I)I

    move-result v4

    .line 58462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    .line 58463
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Em;->A00(J)I

    move-result v0

    .line 58464
    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/BW;->read([BII)I

    move-result v1

    .line 58465
    .local v0, "bytesAppended":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 58466
    if-eqz p3, :cond_0

    .line 58467
    return v0

    .line 58468
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 58469
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/V9;->A02(I)V

    .line 58470
    return v1
.end method

.method public final AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 5

    .line 58471
    :goto_0
    if-lez p2, :cond_0

    .line 58472
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/V9;->A00(I)I

    move-result v4

    .line 58473
    .local v0, "bytesAppended":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/GO;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V9;->A06:Lcom/facebook/ads/redexgen/X/Em;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    .line 58474
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Em;->A00(J)I

    move-result v0

    .line 58475
    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0c([BII)V

    .line 58476
    sub-int/2addr p2, v4

    .line 58477
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/V9;->A02(I)V

    .line 58478
    .end local v0    # "bytesAppended":I
    goto :goto_0

    .line 58479
    :cond_0
    return-void
.end method

.method public final AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V
    .locals 10

    .line 58480
    move-wide v3, p1

    move-object v2, p0

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/V9;->A08:Z

    if-eqz v0, :cond_0

    .line 58481
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/V9;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/V9;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 58482
    :cond_0
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/V9;->A09:Z

    move v5, p3

    if-eqz v0, :cond_3

    .line 58483
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/El;->A0J(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58484
    :cond_1
    return-void

    .line 58485
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/V9;->A09:Z

    .line 58486
    :cond_3
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/V9;->A00:J

    add-long/2addr v3, v0

    .line 58487
    .end local p7
    .local v1, "timeUs":J
    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/V9;->A01:J

    move v8, p4

    int-to-long v0, v8

    sub-long/2addr v6, v0

    int-to-long v0, p5

    sub-long/2addr v6, v0

    .line 58488
    .local p4, "absoluteOffset":J
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/V9;->A0C:Lcom/facebook/ads/redexgen/X/El;

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/El;->A0G(JIJILcom/facebook/ads/redexgen/X/Bg;)V

    .line 58489
    return-void
.end method
