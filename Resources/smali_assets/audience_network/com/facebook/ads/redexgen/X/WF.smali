.class public final Lcom/facebook/ads/redexgen/X/WF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WG;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/BY;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/BX;

.field public A05:Lcom/facebook/ads/redexgen/X/Bh;

.field public A06:Lcom/facebook/ads/redexgen/X/WG;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

.field public final A08:I

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/BZ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ba;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Bb;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 62414
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FKupPKXcsIkycQ3l5ptAH5wluEqc6YoI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ogqWAOna8QODFLIqijT7vOYnhApvYyU7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UAOUtvFDqNmRNLgZ1GU6DrNnbPesxUgh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z4WGtVpeHmr0jWMfeyoB2cmDzFByDj9w"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gdGWUcFUabEj8aTRXEAi5amp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tmhvTid"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WDNv6R6VbALBmvSk6DCmHF7NFi0i9puO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WF;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WH;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WF;->A0G:Lcom/facebook/ads/redexgen/X/BY;

    .line 62415
    const/16 v2, 0x20

    const/4 v1, 0x4

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WF;->A0J:I

    .line 62416
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WF;->A0H:I

    .line 62417
    const/16 v2, 0x1c

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WF;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WF;-><init>(I)V

    .line 62419
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 62420
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/WF;-><init>(IJ)V

    .line 62421
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 62422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62423
    iput p1, p0, Lcom/facebook/ads/redexgen/X/WF;->A08:I

    .line 62424
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/WF;->A09:J

    .line 62425
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    .line 62426
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bb;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    .line 62427
    new-instance v0, Lcom/facebook/ads/redexgen/X/BZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BZ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0A:Lcom/facebook/ads/redexgen/X/BZ;

    .line 62428
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    .line 62429
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ba;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ba;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0B:Lcom/facebook/ads/redexgen/X/Ba;

    .line 62430
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/BW;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62431
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 62432
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 62433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v0, 0x4

    invoke-interface {p1, v1, v4, v0, v6}, Lcom/facebook/ads/redexgen/X/BW;->ADQ([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62434
    return v5

    .line 62435
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v2

    .line 62437
    .local v0, "sampleHeaderData":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:I

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/WF;->A06(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62438
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bb;->A00(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 62439
    :cond_1
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62440
    iput v4, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:I

    .line 62441
    return v4

    .line 62442
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A04(ILcom/facebook/ads/redexgen/X/Bb;)Z

    .line 62443
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v9

    if-nez v2, :cond_3

    .line 62444
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v3, v2

    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x32

    if-eq v3, v2, :cond_7

    sget-object v7, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v3, "uwsYCHPiCgNXlhDD9rc7dT19"

    const/4 v2, 0x5

    aput-object v3, v7, v2

    invoke-interface {v8, v0, v1}, Lcom/facebook/ads/redexgen/X/WG;->A7q(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    .line 62445
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A09:J

    cmp-long v2, v0, v9

    if-eqz v2, :cond_3

    .line 62446
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    const-wide/16 v0, 0x0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/WG;->A7q(J)J

    move-result-wide v7

    .line 62447
    .local v4, "embeddedFirstSampleTimestampUs":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A09:J

    sub-long/2addr v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    .line 62448
    .end local v4    # "embeddedFirstSampleTimestampUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    .line 62449
    .end local v0    # "sampleHeaderData":I
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WF;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    invoke-interface {v1, p1, v0, v6}, Lcom/facebook/ads/redexgen/X/Bh;->AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I

    move-result v1

    .line 62450
    .local v0, "bytesAppended":I
    if-ne v1, v5, :cond_5

    .line 62451
    return v5

    .line 62452
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    .line 62453
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    if-lez v0, :cond_6

    .line 62454
    return v4

    .line 62455
    :cond_6
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A03:J

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A03:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    .line 62456
    .local v1, "timeUs":J
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WF;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 62457
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A04:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A03:J

    .line 62458
    iput v4, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    .line 62459
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hc;I)I
    .locals 4

    .line 62460
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v1

    add-int/lit8 v0, p1, 0x4

    if-lt v1, v0, :cond_2

    .line 62461
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62462
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 62463
    .local v0, "headerData":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "RZ9mFeyNnV0sPgPCsPCuasZg37Uzdp17"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fK9CAyTZYj28knSP6u8xHPIK1qnXYcxa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0J:I

    if-eq v3, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0H:I

    if-ne v3, v0, :cond_2

    .line 62464
    :cond_0
    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 62465
    .end local v0    # "headerData":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v1

    const/16 v0, 0x28

    if-lt v1, v0, :cond_3

    .line 62466
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62467
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0I:I

    if-ne v1, v0, :cond_3

    .line 62468
    return v0

    .line 62469
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/WG;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 62471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A04(ILcom/facebook/ads/redexgen/X/Bb;)Z

    .line 62473
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dd;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Dd;-><init>(JJLcom/facebook/ads/redexgen/X/Bb;)V

    return-object v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/WG;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    new-instance v9, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    .line 62475
    .local v0, "frame":Lcom/facebook/ads/redexgen/X/Hc;
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 62476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A05:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    const/16 v2, 0x15

    if-eqz v0, :cond_1

    .line 62477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Bb;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "1a7oiXE"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "rh"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    if-eq v6, v5, :cond_2

    const/16 v2, 0x24

    goto :goto_0

    .line 62478
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A01:I

    if-eq v0, v5, :cond_5

    .line 62479
    .local v1, "xingBase":I
    :cond_2
    :goto_0
    invoke-static {v9, v2}, Lcom/facebook/ads/redexgen/X/WF;->A01(Lcom/facebook/ads/redexgen/X/Hc;I)I

    move-result v1

    .line 62480
    .local v9, "seekHeader":I
    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0J:I

    if-eq v1, v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0H:I

    if-ne v1, v0, :cond_6

    .line 62481
    .end local v2
    :cond_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Cy;->A01(JJLcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v4

    .line 62482
    .restart local v2
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0A:Lcom/facebook/ads/redexgen/X/BZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BZ;->A03()Z

    move-result v0

    if-nez v0, :cond_4

    .line 62483
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 62484
    add-int/lit16 v0, v2, 0x8d

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 62485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v0, 0x3

    invoke-interface {p1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 62486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62487
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A0A:Lcom/facebook/ads/redexgen/X/BZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/BZ;->A04(I)Z

    .line 62488
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62489
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Cy;->A8v()Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0H:I

    if-ne v1, v0, :cond_7

    .line 62490
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WF;->A02(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/WG;

    move-result-object v0

    return-object v0

    .line 62491
    :cond_5
    const/16 v2, 0xd

    goto :goto_0

    .line 62492
    :cond_6
    sget v0, Lcom/facebook/ads/redexgen/X/WF;->A0I:I

    if-ne v1, v0, :cond_8

    .line 62493
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/DE;->A00(JJLcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/DE;

    move-result-object v4

    .line 62494
    .local v2, "seeker":Lcom/facebook/ads/redexgen/X/WG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62495
    :cond_7
    :goto_1
    return-object v4

    .line 62496
    .end local v2    # "seeker":Lcom/facebook/ads/redexgen/X/WG;
    :cond_8
    const/4 v4, 0x0

    .line 62497
    .restart local v2    # "seeker":Lcom/facebook/ads/redexgen/X/WG;
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    goto :goto_1
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WF;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WF;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        -0x39t
        -0x41t
        -0x38t
        -0x6et
        -0x5ct
        -0x60t
        -0x4ft
        -0x5et
        -0x59t
        -0x5ct
        -0x5dt
        0x5ft
        -0x4dt
        -0x52t
        -0x52t
        0x5ft
        -0x54t
        -0x60t
        -0x53t
        -0x48t
        0x5ft
        -0x5ft
        -0x48t
        -0x4dt
        -0x5ct
        -0x4et
        0x6dt
        -0x73t
        0x79t
        -0x77t
        -0x80t
        -0x64t
        -0x53t
        -0x4et
        -0x55t
    .end array-data
.end method

.method public static A06(IJ)Z
    .locals 4

    .line 62498
    const v0, -0x1f400

    and-int/2addr v0, p0

    int-to-long v3, v0

    const-wide/32 v1, -0x1f400

    and-long/2addr v1, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/BW;Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62499
    const/4 v8, 0x0

    .line 62500
    .local v0, "validFrameCount":I
    const/4 v7, 0x0

    .line 62501
    .local v1, "candidateSynchronizedHeaderData":I
    const/4 v2, 0x0

    .line 62502
    .local v2, "peekedId3Bytes":I
    const/4 v6, 0x0

    .line 62503
    .local v3, "searchedBytes":I
    if-eqz p2, :cond_10

    const/16 v5, 0x4000

    .line 62504
    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 62505
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v11

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    cmp-long v0, v11, v9

    if-nez v0, :cond_1

    .line 62506
    iget v9, p0, Lcom/facebook/ads/redexgen/X/WF;->A08:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "aodgJ9F"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Mh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 62507
    .local v5, "onlyDecodeGaplessInfoFrames":Z
    :goto_1
    if-eqz v0, :cond_e

    sget-object v1, Lcom/facebook/ads/redexgen/X/BZ;->A04:Lcom/facebook/ads/redexgen/X/DL;

    .line 62508
    .local v6, "id3FramePredicate":Lcom/facebook/ads/redexgen/X/DL;
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0B:Lcom/facebook/ads/redexgen/X/Ba;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ba;->A00(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/DL;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    .line 62509
    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/WF;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    if-eqz v10, :cond_0

    .line 62510
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/WF;->A0A:Lcom/facebook/ads/redexgen/X/BZ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "kwUpXSrSJ0NLH72x1DIQc8Fq054MCj03"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uritoxjB27zl8eiC6KQaQvgdEg1vP6Ps"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/BZ;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z

    .line 62511
    :cond_0
    :goto_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7K()J

    move-result-wide v0

    long-to-int v2, v0

    .line 62512
    if-nez p2, :cond_1

    .line 62513
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62514
    .end local v5    # "onlyDecodeGaplessInfoFrames":Z
    .end local v6    # "id3FramePredicate":Lcom/facebook/ads/redexgen/X/DL;
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    if-lez v8, :cond_c

    const/4 v11, 0x1

    :goto_5
    const/4 v10, 0x4

    sget-object v9, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v9, v0

    const/4 v0, 0x3

    aget-object v9, v9, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v9, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "F41ajW8QxYjYysO7QQhMOwz5jLXMzQYc"

    const/4 v0, 0x0

    aput-object v1, v9, v0

    invoke-interface {p1, v12, v4, v10, v11}, Lcom/facebook/ads/redexgen/X/BW;->ADQ([BIIZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 62515
    .end local v5
    .end local v8
    :goto_6
    if-eqz p2, :cond_2

    .line 62516
    add-int/2addr v2, v6

    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 62517
    :goto_7
    iput v7, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    .line 62518
    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "JRrUIGwZBJczcB1fqhgNVGoVSbza2n0c"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 62519
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    goto :goto_7

    :cond_3
    invoke-interface {p1, v12, v4, v10, v11}, Lcom/facebook/ads/redexgen/X/BW;->ADQ([BIIZ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_6

    .line 62520
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 62521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v9

    .line 62522
    .local v5, "headerData":I
    if-eqz v7, :cond_5

    int-to-long v0, v7

    .line 62523
    invoke-static {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/WF;->A06(IJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62524
    :cond_5
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Bb;->A00(I)I

    move-result v1

    .local v8, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    .line 62525
    .end local v8    # "frameSize":I
    :cond_6
    add-int/lit8 v1, v6, 0x1

    .end local v3    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v6, v5, :cond_7

    .line 62526
    if-eqz p2, :cond_11

    .line 62527
    return v4

    .line 62528
    :cond_7
    const/4 v8, 0x0

    .line 62529
    const/4 v7, 0x0

    .line 62530
    if-eqz p2, :cond_8

    .line 62531
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 62532
    add-int v0, v2, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 62533
    .end local v5    # "headerData":I
    :goto_8
    move v6, v1

    goto/16 :goto_4

    .line 62534
    :cond_8
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    goto :goto_8

    .line 62535
    .end local v6    # "searchedBytes":I
    .restart local v3    # "searchedBytes":I
    .restart local v5    # "headerData":I
    .restart local v8    # "frameSize":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 62536
    if-ne v8, v3, :cond_b

    .line 62537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A04(ILcom/facebook/ads/redexgen/X/Bb;)Z

    .line 62538
    move v7, v9

    .line 62539
    .restart local v5    # "headerData":I
    .restart local v8    # "frameSize":I
    :cond_a
    add-int/lit8 v0, v1, -0x4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    goto/16 :goto_4

    .line 62540
    :cond_b
    if-ne v8, v10, :cond_a

    goto :goto_6

    .line 62541
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/WF;->A0F:[Ljava/lang/String;

    const-string v1, "W2SW3glva3ohlkheP4GgDHO6E3mNlxjo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/BZ;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z

    goto/16 :goto_3

    .line 62542
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 62543
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 62544
    :cond_10
    const/high16 v5, 0x20000

    goto/16 :goto_0

    .line 62545
    :cond_11
    const/4 v2, 0x4

    const/16 v1, 0x18

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 3

    .line 62546
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WF;->A04:Lcom/facebook/ads/redexgen/X/BX;

    .line 62547
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A04:Lcom/facebook/ads/redexgen/X/BX;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    .line 62548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A04:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 62549
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62550
    move-object/from16 v1, p0

    move-object v1, v1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A01:I

    move-object/from16 v0, p1

    if-nez v2, :cond_0

    .line 62551
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/WF;->A07(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    goto :goto_0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62552
    .local v0, "e":Ljava/io/EOFException;
    :catch_0
    const/4 v0, -0x1

    return v0

    .line 62553
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    if-nez v2, :cond_3

    .line 62554
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A03(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/WG;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    .line 62555
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    if-eqz v2, :cond_1

    .line 62556
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Be;->A8v()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A08:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 62557
    :cond_1
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A02(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/WG;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    .line 62558
    :cond_2
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/WF;->A04:Lcom/facebook/ads/redexgen/X/BX;

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A06:Lcom/facebook/ads/redexgen/X/WG;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 62559
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/WF;->A05:Lcom/facebook/ads/redexgen/X/Bh;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Bb;->A06:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x1000

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v9, v2, Lcom/facebook/ads/redexgen/X/Bb;->A01:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A0C:Lcom/facebook/ads/redexgen/X/Bb;

    iget v10, v2, Lcom/facebook/ads/redexgen/X/Bb;->A03:I

    const/4 v11, -0x1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A0A:Lcom/facebook/ads/redexgen/X/BZ;

    iget v12, v2, Lcom/facebook/ads/redexgen/X/BZ;->A00:I

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A0A:Lcom/facebook/ads/redexgen/X/BZ;

    iget v13, v2, Lcom/facebook/ads/redexgen/X/BZ;->A01:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 62560
    iget v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A08:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 62561
    :goto_1
    const/16 v16, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .line 62562
    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 62563
    :cond_3
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A00(Lcom/facebook/ads/redexgen/X/BW;)I

    move-result v0

    return v0

    .line 62564
    :cond_4
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/WF;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    goto :goto_1
.end method

.method public final AEc(JJ)V
    .locals 3

    .line 62565
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A01:I

    .line 62566
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A02:J

    .line 62567
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WF;->A03:J

    .line 62568
    iput v2, p0, Lcom/facebook/ads/redexgen/X/WF;->A00:I

    .line 62569
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62570
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WF;->A07(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    move-result v0

    return v0
.end method
