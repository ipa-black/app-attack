.class public final Lcom/facebook/ads/redexgen/X/Vo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Z

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cm;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:[Lcom/facebook/ads/redexgen/X/Bh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60462
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c0KpkRjZorNQD76"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0d4inMg3wDkuo1aYYl0ssqqGC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DDXERfdvXnPt4luj6e7N9DVUtx6ZaQcR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MB0SdpAzdDPGS5LRihVQgeZ9YJgSZ4OW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1ftUnjVA0zWQWzcI2VyXZGsvfHTse3XE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DWX3euW52jSmR8J8g1ui9PfHl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CNcDYli8yhj93EfpNTcuq0KbKbZRyRug"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vo;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vo;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cm;",
            ">;)V"
        }
    .end annotation

    .line 60463
    .local p1, "subtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60464
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A04:Ljava/util/List;

    .line 60465
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Bh;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Lcom/facebook/ads/redexgen/X/Bh;

    .line 60466
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vo;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x55

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vo;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x34t
        0x43t
        0x43t
        0x3ft
        0x3ct
        0x36t
        0x34t
        0x47t
        0x3ct
        0x42t
        0x41t
        0x2t
        0x37t
        0x49t
        0x35t
        0x46t
        0x48t
        0x35t
        0x46t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hc;I)Z
    .locals 2

    .line 60467
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60468
    return v1

    .line 60469
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 60470
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    .line 60471
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:I

    .line 60472
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    return v0
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 6

    .line 60473
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    if-eqz v0, :cond_4

    .line 60474
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vo;->A02(Lcom/facebook/ads/redexgen/X/Hc;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60475
    return-void

    .line 60476
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:I

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/Vo;->A02(Lcom/facebook/ads/redexgen/X/Hc;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60477
    return-void

    .line 60478
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vo;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60479
    .local v0, "dataPosition":I
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vo;->A07:[Ljava/lang/String;

    const-string v1, "JHIe8W9CfwFDjJjaFpf1hCiFr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "vBjglJY7hKXluELD1o7ad0wQv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    .line 60480
    .local v2, "bytesAvailable":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v1, v2

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v0, v2, v5

    .line 60481
    .local v5, "output":Lcom/facebook/ads/redexgen/X/Bh;
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60482
    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60483
    .end local v5    # "output":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60484
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A01:I

    .line 60485
    .end local v0    # "dataPosition":I
    .end local v2    # "bytesAvailable":I
    :cond_4
    return-void
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 13

    .line 60486
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 60487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A04:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Cm;

    .line 60488
    .local v1, "subtitleInfo":Lcom/facebook/ads/redexgen/X/Cm;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60489
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v2

    .line 60490
    .local v2, "output":Lcom/facebook/ads/redexgen/X/Bh;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Cm;->A02:[B

    .line 60491
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/Cm;->A01:Ljava/lang/String;

    const/4 v12, 0x0

    .line 60492
    const/4 v4, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x7e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Vo;->A00(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v12}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 60493
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Lcom/facebook/ads/redexgen/X/Bh;

    aput-object v2, v0, v3

    .line 60495
    .end local v1    # "subtitleInfo":Lcom/facebook/ads/redexgen/X/Cm;
    .end local v2    # "output":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60496
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final ADM()V
    .locals 11

    .line 60497
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    if-eqz v0, :cond_1

    .line 60498
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vo;->A05:[Lcom/facebook/ads/redexgen/X/Bh;

    array-length v2, v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v3, v0

    .line 60499
    .local p0, "output":Lcom/facebook/ads/redexgen/X/Bh;
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:J

    const/4 v7, 0x1

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Vo;->A01:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 60500
    .end local p0    # "output":Lcom/facebook/ads/redexgen/X/Bh;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60501
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    .line 60502
    :cond_1
    return-void
.end method

.method public final ADN(JZ)V
    .locals 1

    .line 60503
    if-nez p3, :cond_0

    .line 60504
    return-void

    .line 60505
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    .line 60506
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vo;->A02:J

    .line 60507
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A01:I

    .line 60508
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:I

    .line 60509
    return-void
.end method

.method public final AEb()V
    .locals 1

    .line 60510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A03:Z

    .line 60511
    return-void
.end method
