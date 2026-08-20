.class public final Lcom/facebook/ads/redexgen/X/WP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/flv/FlvExtractor$States;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/BY;

.field public static final A0I:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/BX;

.field public A07:Lcom/facebook/ads/redexgen/X/WR;

.field public A08:Lcom/facebook/ads/redexgen/X/WM;

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/WO;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 63406
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QnLOeuXESrCaGCWmeMmr3ccgSJivirlh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YhzsmTzzzxhtyY2gbPt9z7nrByNpJ8AG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zwujZ5tU8kb2uxp5tp3MFQMZqwl6Xl8T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kc6RUJmY0MGel4Ws9MlGHroinjQjp2AB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZiGWNZua4Zts1sNsjYBSU4OXsNo5k01z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vZczIWNBPrLvTkXGahgR3lrPVHA61MAE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WEnNwLMqAaXyN6vSaeVfRhJYgSEHaora"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u0NJWOpvT5UyzhfOPQB88kiisy6mVL7a"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WP;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WP;->A03()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WQ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WP;->A0H:Lcom/facebook/ads/redexgen/X/BY;

    .line 63407
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WP;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WP;->A0I:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63409
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    .line 63410
    const/16 v1, 0x9

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0B:Lcom/facebook/ads/redexgen/X/Hc;

    .line 63411
    const/16 v1, 0xb

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    .line 63412
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    .line 63413
    new-instance v0, Lcom/facebook/ads/redexgen/X/WO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0A:Lcom/facebook/ads/redexgen/X/WO;

    .line 63414
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    .line 63415
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A04:J

    .line 63416
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/Hc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63417
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A05()I

    move-result v0

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    .line 63418
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A05()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A02:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 63419
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A02:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 63420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A02:I

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 63421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    return-object v0

    .line 63422
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0D:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WP;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x54

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 5

    .line 63423
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A09:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 63424
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A06:Lcom/facebook/ads/redexgen/X/BX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/WU;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 63425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A09:Z

    .line 63426
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A04:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_3

    .line 63427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0A:Lcom/facebook/ads/redexgen/X/WO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WO;->A0D()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/WP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/WP;->A0G:[Ljava/lang/String;

    const-string v1, "L5UStG7DYoKpX710PXz3zQwSbfDogpGa"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "NY6hXsIFzv8ItyXdU8z07IBZswL3MGXa"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    neg-long v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A04:J

    .line 63428
    :cond_3
    return-void
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WP;->A0F:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x29t
        -0x23t
        -0x19t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/BW;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63429
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 63430
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:I

    .line 63431
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    .line 63432
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0B:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/BW;->ADu([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63434
    return v6

    .line 63435
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0B:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 63436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0B:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 63437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0B:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v2

    .line 63438
    .local v0, "flags":I
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 63439
    .local v5, "hasAudio":Z
    :goto_0
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 63440
    .local v2, "hasVideo":Z
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A07:Lcom/facebook/ads/redexgen/X/WR;

    if-nez v0, :cond_2

    .line 63441
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A06:Lcom/facebook/ads/redexgen/X/BX;

    const/16 v0, 0x8

    .line 63442
    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WR;-><init>(Lcom/facebook/ads/redexgen/X/Bh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A07:Lcom/facebook/ads/redexgen/X/WR;

    .line 63443
    :cond_2
    const/4 v2, 0x2

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A08:Lcom/facebook/ads/redexgen/X/WM;

    if-nez v0, :cond_3

    .line 63444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A06:Lcom/facebook/ads/redexgen/X/BX;

    .line 63445
    invoke-interface {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WM;-><init>(Lcom/facebook/ads/redexgen/X/Bh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A08:Lcom/facebook/ads/redexgen/X/WM;

    .line 63446
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A06:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 63447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0B:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:I

    .line 63448
    iput v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    .line 63449
    return v3

    .line 63450
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63451
    const/4 v7, 0x1

    .line 63452
    .local v0, "wasConsumed":Z
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A03:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A07:Lcom/facebook/ads/redexgen/X/WR;

    if-eqz v0, :cond_1

    .line 63453
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;->A02()V

    .line 63454
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WP;->A07:Lcom/facebook/ads/redexgen/X/WR;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A00(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v6

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A04:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/WP;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v4, Lcom/facebook/ads/redexgen/X/WP;->A0G:[Ljava/lang/String;

    const-string v1, "14LyfFoDFqyov0bzU05kIxDiosYU9C09"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/Bj;->A00(Lcom/facebook/ads/redexgen/X/Hc;J)V

    .line 63455
    :cond_0
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:I

    .line 63456
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    .line 63457
    return v7

    .line 63458
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A03:I

    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A08:Lcom/facebook/ads/redexgen/X/WM;

    if-eqz v0, :cond_2

    .line 63459
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;->A02()V

    .line 63460
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WP;->A08:Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A00(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Bj;->A00(Lcom/facebook/ads/redexgen/X/Hc;J)V

    goto :goto_0

    .line 63461
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A03:I

    const/16 v0, 0x12

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A09:Z

    if-nez v0, :cond_3

    .line 63462
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WP;->A0A:Lcom/facebook/ads/redexgen/X/WO;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A00(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Bj;->A00(Lcom/facebook/ads/redexgen/X/Hc;J)V

    .line 63463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0A:Lcom/facebook/ads/redexgen/X/WO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WO;->A0D()J

    move-result-wide v2

    .line 63464
    .local v1, "durationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 63465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A06:Lcom/facebook/ads/redexgen/X/BX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/WU;-><init>(J)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 63466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A09:Z

    goto :goto_0

    .line 63467
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A02:I

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 63468
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xb

    invoke-interface {p1, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/BW;->ADu([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63470
    return v1

    .line 63471
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 63472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A03:I

    .line 63473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A02:I

    .line 63474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    .line 63475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    or-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A05:J

    .line 63476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WP;->A0E:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 63477
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    .line 63478
    return v4
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 0

    .line 63479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WP;->A06:Lcom/facebook/ads/redexgen/X/BX;

    .line 63480
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63481
    :cond_0
    :goto_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v2, v0, :cond_4

    .line 63482
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A06(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63483
    const/4 v0, 0x0

    return v0

    .line 63484
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A07(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63485
    return v1

    .line 63486
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A04(Lcom/facebook/ads/redexgen/X/BW;)V

    .line 63487
    goto :goto_0

    .line 63488
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WP;->A05(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63489
    return v1

    .line 63490
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final AEc(JJ)V
    .locals 2

    .line 63491
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A01:I

    .line 63492
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A04:J

    .line 63493
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A00:I

    .line 63494
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 63496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 63497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/WP;->A0I:I

    if-eq v1, v0, :cond_0

    .line 63498
    return v2

    .line 63499
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 63500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 63501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    .line 63502
    return v2

    .line 63503
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 63504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 63505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    .line 63506
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 63507
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 63508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 63509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 63510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WP;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
