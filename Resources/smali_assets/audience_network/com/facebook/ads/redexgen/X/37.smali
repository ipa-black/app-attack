.class public final Lcom/facebook/ads/redexgen/X/37;
.super Lcom/facebook/ads/redexgen/X/BI;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FY;,
        Lcom/facebook/ads/redexgen/X/FZ;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/FY;

.field public A02:Lcom/facebook/ads/redexgen/X/FZ;

.field public A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A07:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A08:[Lcom/facebook/ads/redexgen/X/FY;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 7481
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L8nSDLrO9TAW6D5HPeCL1si5c1hAxtei"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yTRb7xwkWwLSkx7Cn6wgTsSbifoyAf9H"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Pu75iiq5ul4XKDpFB8omN9mmt6MpAi03"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oele7RmZxHriYfeWVBMRgXe0mbma165L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r81I3UJTjgZxb8d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "D"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tOJQceEm3WwBKYsVwUd4wYPMC2E8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/37;->A09()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 7482
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BI;-><init>()V

    .line 7483
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    .line 7484
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hb;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    .line 7485
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/37;->A05:I

    .line 7486
    const/16 v3, 0x8

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/FY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    .line 7487
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 7488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/FY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FY;-><init>()V

    aput-object v0, v1, v2

    .line 7489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7490
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    .line 7491
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A08()V

    .line 7492
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FQ;",
            ">;"
        }
    .end annotation

    .line 7493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7494
    .local v0, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/cea/Cea708Cue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_1

    .line 7495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A0H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A0I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A05()Lcom/facebook/ads/redexgen/X/V4;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7498
    .end local v1    # "i":I
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7499
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 7500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    if-nez v0, :cond_0

    .line 7501
    return-void

    .line 7502
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A07()V

    .line 7503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    .line 7504
    return-void
.end method

.method private A03()V
    .locals 9

    .line 7505
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 7506
    .local v0, "textTag":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 7507
    .local v1, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 7508
    .local p1, "penSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v5

    .line 7509
    .local p2, "italicsToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v6

    .line 7510
    .local p3, "underlineToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v7

    .line 7511
    .local p4, "edgeType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v8

    .line 7512
    .local p5, "fontStyle":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/FY;->A0C(IIIZZII)V

    .line 7513
    return-void
.end method

.method private A04()V
    .locals 6

    .line 7514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 7515
    .local v0, "foregroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 7516
    .local v2, "foregroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 7517
    .local v3, "foregroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 7518
    .local v4, "foregroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v4

    .line 7519
    .local v5, "foregroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 7520
    .local p0, "backgroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 7521
    .local p1, "backgroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 7522
    .local p2, "backgroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 7523
    .local p3, "backgroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v3

    .line 7524
    .local p4, "backgroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 7526
    .local p5, "edgeR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 7527
    .local p6, "edgeG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 7528
    .local v1, "edgeB":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A00(III)I

    move-result v1

    .line 7529
    .local p7, "edgeColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/FY;->A0B(III)V

    .line 7530
    return-void
.end method

.method private A05()V
    .locals 3

    .line 7531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 7533
    .local v0, "row":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v1

    .line 7535
    .local v1, "column":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/FY;->A0A(II)V

    .line 7536
    return-void
.end method

