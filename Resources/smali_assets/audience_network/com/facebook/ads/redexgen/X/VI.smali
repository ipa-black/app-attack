.class public final Lcom/facebook/ads/redexgen/X/VI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dx;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Gb;

.field public final A01:Lcom/facebook/ads/redexgen/X/Gx;

.field public final A02:Lcom/facebook/ads/redexgen/X/UU;

.field public final A03:Lcom/facebook/ads/redexgen/X/H2;

.field public final A04:Lcom/facebook/ads/redexgen/X/Hg;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58638
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "z6XOcFfUlZLiYF0seOLnv3ze9s0DdTB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kOUqzIhQkth8unrmunVXM7OloxceXCp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vNZflObtCpyDQVnjonlKme7G1XHf5P9t"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ltwdc1Rff3GtcYqOYiouDHeI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qE08X0G6Jnym0xvk75ZNBZoUEwP5MAza"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Z6LnFft16t74Gtd3ASLNWwB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zHF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VI;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Dy;)V
    .locals 8

    .line 58639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58640
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gb;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A00:Lcom/facebook/ads/redexgen/X/Gb;

    .line 58641
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Dy;->A00()Lcom/facebook/ads/redexgen/X/Gx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A01:Lcom/facebook/ads/redexgen/X/Gx;

    .line 58642
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A01(Z)Lcom/facebook/ads/redexgen/X/UU;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A02:Lcom/facebook/ads/redexgen/X/UU;

    .line 58643
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Dy;->A02()Lcom/facebook/ads/redexgen/X/Hg;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    .line 58644
    new-instance v0, Lcom/facebook/ads/redexgen/X/H2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/H2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A03:Lcom/facebook/ads/redexgen/X/H2;

    .line 58645
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58646
    return-void
.end method


# virtual methods
.method public final A4v()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v2, -0x3e8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A00(I)V

    .line 58648
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VI;->A00:Lcom/facebook/ads/redexgen/X/Gb;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VI;->A01:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VI;->A02:Lcom/facebook/ads/redexgen/X/UU;

    const/high16 v0, 0x20000

    new-array v6, v0, [B

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/VI;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v8, -0x3e8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/VI;->A03:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/VI;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-static/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/H3;->A03(Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/UU;[BLcom/facebook/ads/redexgen/X/Hg;ILcom/facebook/ads/redexgen/X/H2;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A03(I)V

    .line 58650
    return-void

    .line 58651
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A03(I)V

    .line 58652
    throw v1
.end method

.method public final A6V()F
    .locals 6

    .line 58653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A03:Lcom/facebook/ads/redexgen/X/H2;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/H2;->A01:J

    .line 58654
    .local v0, "contentLength":J
    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 58655
    const/high16 v5, -0x40800000    # -1.0f

    .line 58656
    :goto_0
    return v5

    .line 58657
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A03:Lcom/facebook/ads/redexgen/X/H2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A00()J

    move-result-wide v0

    long-to-float v5, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/VI;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VI;->A06:[Ljava/lang/String;

    const-string v1, "hhB6jfIM7FzfpB2Im4JpX4ZUe2epnCaG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    long-to-float v0, v3

    div-float/2addr v5, v0

    goto :goto_0
.end method

.method public final A6W()J
    .locals 2

    .line 58658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A03:Lcom/facebook/ads/redexgen/X/H2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H2;->A00()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancel()V
    .locals 2

    .line 58659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VI;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58660
    return-void
.end method

.method public final remove()V
    .locals 2

    .line 58661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VI;->A01:Lcom/facebook/ads/redexgen/X/Gx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VI;->A00:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H3;->A02(Lcom/facebook/ads/redexgen/X/Gb;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A05(Lcom/facebook/ads/redexgen/X/Gx;Ljava/lang/String;)V

    .line 58662
    return-void
.end method
