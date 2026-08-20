.class public final Lcom/facebook/ads/redexgen/X/Fz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCssStyle$OptionalBoolean;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/text/Layout$Alignment;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A0E:Z

.field public A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 34573
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "a0j0pjJovXsqGpLV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nOyRGrgn0RrQrx8RLh1IVysMIGGZ9zSU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HhM8cHVoe7oP095HvM3MDl3FTOytY8Nt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qV96UZYP0XVtF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KdjCZLvvBrBGDDTWJomEgtFOXhZQvXq0q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EURW7oGImTlyr4LdZ1NjIT6oNREHOO5j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RHBOYojiC1ffUGCaEMtUODJeCNdosg3N"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TICGsHQsoGjdDQAevjnKsbeUNwnFU3hV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fz;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34575
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fz;->A03()V

    .line 34576
    return-void
.end method

.method public static A00(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 34577
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 34578
    :cond_0
    return p0

    .line 34579
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int v1, p0, p3

    :cond_2
    return v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fz;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

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

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fz;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        -0x6ct
        -0x6at
        -0x62t
        -0x66t
        -0x5bt
        -0x5et
        -0x58t
        -0x5ft
        -0x69t
        0x53t
        -0x6at
        -0x5et
        -0x61t
        -0x5et
        -0x5bt
        0x53t
        -0x5ft
        -0x5et
        -0x59t
        0x53t
        -0x69t
        -0x68t
        -0x67t
        -0x64t
        -0x5ft
        -0x68t
        -0x69t
        0x61t
        -0x7et
        -0x55t
        -0x56t
        -0x50t
        0x5ct
        -0x61t
        -0x55t
        -0x58t
        -0x55t
        -0x52t
        0x5ct
        -0x56t
        -0x55t
        -0x50t
        0x5ct
        -0x60t
        -0x5ft
        -0x5et
        -0x5bt
        -0x56t
        -0x5ft
        -0x60t
    .end array-data
.end method

.method private final A03()V
    .locals 3

    .line 34580
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A01(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0A:Ljava/lang/String;

    .line 34581
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Ljava/lang/String;

    .line 34582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Ljava/util/List;

    .line 34583
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Ljava/lang/String;

    .line 34584
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    .line 34585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0F:Z

    .line 34586
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0E:Z

    .line 34587
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    .line 34588
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    .line 34589
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    .line 34590
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    .line 34591
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    .line 34592
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    .line 34593
    return-void
.end method


# virtual methods
.method public final A04()F
    .locals 1

    .line 34594
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:F

    return v0
.end method

.method public final A05()I
    .locals 3

    .line 34595
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0E:Z

    if-eqz v0, :cond_0

    .line 34596
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A01:I

    return v0

    .line 34597
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()I
    .locals 3

    .line 34598
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0F:Z

    if-eqz v0, :cond_0

    .line 34599
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A03:I

    return v0

    .line 34600
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0x16

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A07()I
    .locals 1

    .line 34601
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    return v0
.end method

.method public final A08()I
    .locals 4

    .line 34602
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    if-ne v0, v1, :cond_0

    .line 34603
    return v1

    .line 34604
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    if-ne v0, v2, :cond_1

    const/4 v3, 0x2

    :cond_1
    or-int/2addr v1, v3

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A09(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 34605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0H:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 34606
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0H:[Ljava/lang/String;

    const-string v1, "uGADXBaYz1rV8w4N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "04kRdzF0lWsSB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Ljava/util/List;

    .line 34607
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Ljava/lang/String;

    .line 34608
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34609
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34610
    :cond_1
    const/4 v2, 0x0

    .line 34611
    .local v0, "score":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0A:Ljava/lang/String;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 34612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 34613
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v2, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A00(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 34614
    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 34615
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 34616
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v2, v0

    .line 34617
    return v2
.end method

.method public final A0A()Landroid/text/Layout$Alignment;
    .locals 1

    .line 34618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/Fz;
    .locals 1

    .line 34619
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A01:I

    .line 34620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0E:Z

    .line 34621
    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/Fz;
    .locals 1

    .line 34622
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A03:I

    .line 34623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0F:Z

    .line 34624
    return-object p0
.end method

.method public final A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Fz;
    .locals 1

    .line 34625
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hs;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    .line 34626
    return-object p0
.end method

.method public final A0E(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .locals 0

    .line 34627
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    .line 34628
    return-object p0
.end method

.method public final A0F(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .locals 0

    .line 34629
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    .line 34630
    return-object p0
.end method

.method public final A0G(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .locals 0

    .line 34631
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    .line 34632
    return-object p0
.end method

.method public final A0H()Ljava/lang/String;
    .locals 1

    .line 34633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0I(Ljava/lang/String;)V
    .locals 0

    .line 34634
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0A:Ljava/lang/String;

    .line 34635
    return-void
.end method

.method public final A0J(Ljava/lang/String;)V
    .locals 0

    .line 34636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Ljava/lang/String;

    .line 34637
    return-void
.end method

.method public final A0K(Ljava/lang/String;)V
    .locals 0

    .line 34638
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Ljava/lang/String;

    .line 34639
    return-void
.end method

.method public final A0L([Ljava/lang/String;)V
    .locals 1

    .line 34640
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Ljava/util/List;

    .line 34641
    return-void
.end method

.method public final A0M()Z
    .locals 1

    .line 34642
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0E:Z

    return v0
.end method

.method public final A0N()Z
    .locals 1

    .line 34643
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0F:Z

    return v0
.end method

.method public final A0O()Z
    .locals 2

    .line 34644
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0P()Z
    .locals 2

    .line 34645
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
