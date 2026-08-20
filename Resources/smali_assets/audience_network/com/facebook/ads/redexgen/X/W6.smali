.class public final Lcom/facebook/ads/redexgen/X/W6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;
.implements Lcom/facebook/ads/redexgen/X/Be;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/CB;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/BY;

.field public static final A0M:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:Lcom/facebook/ads/redexgen/X/BX;

.field public A0A:Lcom/facebook/ads/redexgen/X/Hc;

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/CB;

.field public A0D:[[J

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0I:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/WE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 61308
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NMENm2VVY4CjFU7qkzTmTxviYk7AnS7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JBVFfjWytxpjUnZZ6lInsU7tzfFzOPaX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YaevPinMBRqhVFzNm59vwI8bFO4cI8AD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "52TqclTutshaaFkrwJ4nyJTeA2xWvRpu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JGseDZtum4mqdbq3nSxMUnsGXrSMUYmk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xuKwDkc3QqvJvTm3i1k9vAbPWWVSjov2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2GdyUNwnHd6eSNq3THJOdF5Wjs3u7UdX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VVA8bJ0ju0kVaqoWpNH4VPWsYewebzZE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W6;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/W7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W7;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/W6;->A0L:Lcom/facebook/ads/redexgen/X/BY;

    .line 61309
    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/W6;->A0M:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W6;-><init>(I)V

    .line 61311
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 61312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61313
    iput p1, p0, Lcom/facebook/ads/redexgen/X/W6;->A0E:I

    .line 61314
    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61315
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    .line 61316
    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0H:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61317
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0G:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61318
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    .line 61319
    return-void
.end method

.method private A00(J)I
    .locals 19

    .line 61320
    move-object/from16 v7, p0

    const-wide v17, 0x7fffffffffffffffL

    .line 61321
    .local v1, "preferredSkipAmount":J
    const/4 v6, 0x1

    .line 61322
    .local v3, "preferredRequiresReload":Z
    const/16 v16, -0x1

    .line 61323
    .local v4, "preferredTrackIndex":I
    const-wide v14, 0x7fffffffffffffffL

    .line 61324
    .local v5, "preferredAccumulatedBytes":J
    const-wide v12, 0x7fffffffffffffffL

    .line 61325
    .local v7, "minAccumulatedBytes":J
    const/4 v11, 0x1

    .line 61326
    .local v9, "minAccumulatedBytesRequiresReload":Z
    const/4 v10, -0x1

    .line 61327
    .local v10, "minAccumulatedBytesTrackIndex":I
    const/4 v5, 0x0

    .local v11, "trackIndex":I
    :goto_0
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    array-length v0, v1

    if-ge v5, v0, :cond_8

    .line 61328
    aget-object v1, v1, v5

    .line 61329
    .local v12, "track":Lcom/facebook/ads/redexgen/X/CB;
    iget v3, v1, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    .line 61330
    .local v13, "sampleIndex":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    if-ne v3, v0, :cond_1

    .line 61331
    .end local v12    # "track":Lcom/facebook/ads/redexgen/X/CB;
    .end local v13    # "sampleIndex":I
    .end local v14
    .end local v15
    .end local v17
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/W6;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61332
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A06:[J

    aget-wide v8, v0, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    .line 61333
    .local v15, "sampleOffset":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "SNUxNBsUQVazn7VwiZNUPsjETt3vlrb9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/W6;->A0D:[[J

    aget-object v0, v0, v5

    aget-wide v3, v0, v3

    .line 61334
    .local v17, "sampleAccumulatedBytes":J
    sub-long v8, v8, p1

    .line 61335
    .local p0, "skipAmount":J
    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-ltz v0, :cond_2

    const-wide/32 v1, 0x40000

    cmp-long v0, v8, v1

    if-ltz v0, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 61336
    .local v14, "requiresReload":Z
    :goto_2
    if-nez v1, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-ne v1, v6, :cond_5

    cmp-long v0, v8, v17

    if-gez v0, :cond_5

    .line 61337
    :cond_4
    move v6, v1

    .line 61338
    move-wide/from16 v17, v8

    .line 61339
    move/from16 v16, v5

    .line 61340
    move-wide v14, v3

    .line 61341
    :cond_5
    cmp-long v0, v3, v12

    if-gez v0, :cond_0

    .line 61342
    move-wide v12, v3

    .line 61343
    move v11, v1

    .line 61344
    move v10, v5

    goto :goto_1

    .line 61345
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61346
    .end local v11    # "trackIndex":I
    :cond_8
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v12, v1

    if-eqz v0, :cond_9

    if-eqz v11, :cond_9

    const-wide/32 v1, 0xa00000

    add-long/2addr v1, v12

    cmp-long v0, v14, v1

    if-gez v0, :cond_a

    .line 61347
    :cond_9
    :goto_3
    return v16

    .line 61348
    :cond_a
    move/from16 v16, v10

    goto :goto_3
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61349
    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v4

    .line 61350
    .local v2, "inputPosition":J
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 61351
    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/redexgen/X/W6;->A00(J)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    .line 61352
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    if-ne v0, v1, :cond_0

    .line 61353
    return v1

    .line 61354
    :cond_0
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    aget-object v2, v1, v0

    .line 61355
    .local v4, "track":Lcom/facebook/ads/redexgen/X/CB;
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/CB;->A01:Lcom/facebook/ads/redexgen/X/Bh;

    .line 61356
    .local v13, "trackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    iget v9, v2, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    .line 61357
    .local v14, "sampleIndex":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A06:[J

    aget-wide v6, v0, v9

    .line 61358
    .local v11, "position":J
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A05:[I

    aget v8, v0, v9

    .line 61359
    .local v6, "sampleSize":I
    sub-long v0, v6, v4

    iget v4, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 61360
    .local v7, "skipAmount":J
    const-wide/16 v11, 0x0

    const/4 v5, 0x1

    cmp-long v4, v0, v11

    if-ltz v4, :cond_1

    const-wide/32 v11, 0x40000

    cmp-long v4, v0, v11

    if-ltz v4, :cond_2

    .line 61361
    .end local v2    # "inputPosition":J
    .end local v11    # "position":J
    .restart local v18
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/Bc;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Bc;
    .local v9, "position":J
    :cond_1
    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 61362
    const/4 v0, 0x1

    return v0

    .line 61363
    :cond_2
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/CB;->A02:Lcom/facebook/ads/redexgen/X/CH;

    iget v4, v4, Lcom/facebook/ads/redexgen/X/CH;->A02:I

    if-ne v4, v5, :cond_3

    .line 61364
    const-wide/16 v6, 0x8

    add-long/2addr v0, v6

    .line 61365
    add-int/lit8 v8, v8, -0x8

    .line 61366
    .end local v7    # "skipAmount":J
    .local v9, "skipAmount":J
    :cond_3
    long-to-int v4, v0

    invoke-interface {v10, v4}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 61367
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CB;->A02:Lcom/facebook/ads/redexgen/X/CH;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v4, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "Kr0RNkXRcq3MKFcdyeDViEL730qvS1Or"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "dsHpYadjIesMKkl8nKWo5Xy2zI1EHMvq"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/4 v4, 0x0

    if-eqz v6, :cond_5

    .line 61368
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A0G:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 61369
    .local v7, "nalLengthData":[B
    aput-byte v4, v1, v4

    .line 61370
    aput-byte v4, v1, v5

    .line 61371
    const/4 v0, 0x2

    aput-byte v4, v1, v0

    .line 61372
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CB;->A02:Lcom/facebook/ads/redexgen/X/CH;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    .line 61373
    .local v5, "nalUnitLengthFieldLength":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CB;->A02:Lcom/facebook/ads/redexgen/X/CH;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CH;->A01:I

    rsub-int/lit8 v4, v0, 0x4

    .line 61374
    .local v15, "nalUnitLengthFieldLengthDiff":I
    :goto_0
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    if-ge v0, v8, :cond_7

    .line 61375
    iget v1, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    if-nez v1, :cond_4

    .line 61376
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A0G:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {v10, v0, v4, v5}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 61377
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A0G:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v1, 0x0

    .end local v2
    .local v18, "inputPosition":J
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61378
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A0G:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    .line 61379
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A0H:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61380
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A0H:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v1, 0x4

    invoke-interface {v13, v0, v1}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 61381
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    .line 61382
    add-int/2addr v8, v4

    goto :goto_0

    .line 61383
    .end local v18    # "inputPosition":J
    .restart local v2    # "inputPosition":J
    .end local v2    # "inputPosition":J
    .restart local v18    # "inputPosition":J
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I

    move-result v1

    .line 61384
    .local v8, "writtenBytes":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    .line 61385
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    .line 61386
    .end local v8    # "writtenBytes":I
    goto :goto_0

    .line 61387
    .end local v2
    .restart local v18    # "inputPosition":J
    :cond_5
    :goto_1
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    if-ge v0, v8, :cond_6

    .line 61388
    sub-int v1, v8, v0

    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I

    move-result v1

    .line 61389
    .local v2, "writtenBytes":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    .line 61390
    iget v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    .line 61391
    .end local v2    # "writtenBytes":I
    goto :goto_1

    .line 61392
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 61393
    .end local v18    # "inputPosition":J
    .restart local v2    # "writtenBytes":I
    .end local v2    # "writtenBytes":I
    .end local v5    # "nalUnitLengthFieldLength":I
    .end local v7    # "nalLengthData":[B
    .end local v15    # "nalUnitLengthFieldLengthDiff":I
    .restart local v18    # "inputPosition":J
    :cond_7
    const/4 v0, 0x0

    .line 61394
    .end local v6    # "sampleSize":I
    .local v2, "sampleSize":I
    :goto_2
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    sget-object v5, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v4, v5, v1

    const/4 v1, 0x1

    aget-object v5, v5, v1

    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v4, v1, :cond_8

    sget-object v5, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v4, "rOKgrdqhHdXOkXubOIefZGVtdh7cvyNY"

    const/4 v1, 0x6

    aput-object v4, v5, v1

    aget-wide v14, v6, v9

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CK;->A04:[I

    aget v16, v1, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    .end local v9    # "skipAmount":J
    .local p0, "skipAmount":J
    .end local v11
    .local p2, "position":J
    move/from16 v17, v8

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 61395
    iget v4, v2, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    const/4 v1, 0x0

    add-int/2addr v4, v1

    iput v4, v2, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    .line 61396
    const/4 v1, -0x1

    iput v1, v3, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    .line 61397
    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    .line 61398
    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    .line 61399
    return v0

    :cond_8
    sget-object v5, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v4, "wHchi0wLq1ErSeSpKTFcZRDvkUCQV0RS"

    const/4 v1, 0x6

    aput-object v4, v5, v1

    aget-wide v14, v6, v9

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CK;->A04:[I

    aget v16, v1, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    .end local v9
    .local p0, "skipAmount":J
    .end local v11
    .local p2, "position":J
    move/from16 v17, v8

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 61400
    iget v4, v2, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    const/4 v1, 0x1

    add-int/2addr v4, v1

    iput v4, v2, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    .line 61401
    const/4 v1, -0x1

    iput v1, v3, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    .line 61402
    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    .line 61403
    iput v0, v3, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    .line 61404
    return v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/CK;J)I
    .locals 2

    .line 61405
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CK;->A00(J)I

    move-result v1

    .line 61406
    .local v0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 61407
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CK;->A01(J)I

    move-result v1

    .line 61408
    :cond_0
    return v1
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/CK;JJ)J
    .locals 2

    .line 61409
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W6;->A02(Lcom/facebook/ads/redexgen/X/CK;J)I

    move-result v1

    .line 61410
    .local v0, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 61411
    return-wide p3

    .line 61412
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CK;->A06:[J

    aget-wide v0, v0, v1

    .line 61413
    .local p0, "sampleOffset":J
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "p3vbyKglgBhvg6ga7RihuDYjPakbSwaT"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    const-string v1, "aiiDKqFmbgCXZZv8uVJN0mXFbRvDRlE6"

    const/4 v0, 0x3

    aput-object v1, p0, v0

    return-wide p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/BZ;Z)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/WE;",
            "Lcom/facebook/ads/redexgen/X/BZ;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/CK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61415
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 61416
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WE;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/WE;

    .line 61417
    .local v2, "atom":Lcom/facebook/ads/redexgen/X/WE;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1M:I

    if-eq v1, v0, :cond_0

    .line 61418
    .end local v2    # "atom":Lcom/facebook/ads/redexgen/X/WE;
    .end local v3
    .end local v4
    .end local v5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61419
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0o:I

    .line 61420
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/W6;->A0B:Z

    .line 61421
    move v10, p3

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/C1;->A0C(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/WD;JLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/CH;

    move-result-object v4

    .line 61422
    .local v3, "track":Lcom/facebook/ads/redexgen/X/CH;
    if-nez v4, :cond_1

    goto :goto_1

    .line 61423
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0e:I

    .line 61424
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/WE;->A06(I)Lcom/facebook/ads/redexgen/X/WE;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0i:I

    .line 61425
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A06(I)Lcom/facebook/ads/redexgen/X/WE;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A17:I

    .line 61426
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WE;->A06(I)Lcom/facebook/ads/redexgen/X/WE;

    move-result-object v0

    .line 61427
    .local v4, "stblAtom":Lcom/facebook/ads/redexgen/X/WE;
    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/C1;->A0E(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/BZ;)Lcom/facebook/ads/redexgen/X/CK;

    move-result-object v1

    .line 61428
    .local v5, "trackSampleTable":Lcom/facebook/ads/redexgen/X/CK;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 61429
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61430
    .end local v1    # "i":I
    :cond_3
    return-object v3
.end method

.method private A06()V
    .locals 1

    .line 61431
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    .line 61432
    iput v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    .line 61433
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W6;->A0J:[B

    return-void

    :array_0
    .array-data 1
        0x6bt
        0x5et
        0x45t
        0x47t
        0xat
        0x59t
        0x43t
        0x50t
        0x4ft
        0xat
        0x46t
        0x4ft
        0x59t
        0x59t
        0xat
        0x5et
        0x42t
        0x4bt
        0x44t
        0xat
        0x42t
        0x4ft
        0x4bt
        0x4et
        0x4ft
        0x58t
        0xat
        0x46t
        0x4ft
        0x44t
        0x4dt
        0x5et
        0x42t
        0xat
        0x2t
        0x5ft
        0x44t
        0x59t
        0x5ft
        0x5at
        0x5at
        0x45t
        0x58t
        0x5et
        0x4ft
        0x4et
        0x3t
        0x4t
        0x68t
        0x6dt
        0x39t
        0x39t
    .end array-data
.end method

.method private A08(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "xKK31fned0mjTVppOAxzoNj9viNrlryO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3HkC7zoZl6jjTlZPcBHC3lXiUTtQlSXh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/WE;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 61435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/WE;

    .line 61436
    .local v0, "containerAtom":Lcom/facebook/ads/redexgen/X/WE;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bw;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0k:I

    if-ne v1, v0, :cond_1

    .line 61437
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/W6;->A0A(Lcom/facebook/ads/redexgen/X/WE;)V

    .line 61438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 61439
    iput v3, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    goto :goto_0

    .line 61440
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/WE;->A08(Lcom/facebook/ads/redexgen/X/WE;)V

    goto :goto_0

    .line 61442
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    if-eq v0, v3, :cond_3

    .line 61443
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W6;->A06()V

    .line 61444
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(J)V
    .locals 7

    .line 61445
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v5, v3

    .line 61446
    .local v3, "track":Lcom/facebook/ads/redexgen/X/CB;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    .line 61447
    .local v4, "sampleTable":Lcom/facebook/ads/redexgen/X/CK;
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/CK;->A00(J)I

    move-result v1

    .line 61448
    .local v5, "sampleIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 61449
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/CK;->A01(J)I

    move-result v1

    .line 61450
    :cond_0
    iput v1, v6, Lcom/facebook/ads/redexgen/X/CB;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_1

    .line 61451
    .end local v3    # "track":Lcom/facebook/ads/redexgen/X/CB;
    .end local v4    # "sampleTable":Lcom/facebook/ads/redexgen/X/CK;
    .end local v5    # "sampleIndex":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "MNnvCsSYuz9FkO9KQczdYnABN7zTLwyu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "oflUn1lXrJVPIzwz3GYNJmaWxDOTuoWv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61452
    :cond_2
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/WE;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 61453
    move-object/from16 v5, p0

    const/4 v12, -0x1

    .line 61454
    .local v3, "firstVideoTrackIndex":I
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 61455
    .local v4, "durationUs":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 61456
    .local v6, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Mp4Extractor$Mp4Track;>;"
    const/4 v11, 0x0

    .line 61457
    .local v0, "metadata":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    new-instance v8, Lcom/facebook/ads/redexgen/X/BZ;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/BZ;-><init>()V

    .line 61458
    .local v7, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/BZ;
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1Q:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/WE;->A07(I)Lcom/facebook/ads/redexgen/X/WD;

    move-result-object v1

    .line 61459
    .local v8, "udta":Lcom/facebook/ads/redexgen/X/WD;
    if-eqz v1, :cond_0

    .line 61460
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/C1;->A0F(Lcom/facebook/ads/redexgen/X/WD;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v11

    .line 61461
    if-eqz v11, :cond_0

    .line 61462
    invoke-virtual {v8, v11}, Lcom/facebook/ads/redexgen/X/BZ;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z

    .line 61463
    .end local v0    # "metadata":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .local v9, "metadata":Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    :cond_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A0E:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 61464
    .local v11, "ignoreEditLists":Z
    :goto_0
    :try_start_0
    invoke-direct {v5, v2, v8, v0}, Lcom/facebook/ads/redexgen/X/W6;->A05(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/BZ;Z)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/WA; {:try_start_0 .. :try_end_0} :catch_0

    .line 61465
    .end local v0
    .local v0, "e":Lcom/facebook/ads/redexgen/X/WA;
    :catch_0
    new-instance v8, Lcom/facebook/ads/redexgen/X/BZ;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/BZ;-><init>()V

    .line 61466
    invoke-direct {v5, v2, v8, v1}, Lcom/facebook/ads/redexgen/X/W6;->A05(Lcom/facebook/ads/redexgen/X/WE;Lcom/facebook/ads/redexgen/X/BZ;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 61467
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 61468
    .local v12, "trackCount":I
    const/4 v6, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 61469
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/CK;

    .line 61470
    .local v14, "trackSampleTable":Lcom/facebook/ads/redexgen/X/CK;
    iget-object v13, v15, Lcom/facebook/ads/redexgen/X/CK;->A03:Lcom/facebook/ads/redexgen/X/CH;

    .line 61471
    .local v15, "track":Lcom/facebook/ads/redexgen/X/CH;
    .end local v0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    .local v16, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/W6;->A09:Lcom/facebook/ads/redexgen/X/BX;

    iget v0, v13, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    .line 61472
    invoke-interface {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/CB;

    invoke-direct {v2, v13, v15, v0}, Lcom/facebook/ads/redexgen/X/CB;-><init>(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CK;Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 61473
    .local v0, "mp4Track":Lcom/facebook/ads/redexgen/X/CB;
    iget v0, v15, Lcom/facebook/ads/redexgen/X/CK;->A00:I

    add-int/lit8 v1, v0, 0x1e

    .line 61474
    .local v2, "maxInputSize":I
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/CH;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    .line 61475
    .local v10, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .end local v2    # "maxInputSize":I
    .local v17, "maxInputSize":I
    iget v14, v13, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    const/4 v0, 0x1

    .end local v8    # "udta":Lcom/facebook/ads/redexgen/X/WD;
    .local p0, "udta":Lcom/facebook/ads/redexgen/X/WD;
    if-ne v14, v0, :cond_3

    .line 61476
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/BZ;->A03()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61477
    iget v14, v8, Lcom/facebook/ads/redexgen/X/BZ;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/BZ;->A01:I

    .line 61478
    invoke-virtual {v1, v14, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G(II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    .line 61479
    :cond_2
    if-eqz v11, :cond_3

    .line 61480
    invoke-virtual {v1, v11}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    .line 61481
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CB;->A01:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 61482
    .end local v7    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/BZ;
    .local v2, "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/BZ;
    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/CH;->A04:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v0, v16

    if-eqz v14, :cond_5

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/CH;->A04:J

    .line 61483
    :goto_3
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 61484
    iget v1, v13, Lcom/facebook/ads/redexgen/X/CH;->A03:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    const/4 v0, -0x1

    if-ne v12, v0, :cond_4

    .line 61485
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .line 61486
    :cond_4
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61487
    .end local v0    # "mp4Track":Lcom/facebook/ads/redexgen/X/CB;
    .end local v10    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .end local v14    # "trackSampleTable":Lcom/facebook/ads/redexgen/X/CK;
    .end local v15    # "track":Lcom/facebook/ads/redexgen/X/CH;
    .end local v17    # "maxInputSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 61488
    :cond_5
    iget-wide v0, v15, Lcom/facebook/ads/redexgen/X/CK;->A02:J

    goto :goto_3

    .line 61489
    .end local v2    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/BZ;
    .end local v16    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    .end local p0    # "udta":Lcom/facebook/ads/redexgen/X/WD;
    .local v0, "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    .restart local v7    # "gaplessInfoHolder":Lcom/facebook/ads/redexgen/X/BZ;
    .restart local v8    # "udta":Lcom/facebook/ads/redexgen/X/WD;
    .end local v0    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    .end local v13    # "i":I
    .restart local v16    # "trackSampleTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/TrackSampleTable;>;"
    :cond_6
    iput v12, v5, Lcom/facebook/ads/redexgen/X/W6;->A02:I

    .line 61490
    iput-wide v3, v5, Lcom/facebook/ads/redexgen/X/W6;->A08:J

    .line 61491
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/CB;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/CB;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    .line 61492
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W6;->A0G([Lcom/facebook/ads/redexgen/X/CB;)[[J

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A0D:[[J

    .line 61493
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A09:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 61494
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/W6;->A09:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 61495
    return-void
.end method

.method public static A0B(I)Z
    .locals 1

    .line 61496
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0k:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0e:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0i:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A17:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0O:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0C(I)Z
    .locals 4

    .line 61497
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0o:I

    if-eq p0, v0, :cond_0

    sget v3, Lcom/facebook/ads/redexgen/X/Bw;->A0W:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "Lbfp0NvNFR61AEm901fhAiQEZdUAojSN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1E:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1C:I

    if-eq p0, v0, :cond_0

    sget v3, Lcom/facebook/ads/redexgen/X/Bw;->A0D:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "AcWpjtb96ZMDu8ZbPmw7y3S9ldwHNTMG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "liNDCAzQcSMqwn5YpITrjlM20opaDBZf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    :goto_0
    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0P:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1A:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1D:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1F:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A18:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0C:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1K:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0V:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A1Q:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "Et4fiiNPrE1ktHaAFcacRxoSMiMckR7G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61498
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 61499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/BW;->ADu([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61500
    return v4

    .line 61501
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    .line 61502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    .line 61504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:I

    .line 61505
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_8

    .line 61506
    const/16 v1, 0x8

    .line 61507
    .local v0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 61508
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    .line 61509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    .line 61510
    .end local v0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_c

    .line 61511
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W6;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61512
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    add-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 61513
    .local v0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/WE;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/WE;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 61514
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    int-to-long v1, v0

    cmp-long v0, v6, v1

    if-nez v0, :cond_3

    .line 61515
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/W6;->A08(J)V

    .line 61516
    :goto_1
    return v5

    .line 61517
    :cond_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W6;->A06()V

    goto :goto_1

    .line 61518
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W6;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61519
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 61520
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 61521
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0F:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61523
    iput v5, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    goto :goto_1

    .line 61524
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 61525
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 61526
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    .line 61527
    iput v5, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    goto :goto_1

    .line 61528
    :cond_8
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 61529
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v2

    .line 61530
    .local v4, "endPosition":J
    const-wide/16 v9, -0x1

    cmp-long v0, v2, v9

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 61531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "Y6YGZv93ZuaTG8VKRMqoKTcHxa4CyU5s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "FFKbnBThmWx8ffVkKuWdFuDu950VBi9q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/WE;

    iget-wide v2, v3, Lcom/facebook/ads/redexgen/X/WE;->A00:J

    .line 61532
    :cond_a
    cmp-long v8, v2, v9

    sget-object v7, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v7, v0

    const/4 v0, 0x1

    aget-object v7, v7, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v7, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "ugTmpqu3zmSn1kJoBPr5aOxqvcpaMzJE"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "H3dhpZSJ1Chdl4exfdGGuKA1AJd0x5s1"

    const/4 v0, 0x4

    aput-object v1, v7, v0

    if-eqz v8, :cond_2

    .line 61533
    :goto_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    goto/16 :goto_0

    :cond_b
    sget-object v7, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "kSEId9swLLOilCfe7rS6ohoMdmP2xe9n"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const-string v1, "aRADAydnlpBl2XluL5U3tUuHw5s08YEm"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-eqz v8, :cond_2

    goto :goto_4

    .line 61534
    :cond_c
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61535
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/W6;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 61536
    .local v0, "atomPayloadSize":J
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 61537
    .local v2, "atomEndPosition":J
    const/4 v8, 0x0

    .line 61538
    .local v4, "seekRequired":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    if-eqz v0, :cond_3

    .line 61539
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 61540
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Bw;->A0V:I

    if-ne v1, v0, :cond_2

    .line 61541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W6;->A0F(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0B:Z

    .line 61542
    :cond_0
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/W6;->A08(J)V

    .line 61543
    if-eqz v8, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 61544
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/WE;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/W6;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(ILcom/facebook/ads/redexgen/X/Hc;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/WE;->A09(Lcom/facebook/ads/redexgen/X/WD;)V

    goto :goto_0

    .line 61546
    :cond_3
    const-wide/32 v6, 0x40000

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 61547
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    goto :goto_0

    .line 61548
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 61549
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Hc;)Z
    .locals 5

    .line 61550
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61551
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    .line 61552
    .local v0, "majorBrand":I
    sget v0, Lcom/facebook/ads/redexgen/X/W6;->A0M:I

    const/4 v4, 0x1

    if-ne v1, v0, :cond_0

    .line 61553
    return v4

    .line 61554
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 61555
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "HZNBHqeXKlwJLRyY4R1ZazClo3jLxgS8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ULnGw1bPzwMM6OF7GcjqoSbIBNnkFp5Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-lez v3, :cond_3

    .line 61556
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/W6;->A0M:I

    if-ne v1, v0, :cond_1

    .line 61557
    return v4

    .line 61558
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static A0G([Lcom/facebook/ads/redexgen/X/CB;)[[J
    .locals 14

    .line 61559
    array-length v0, p0

    new-array v6, v0, [[J

    .line 61560
    .local v0, "accumulatedSampleSizes":[[J
    array-length v0, p0

    new-array v5, v0, [I

    .line 61561
    .local v1, "nextSampleIndex":[I
    array-length v0, p0

    new-array v4, v0, [J

    .line 61562
    .local v2, "nextSampleTimesUs":[J
    array-length v0, p0

    new-array v3, v0, [Z

    .line 61563
    .local v3, "tracksFinished":[Z
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 61564
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v2

    .line 61565
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    aput-wide v0, v4, v2

    .line 61566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61567
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v12, 0x0

    .line 61568
    .local v4, "accumulatedSampleSize":J
    const/4 v2, 0x0

    .line 61569
    .local v6, "finishedTracks":I
    :goto_1
    array-length v8, p0

    sget-object v7, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v7, v0

    const/4 v0, 0x1

    aget-object v7, v7, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/W6;->A0K:[Ljava/lang/String;

    const-string v1, "yJ2jD62HfH2jQTY3DSfm8DixkPqWTM6R"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const-string v1, "ERCQlGdy7dAXpXma9fK0CLCiAFSx2az3"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-ge v2, v8, :cond_5

    .line 61570
    const-wide v10, 0x7fffffffffffffffL

    .line 61571
    .local v7, "minTimeUs":J
    const/4 v9, -0x1

    .line 61572
    .local v9, "minTimeTrackIndex":I
    const/4 v1, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_3

    .line 61573
    aget-boolean v0, v3, v1

    if-nez v0, :cond_2

    aget-wide v7, v4, v1

    cmp-long v0, v7, v10

    if-gtz v0, :cond_2

    .line 61574
    move v9, v1

    .line 61575
    aget-wide v10, v4, v1

    .line 61576
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61577
    .end local v10    # "i":I
    :cond_3
    aget v7, v5, v9

    .line 61578
    .local v10, "trackSampleIndex":I
    aget-object v0, v6, v9

    aput-wide v12, v0, v7

    .line 61579
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A05:[I

    aget v0, v0, v7

    int-to-long v0, v0

    add-long/2addr v12, v0

    .line 61580
    const/4 v1, 0x1

    add-int/2addr v7, v1

    aput v7, v5, v9

    .line 61581
    aget-object v0, v6, v9

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 61582
    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    aget-wide v0, v0, v7

    aput-wide v0, v4, v9

    goto :goto_1

    .line 61583
    :cond_4
    aput-boolean v1, v3, v9

    .line 61584
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61585
    :cond_5
    return-object v6
.end method


# virtual methods
.method public final A6Y()J
    .locals 2

    .line 61586
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A08:J

    return-wide v0
.end method

.method public final A7a(J)Lcom/facebook/ads/redexgen/X/Bd;
    .locals 15

    .line 61587
    move-object v11, p0

    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    array-length v0, v1

    if-nez v0, :cond_0

    .line 61588
    sget-object v1, Lcom/facebook/ads/redexgen/X/Bf;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0

    .line 61589
    :cond_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 61590
    .local v4, "secondTimeUs":J
    const-wide/16 v3, -0x1

    .line 61591
    .local v6, "secondOffset":J
    iget v0, v11, Lcom/facebook/ads/redexgen/X/W6;->A02:I

    const/4 v14, -0x1

    move-wide/from16 v9, p1

    if-eq v0, v14, :cond_1

    .line 61592
    aget-object v0, v1, v0

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    .line 61593
    .local v3, "sampleTable":Lcom/facebook/ads/redexgen/X/CK;
    invoke-static {v13, v9, v10}, Lcom/facebook/ads/redexgen/X/W6;->A02(Lcom/facebook/ads/redexgen/X/CK;J)I

    move-result v12

    .line 61594
    .local v8, "sampleIndex":I
    if-ne v12, v14, :cond_2

    .line 61595
    sget-object v1, Lcom/facebook/ads/redexgen/X/Bf;->A03:Lcom/facebook/ads/redexgen/X/Bf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0

    .line 61596
    .end local v13
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/W6;
    :cond_1
    move-wide v0, v9

    .line 61597
    .restart local v13
    const-wide v7, 0x7fffffffffffffffL

    goto :goto_0

    .line 61598
    :cond_2
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    aget-wide v0, v0, v12

    .line 61599
    .local v11, "sampleTimeUs":J
    .local v13, "firstTimeUs":J
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/CK;->A06:[J

    aget-wide v7, v2, v12

    .line 61600
    .local p0, "firstOffset":J
    cmp-long v2, v0, v9

    if-gez v2, :cond_3

    iget v2, v13, Lcom/facebook/ads/redexgen/X/CK;->A01:I

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_3

    .line 61601
    invoke-virtual {v13, v9, v10}, Lcom/facebook/ads/redexgen/X/CK;->A01(J)I

    move-result v9

    .line 61602
    .local v10, "secondSampleIndex":I
    if-eq v9, v14, :cond_3

    if-eq v9, v12, :cond_3

    .line 61603
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/CK;->A07:[J

    aget-wide v5, v2, v9

    .line 61604
    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/CK;->A06:[J

    aget-wide v3, v2, v9

    .line 61605
    .restart local p0    # "firstOffset":J
    :cond_3
    :goto_0
    const/4 v10, 0x0

    .end local p0    # "firstOffset":J
    .local v3, "i":I
    .local v6, "firstOffset":J
    .local v8, "secondOffset":J
    :goto_1
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    array-length v2, v9

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v2, :cond_5

    .line 61606
    iget v2, v11, Lcom/facebook/ads/redexgen/X/W6;->A02:I

    if-eq v10, v2, :cond_4

    .line 61607
    aget-object v2, v9, v10

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/CB;->A03:Lcom/facebook/ads/redexgen/X/CK;

    .line 61608
    .local v10, "sampleTable":Lcom/facebook/ads/redexgen/X/CK;
    invoke-static {v9, v0, v1, v7, v8}, Lcom/facebook/ads/redexgen/X/W6;->A03(Lcom/facebook/ads/redexgen/X/CK;JJ)J

    move-result-wide v7

    .line 61609
    cmp-long v2, v5, v12

    if-eqz v2, :cond_4

    .line 61610
    invoke-static {v9, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/W6;->A03(Lcom/facebook/ads/redexgen/X/CK;JJ)J

    move-result-wide v3

    .line 61611
    .end local v10    # "sampleTable":Lcom/facebook/ads/redexgen/X/CK;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 61612
    .end local v3    # "i":I
    :cond_5
    new-instance v2, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v2, v0, v1, v7, v8}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    .line 61613
    .local v3, "firstSeekPoint":Lcom/facebook/ads/redexgen/X/Bf;
    cmp-long v0, v5, v12

    if-nez v0, :cond_6

    .line 61614
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0

    .line 61615
    :cond_6
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    .line 61616
    .local v10, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/Bf;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0
.end method

.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 0

    .line 61617
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W6;->A09:Lcom/facebook/ads/redexgen/X/BX;

    .line 61618
    return-void
.end method

.method public final A8v()Z
    .locals 1

    .line 61619
    const/4 v0, 0x1

    return v0
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61620
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/W6;->A03:I

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_1

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    .line 61621
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W6;->A01(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I

    move-result v0

    return v0

    .line 61622
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/W6;->A0E(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61623
    return v1

    .line 61624
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W6;->A0D(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61625
    const/4 v0, -0x1

    return v0

    .line 61626
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final AEc(JJ)V
    .locals 3

    .line 61627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 61628
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:I

    .line 61629
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A06:I

    .line 61630
    iput v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A04:I

    .line 61631
    iput v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A05:I

    .line 61632
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 61633
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/W6;->A06()V

    .line 61634
    :cond_0
    :goto_0
    return-void

    .line 61635
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A0C:[Lcom/facebook/ads/redexgen/X/CB;

    if-eqz v0, :cond_0

    .line 61636
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/W6;->A09(J)V

    goto :goto_0
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61637
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/CF;->A04(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    return v0
.end method