.method private A06()V
    .locals 12

    .line 7537
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v5

    .line 7538
    .local v1, "fillO":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 7539
    .local v3, "fillR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 7540
    .local v4, "fillG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 7541
    .local v5, "fillB":I
    invoke-static {v4, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/FY;->A01(IIII)I

    move-result v5

    .line 7542
    .local p2, "fillColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v8

    .line 7543
    .local v6, "borderType":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 7544
    .local p3, "borderR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v3

    .line 7545
    .local p1, "borderG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 7546
    .local p0, "borderB":I
    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/FY;->A00(III)I

    move-result v6

    .line 7547
    .local p4, "borderColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7548
    or-int/lit8 v8, v8, 0x4

    .line 7549
    .end local v6    # "borderType":I
    .local p5, "borderType":I
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v7

    .line 7550
    .local p6, "wordWrapToggle":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v9

    .line 7551
    .local p7, "printDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v10

    .line 7552
    .local p8, "scrollDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v11

    .line 7553
    .local v2, "justification":I
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7554
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    .end local p0    # "borderB":I
    .local p9, "borderB":I
    .end local p1
    .local p10, "borderG":I
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/FY;->A0D(IIZIIII)V

    .line 7555
    return-void
.end method

.method private A07()V
    .locals 9

    .line 7556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FZ;->A01:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x1

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eq v6, v4, :cond_0

    .line 7557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb4

    const/16 v1, 0x27

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FZ;->A01:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    const/16 v1, 0x17

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FZ;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const/16 v1, 0x12

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7558
    return-void

    .line 7559
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/FZ;->A03:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0C([BI)V

    .line 7560
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 7561
    .local v0, "serviceNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v2

    .line 7562
    .local v1, "blockSize":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    .line 7563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 7565
    :cond_1
    if-nez v2, :cond_3

    .line 7566
    if-eqz v4, :cond_2

    .line 7567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x196

    const/16 v1, 0x1b

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x15

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7568
    :cond_2
    return-void

    .line 7569
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/37;->A05:I

    if-eq v4, v0, :cond_4

    .line 7570
    return-void

    .line 7571
    :cond_4
    const/4 v8, 0x0

    .line 7572
    .local v2, "cuesNeedUpdate":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A01()I

    move-result v0

    if-lez v0, :cond_10

    .line 7573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 7574
    .local v4, "command":I
    const/16 v0, 0x10

    const/16 v6, 0xff

    const/16 v3, 0x9f

    const/16 v2, 0x7f

    const/16 v1, 0x1f

    if-eq v4, v0, :cond_a

    .line 7575
    if-gt v4, v1, :cond_5

    .line 7576
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0A(I)V

    goto :goto_0

    .line 7577
    :cond_5
    if-gt v4, v2, :cond_6

    .line 7578
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0F(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_f

    .line 7579
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "rjuMXnqaebSKWE8kqibyPX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v8, 0x1

    goto :goto_0

    .line 7580
    :cond_6
    if-gt v4, v3, :cond_7

    .line 7581
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0B(I)V

    .line 7582
    const/4 v8, 0x1

    goto :goto_0

    .line 7583
    :cond_7
    if-gt v4, v6, :cond_9

    .line 7584
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0G(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_8

    .line 7585
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "EgJ0sJhEBhD0w9Kefz8q6JJasn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v8, 0x1

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "g5pQSTU3MNC04Gh1KYXWxOkcOn9rSElo"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v8, 0x0

    goto :goto_0

    .line 7586
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x166

    const/16 v1, 0x16

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7587
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v4

    .line 7588
    if-gt v4, v1, :cond_b

    .line 7589
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0C(I)V

    goto/16 :goto_0

    .line 7590
    :cond_b
    if-gt v4, v2, :cond_c

    .line 7591
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0H(I)V

    .line 7592
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 7593
    :cond_c
    if-gt v4, v3, :cond_d

    .line 7594
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0D(I)V

    goto/16 :goto_0

    .line 7595
    :cond_d
    if-gt v4, v6, :cond_e

    .line 7596
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/37;->A0I(I)V

    .line 7597
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 7598
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1a

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7599
    :cond_10
    if-eqz v8, :cond_11

    .line 7600
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A03:Ljava/util/List;

    .line 7601
    :cond_11
    return-void
.end method

.method private A08()V
    .locals 2

    .line 7602
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 7603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A08()V

    .line 7604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7605
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x1b1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/37;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x3at
        0x61t
        0x77t
        0x63t
        0x67t
        0x77t
        0x7ct
        0x71t
        0x77t
        0x32t
        0x7ct
        0x67t
        0x7ft
        0x70t
        0x77t
        0x60t
        0x32t
        0x5et
        0x57t
        0x0t
        0x1ft
        0x12t
        0x19t
        0x57t
        0x15t
        0x1bt
        0x18t
        0x14t
        0x1ct
        0x24t
        0x1et
        0xdt
        0x12t
        0x57t
        0x1et
        0x4t
        0x57t
        0x47t
        0x48t
        0x5at
        0x41t
        0x8t
        0x6t
        0xft
        0xet
        0x13t
        0x8t
        0xft
        0x6t
        0x41t
        0x11t
        0x0t
        0x2t
        0xat
        0x4t
        0x15t
        0x44t
        0x48t
        0xat
        0x1dt
        0x1ct
        0x48t
        0xbt
        0x1dt
        0x1at
        0x1at
        0xdt
        0x6t
        0x1ct
        0x48t
        0x1t
        0x6t
        0xct
        0xdt
        0x10t
        0x48t
        0x1t
        0x1bt
        0x48t
        0x13t
        0x35t
        0x31t
        0x67t
        0x60t
        0x68t
        0x14t
        0x35t
        0x33t
        0x3ft
        0x34t
        0x35t
        0x22t
        0x54t
        0x62t
        0x65t
        0x65t
        0x72t
        0x79t
        0x63t
        0x7bt
        0x6et
        0x37t
        0x62t
        0x79t
        0x64t
        0x62t
        0x67t
        0x67t
        0x78t
        0x65t
        0x63t
        0x72t
        0x73t
        0x37t
        0x54t
        0x58t
        0x5at
        0x5at
        0x56t
        0x59t
        0x53t
        0x48t
        0x52t
        0x4ft
        0x43t
        0x26t
        0x37t
        0x54t
        0x78t
        0x7at
        0x7at
        0x76t
        0x79t
        0x73t
        0x2dt
        0x37t
        0x48t
        0x7et
        0x79t
        0x79t
        0x6et
        0x65t
        0x7ft
        0x67t
        0x72t
        0x2bt
        0x7et
        0x65t
        0x78t
        0x7et
        0x7bt
        0x7bt
        0x64t
        0x79t
        0x7ft
        0x6et
        0x6ft
        0x2bt
        0x48t
        0x44t
        0x46t
        0x46t
        0x4at
        0x45t
        0x4ft
        0x54t
        0x5bt
        0x3at
        0x3dt
        0x2bt
        0x48t
        0x64t
        0x66t
        0x66t
        0x6at
        0x65t
        0x6ft
        0x31t
        0x2bt
        0x6dt
        0x5dt
        0x5ft
        0x6at
        0x4at
        0x79t
        0x48t
        0x4at
        0x42t
        0x4ct
        0x5dt
        0x9t
        0x4ct
        0x47t
        0x4dt
        0x4ct
        0x4dt
        0x9t
        0x59t
        0x5bt
        0x4ct
        0x44t
        0x48t
        0x5dt
        0x5ct
        0x5bt
        0x4ct
        0x45t
        0x50t
        0x12t
        0x9t
        0x5at
        0x40t
        0x53t
        0x4ct
        0x9t
        0x40t
        0x5at
        0x9t
        0x74t
        0x5ft
        0x52t
        0x5et
        0x44t
        0x5ft
        0x45t
        0x54t
        0x43t
        0x54t
        0x55t
        0x11t
        0x75t
        0x65t
        0x67t
        0x72t
        0x72t
        0x6et
        0x61t
        0x70t
        0x72t
        0x7at
        0x74t
        0x65t
        0x6et
        0x75t
        0x70t
        0x65t
        0x70t
        0x11t
        0x53t
        0x54t
        0x57t
        0x5et
        0x43t
        0x54t
        0x11t
        0x75t
        0x65t
        0x67t
        0x72t
        0x72t
        0x6et
        0x61t
        0x70t
        0x72t
        0x7at
        0x74t
        0x65t
        0x6et
        0x62t
        0x65t
        0x70t
        0x63t
        0x65t
        0x26t
        0x1t
        0x19t
        0xet
        0x3t
        0x6t
        0xbt
        0x4ft
        0x2ct
        0x5ft
        0x4ft
        0xct
        0x0t
        0x2t
        0x2t
        0xet
        0x1t
        0xbt
        0x55t
        0x4ft
        0x5et
        0x79t
        0x61t
        0x76t
        0x7bt
        0x7et
        0x73t
        0x37t
        0x54t
        0x26t
        0x37t
        0x74t
        0x78t
        0x7at
        0x7at
        0x76t
        0x79t
        0x73t
        0x2dt
        0x37t
        0x72t
        0x55t
        0x4dt
        0x5at
        0x57t
        0x52t
        0x5ft
        0x1bt
        0x7ct
        0x9t
        0x1bt
        0x58t
        0x53t
        0x5at
        0x49t
        0x5at
        0x58t
        0x4ft
        0x5et
        0x49t
        0x1t
        0x1bt
        0x3at
        0x1dt
        0x5t
        0x12t
        0x1ft
        0x1at
        0x17t
        0x53t
        0x34t
        0x40t
        0x53t
        0x10t
        0x1bt
        0x12t
        0x1t
        0x12t
        0x10t
        0x7t
        0x16t
        0x1t
        0x49t
        0x53t
        0x3bt
        0x1ct
        0x4t
        0x13t
        0x1et
        0x1bt
        0x16t
        0x52t
        0x10t
        0x13t
        0x1t
        0x17t
        0x52t
        0x11t
        0x1dt
        0x1ft
        0x1ft
        0x13t
        0x1ct
        0x16t
        0x48t
        0x52t
        0x5ft
        0x78t
        0x60t
        0x77t
        0x7at
        0x7ft
        0x72t
        0x36t
        0x73t
        0x6et
        0x62t
        0x73t
        0x78t
        0x72t
        0x73t
        0x72t
        0x36t
        0x75t
        0x79t
        0x7bt
        0x7bt
        0x77t
        0x78t
        0x72t
        0x2ct
        0x36t
        0x73t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x4et
        0x75t
        0x6dt
        0x62t
        0x65t
        0x72t
        0x20t
        0x69t
        0x73t
        0x20t
        0x6et
        0x6ft
        0x6et
        0x2dt
        0x7at
        0x65t
        0x72t
        0x6ft
        0x20t
        0x28t
    .end array-data
.end method

.method private A0A(I)V
    .locals 6

    .line 7606
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v5, 0x8

    if-eq p1, v5, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 7607
    const/16 v3, 0x11

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-lt p1, v3, :cond_1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    .line 7608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x2c

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7610
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7611
    :cond_1
    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2

    .line 7612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x89

    const/16 v1, 0x2b

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0

    .line 7614
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x112

    const/16 v1, 0x14

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7615
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A08()V

    .line 7616
    goto :goto_0

    .line 7617
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7618
    goto :goto_0

    .line 7619
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A06()V

    .line 7620
    goto :goto_0

    .line 7621
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A03:Ljava/util/List;

    .line 7622
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private A0B(I)V
    .locals 6

    .line 7623
    const/16 v4, 0x10

    const/4 v5, 0x1

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    .line 7624
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x126

    const/16 v1, 0x14

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7625
    .end local v0
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 7626
    :pswitch_2
    add-int/lit8 v1, p1, -0x80

    .line 7627
    .local v0, "window":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/37;->A00:I

    if-eq v0, v1, :cond_0

    .line 7628
    iput v1, p0, Lcom/facebook/ads/redexgen/X/37;->A00:I

    .line 7629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    goto :goto_0

    .line 7630
    :pswitch_3
    const/4 v2, 0x1

    .restart local v0    # "window":I
    :goto_1
    if-gt v2, v3, :cond_0

    .line 7631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A07()V

    .line 7633
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7634
    :pswitch_4
    const/4 v2, 0x1

    .restart local v0    # "window":I
    :goto_2
    if-gt v2, v3, :cond_0

    .line 7635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/FY;->A0E(Z)V

    .line 7637
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7638
    :pswitch_5
    const/4 v2, 0x1

    .restart local v0    # "window":I
    :goto_3
    if-gt v2, v3, :cond_0

    .line 7639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A0E(Z)V

    .line 7641
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7642
    :pswitch_6
    const/4 v2, 0x1

    .restart local v0    # "window":I
    :goto_4
    if-gt v2, v3, :cond_0

    .line 7643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7644
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    .line 7645
    .local v3, "cueBuilder":Lcom/facebook/ads/redexgen/X/FY;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FY;->A0I()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A0E(Z)V

    .line 7646
    .end local v3    # "cueBuilder":Lcom/facebook/ads/redexgen/X/FY;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7647
    :pswitch_7
    const/4 v2, 0x1

    .local v0, "i":I
    :goto_5
    if-gt v2, v3, :cond_0

    .line 7648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A08()V

    .line 7650
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7651
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7652
    goto/16 :goto_0

    .line 7653
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A08()V

    .line 7654
    goto/16 :goto_0

    .line 7655
    :pswitch_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A0G()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto/16 :goto_0

    .line 7657
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A03()V

    .line 7658
    goto/16 :goto_0

    .line 7659
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A0G()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7660
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto/16 :goto_0

    .line 7661
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A04()V

    .line 7662
    goto/16 :goto_0

    .line 7663
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A0G()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "sx3hxSZmvwYc7KEcLHD7P9DXHyFO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_8

    .line 7664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto/16 :goto_0

    .line 7665
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A05()V

    .line 7666
    goto/16 :goto_0

    .line 7667
    .end local v0    # "i":I
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FY;->A0G()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto/16 :goto_0

    .line 7669
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A06()V

    .line 7670
    goto/16 :goto_0

    .line 7671
    :pswitch_e
    add-int/lit16 v1, p1, -0x98

    .line 7672
    .local v0, "window":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/37;->A0E(I)V

    .line 7673
    iget v0, p0, Lcom/facebook/ads/redexgen/X/37;->A00:I

    if-eq v0, v1, :cond_0

    .line 7674
    iput v1, p0, Lcom/facebook/ads/redexgen/X/37;->A00:I

    .line 7675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private A0C(I)V
    .locals 4

    .line 7676
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 7677
    :cond_0
    :goto_0
    return-void

    .line 7678
    :cond_1
    const/16 v3, 0xf

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "CPm7fUwNYaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-gt p1, v3, :cond_2

    .line 7679
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0

    .line 7680
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 7681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0

    .line 7682
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 7683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(I)V
    .locals 2

    .line 7684
    const/16 v0, 0x87

    if-gt p1, v0, :cond_1

    .line 7685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7686
    .end local v0
    :cond_0
    :goto_0
    return-void

    .line 7687
    :cond_1
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_2

    .line 7688
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0

    .line 7689
    :cond_2
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    .line 7690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7691
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v0

    .line 7692
    .local v0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    goto :goto_0
.end method

.method private A0E(I)V
    .locals 18

    .line 7693
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    aget-object v5, v0, p1

    .line 7694
    .local v1, "cueBuilder":Lcom/facebook/ads/redexgen/X/FY;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7695
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v6

    .line 7696
    .local v15, "visible":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v7

    .line 7697
    .local v16, "rowLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v8

    .line 7698
    .local v17, "columnLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v9

    .line 7699
    .local p0, "priority":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A0F()Z

    move-result v10

    .line 7700
    .local p1, "relativePositioning":Z
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v11

    .line 7701
    .local p2, "verticalAnchor":I
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v12

    .line 7702
    .local p3, "horizontalAnchor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v15

    .line 7703
    .local p4, "anchorId":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v13

    .line 7704
    .local p5, "rowCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7705
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v14

    .line 7706
    .local p6, "columnCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hb;->A08(I)V

    .line 7707
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v16

    .line 7708
    .local p7, "windowStyle":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/37;->A06:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hb;->A04(I)I

    move-result v17

    .line 7709
    .local p8, "penStyle":I
    invoke-virtual/range {v5 .. v17}, Lcom/facebook/ads/redexgen/X/FY;->A0F(ZZZIZIIIIIII)V

    .line 7710
    return-void
.end method

.method private A0F(I)V
    .locals 2

    .line 7711
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 7712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x266b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7713
    :goto_0
    return-void

    .line 7714
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    goto :goto_0
.end method

.method private A0G(I)V
    .locals 2

    .line 7715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7716
    return-void
.end method

.method private A0H(I)V
    .locals 4

    .line 7717
    const/16 v1, 0x20

    if-eq p1, v1, :cond_d

    const/16 v3, 0x21

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "TjNU7sM0qcrDDlKDBNJucIDCApAP1Pdy"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "pfZt7pU3RJGTC6nTuniMjXABkJRZbHtR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_c

    const/16 v0, 0x25

    if-eq p1, v0, :cond_b

    const/16 v3, 0x2a

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "lyEyXhqyPe7L5lqXCRc7BrU4YPgQ4V4O"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_a

    :goto_0
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_8

    const/16 v0, 0x39

    if-eq p1, v0, :cond_7

    const/16 v3, 0x3a

    sget-object v1, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "8lgF7IC9m9yEVEzXFwWrhjMUyWqpuIrN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "eGYv73Qaw9V7iDP1dT0bDNqvwZkBXcav"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_5

    :goto_1
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 7718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13a

    const/16 v1, 0x16

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7719
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "iSzI7swYDbYFGrMgaDqgyT5Fcxzeg26a"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ZnY27SJxiCOHXUIA3Y57vKzndxozD70W"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_5

    goto :goto_1

    .line 7720
    :cond_2
    if-eq p1, v3, :cond_a

    goto :goto_0

    .line 7721
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x215b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7722
    goto/16 :goto_2

    .line 7723
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x215c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7724
    goto/16 :goto_2

    .line 7725
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x215d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7726
    goto/16 :goto_2

    .line 7727
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x215e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7728
    goto/16 :goto_2

    .line 7729
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2502

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7730
    goto/16 :goto_2

    .line 7731
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2510

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7732
    goto/16 :goto_2

    .line 7733
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2514

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7734
    goto/16 :goto_2

    .line 7735
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2500

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7736
    goto/16 :goto_2

    .line 7737
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2518

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7738
    goto/16 :goto_2

    .line 7739
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x250c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7740
    goto/16 :goto_2

    .line 7741
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2588

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7742
    goto/16 :goto_2

    .line 7743
    :pswitch_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2018

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7744
    goto/16 :goto_2

    .line 7745
    :pswitch_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2019

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7746
    goto/16 :goto_2

    .line 7747
    :pswitch_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x201c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7748
    goto/16 :goto_2

    .line 7749
    :pswitch_e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x201d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7750
    goto :goto_2

    .line 7751
    :pswitch_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2022

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7752
    goto :goto_2

    .line 7753
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2120

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7754
    goto :goto_2

    .line 7755
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x153

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7756
    goto :goto_2

    .line 7757
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    const/16 v0, 0x161

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7758
    goto :goto_2

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "F"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x161

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    goto :goto_2

    .line 7759
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2122

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7760
    goto :goto_2

    .line 7761
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x178

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7762
    goto :goto_2

    .line 7763
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7764
    goto :goto_2

    .line 7765
    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x160

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7766
    goto :goto_2

    .line 7767
    :cond_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x2026

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7768
    goto :goto_2

    .line 7769
    :cond_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7770
    goto :goto_2

    .line 7771
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7772
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private A0I(I)V
    .locals 4

    .line 7773
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 7774
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x33c4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    .line 7775
    :goto_0
    return-void

    .line 7776
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x150

    const/16 v1, 0x16

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/FY;->A09(C)V

    goto :goto_0
.end method


# virtual methods
.method public final A0L()Lcom/facebook/ads/redexgen/X/FR;
    .locals 2

    .line 7778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A03:Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A04:Ljava/util/List;

    .line 7779
    new-instance v0, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V3;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic A0M()Lcom/facebook/ads/redexgen/X/BK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 7780
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0M()Lcom/facebook/ads/redexgen/X/BK;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0N()Lcom/facebook/ads/redexgen/X/BJ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 7781
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BI;->A0N()Lcom/facebook/ads/redexgen/X/BJ;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0O(Lcom/facebook/ads/redexgen/X/BK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FS;
        }
    .end annotation

    .line 7782
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BI;->A0O(Lcom/facebook/ads/redexgen/X/BK;)V

    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/BK;)V
    .locals 8

    .line 7783
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 7784
    .local v0, "inputBufferData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 7785
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    const/4 v7, 0x3

    if-lt v0, v7, :cond_9

    .line 7786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 7787
    .local v1, "ccTypeAndValid":I
    and-int/lit8 v3, v0, 0x3

    .line 7788
    .local v3, "ccType":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v6, 0x1

    if-ne v1, v0, :cond_8

    const/4 v1, 0x1

    .line 7789
    .local v4, "ccValid":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    int-to-byte v5, v0

    .line 7790
    .local v6, "ccData1":B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A07:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    int-to-byte v4, v0

    .line 7791
    .local p0, "ccData2":B
    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    if-eq v3, v7, :cond_1

    goto :goto_0

    .line 7792
    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 7793
    :cond_2
    if-ne v3, v7, :cond_4

    .line 7794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A02()V

    .line 7795
    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v2, v0, 0x6

    .line 7796
    .local v2, "sequenceNumber":I
    and-int/lit8 v1, v5, 0x3f

    .line 7797
    .local v5, "packetSize":I
    if-nez v1, :cond_3

    .line 7798
    const/16 v1, 0x40

    .line 7799
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/FZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/FZ;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    .line 7800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/FZ;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    aput-byte v4, v3, v1

    .line 7801
    .end local v2    # "sequenceNumber":I
    .end local v5    # "packetSize":I
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FZ;->A01:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v6

    if-ne v1, v0, :cond_0

    .line 7802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A02()V

    goto :goto_0

    .line 7803
    :cond_4
    if-ne v3, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 7804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    if-nez v0, :cond_6

    .line 7805
    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7806
    :cond_6
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/FZ;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    aput-byte v5, v3, v1

    .line 7807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/FZ;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/FZ;->A00:I

    aput-byte v4, v3, v1

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/37;->A0A:[Ljava/lang/String;

    const-string v1, "q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "W"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v2, 0xdb

    const/16 v1, 0x37

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/37;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7808
    goto/16 :goto_0

    .line 7809
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 7810
    :cond_9
    return-void
.end method

.method public final A0R()Z
    .locals 2

    .line 7811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A03:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A04:Ljava/util/List;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic AE4()V
    .locals 0

    .line 7812
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BI;->AE4()V

    return-void
.end method

.method public final bridge synthetic AF5(J)V
    .locals 0

    .line 7813
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BI;->AF5(J)V

    return-void
.end method

.method public final flush()V
    .locals 3

    .line 7814
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BI;->flush()V

    .line 7815
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A03:Ljava/util/List;

    .line 7816
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A04:Ljava/util/List;

    .line 7817
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/37;->A00:I

    .line 7818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/37;->A08:[Lcom/facebook/ads/redexgen/X/FY;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/37;->A00:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/37;->A01:Lcom/facebook/ads/redexgen/X/FY;

    .line 7819
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;->A08()V

    .line 7820
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/37;->A02:Lcom/facebook/ads/redexgen/X/FZ;

    .line 7821
    return-void
.end method
