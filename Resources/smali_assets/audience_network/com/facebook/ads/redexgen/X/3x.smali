.class public final Lcom/facebook/ads/redexgen/X/3x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3w;,
        Lcom/facebook/ads/redexgen/X/3v;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/3v;

.field public final A01:Lcom/facebook/ads/redexgen/X/3w;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 10830
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QoGKHhEqLDc7cPbroRD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LQzzwNJ4o6QHlfYkxXGOUA5ejYw8qpDj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6ipC3ASGLl4rMOedI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OPBJh0aCf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l4bQelOwEyQeTpTSi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DWBJmVB67PV4ItRyT2e9caL16z1NK91I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0G1mJvoVA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nRnK55wdJbrp31Rh0MWe0TNMbF4aeg8Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3x;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3w;)V
    .locals 1

    .line 10831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10832
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    .line 10833
    new-instance v0, Lcom/facebook/ads/redexgen/X/3v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3v;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    .line 10834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    .line 10835
    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 10836
    const/4 v3, -0x1

    if-gez p1, :cond_0

    .line 10837
    return v3

    .line 10838
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3w;->A66()I

    move-result v2

    .line 10839
    .local v1, "limit":I
    move v1, p1

    .line 10840
    .local v2, "offset":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 10841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A03(I)I

    move-result v0

    .line 10842
    .local v3, "removedBefore":I
    sub-int v0, v1, v0

    sub-int v0, p1, v0

    .line 10843
    .local p0, "diff":I
    if-nez v0, :cond_1

    .line 10844
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10845
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10846
    :cond_1
    add-int/2addr v1, v0

    .line 10847
    .end local v3    # "removedBefore":I
    .end local p0    # "diff":I
    goto :goto_0

    .line 10848
    :cond_2
    return v1

    .line 10849
    :cond_3
    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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
    .locals 4

    const/16 v3, 0x5a

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const-string v1, "YzFnrN17WwgSKMGcQI3u7PJ5Pdf81qGi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3x;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x51t
        -0x5dt
        -0x15t
        -0x14t
        -0x19t
        -0x19t
        -0x18t
        -0xft
        -0x5dt
        -0x11t
        -0x14t
        -0xat
        -0x9t
        -0x43t
        -0x17t
        -0x19t
        -0x12t
        -0x22t
        -0x1dt
        -0x24t
        -0x6bt
        -0x17t
        -0x1ct
        -0x6bt
        -0x16t
        -0x1dt
        -0x23t
        -0x22t
        -0x27t
        -0x26t
        -0x6bt
        -0x2at
        -0x6bt
        -0x15t
        -0x22t
        -0x26t
        -0x14t
        -0x6bt
        -0x17t
        -0x23t
        -0x2at
        -0x17t
        -0x6bt
        -0x14t
        -0x2at
        -0x18t
        -0x6bt
        -0x1dt
        -0x1ct
        -0x17t
        -0x6bt
        -0x23t
        -0x22t
        -0x27t
        -0x27t
        -0x26t
        -0x1dt
        -0x23t
        -0x30t
        -0x34t
        -0x22t
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x38t
        -0x79t
        -0x36t
        -0x31t
        -0x30t
        -0x2dt
        -0x35t
        -0x6dt
        -0x79t
        -0x36t
        -0x38t
        -0x2bt
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x31t
        -0x30t
        -0x35t
        -0x34t
        -0x79t
    .end array-data
.end method

.method private A03(Landroid/view/View;)V
    .locals 1

    .line 10850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->AAu(Landroid/view/View;)V

    .line 10852
    return-void
.end method

.method private A04(Landroid/view/View;)Z
    .locals 1

    .line 10853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->ABQ(Landroid/view/View;)V

    .line 10855
    const/4 v0, 0x1

    return v0

    .line 10856
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A05()I
    .locals 2

    .line 10857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3w;->A66()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A06()I
    .locals 1

    .line 10858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3w;->A66()I

    move-result v0

    return v0
.end method

.method public final A07(Landroid/view/View;)I
    .locals 3

    .line 10859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A8U(Landroid/view/View;)I

    move-result v2

    .line 10860
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 10861
    return v1

    .line 10862
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3v;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10863
    return v1

    .line 10864
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3v;->A03(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public final A08(I)Landroid/view/View;
    .locals 5

    .line 10865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 10866
    .local v0, "count":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 10867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 10868
    .local v2, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3w;->A69(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v1

    .line 10869
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 10870
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10871
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10872
    return-object v2

    .line 10873
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/4r;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10874
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A09(I)Landroid/view/View;
    .locals 2

    .line 10875
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A00(I)I

    move-result v1

    .line 10876
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3w;->A65(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(I)Landroid/view/View;
    .locals 1

    .line 10877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A65(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()V
    .locals 3

    .line 10878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3v;->A04()V

    .line 10879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 10880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3w;->ABQ(Landroid/view/View;)V

    .line 10881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10882
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10883
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3w;->AEC()V

    .line 10884
    return-void
.end method

.method public final A0C(I)V
    .locals 2

    .line 10885
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A00(I)I

    move-result v1

    .line 10886
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A09(I)Z

    .line 10887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3w;->A4p(I)V

    .line 10888
    return-void
.end method

.method public final A0D(I)V
    .locals 3

    .line 10889
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A00(I)I

    move-result v2

    .line 10890
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3w;->A65(I)Landroid/view/View;

    move-result-object v1

    .line 10891
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 10892
    return-void

    .line 10893
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3v;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10894
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3x;->A04(Landroid/view/View;)Z

    .line 10895
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3w;->AEG(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    .line 10896
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const-string v1, "KJlsfCUfVwwQNNRDjM0AzdkkAy1m1QjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 4

    .line 10897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A8U(Landroid/view/View;)I

    move-result v1

    .line 10898
    .local v0, "offset":I
    if-ltz v1, :cond_0

    .line 10899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A06(I)V

    .line 10900
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A03(Landroid/view/View;)V

    .line 10901
    return-void

    .line 10902
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Landroid/view/View;)V
    .locals 2

    .line 10903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A8U(Landroid/view/View;)I

    move-result v1

    .line 10904
    .local v0, "index":I
    if-gez v1, :cond_0

    .line 10905
    return-void

    .line 10906
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10907
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A04(Landroid/view/View;)Z

    .line 10908
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3w;->AEG(I)V

    .line 10909
    return-void
.end method

.method public final A0G(Landroid/view/View;)V
    .locals 4

    .line 10910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A8U(Landroid/view/View;)I

    move-result v1

    .line 10911
    .local v0, "offset":I
    if-ltz v1, :cond_1

    .line 10912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A05(I)V

    .line 10914
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A04(Landroid/view/View;)Z

    .line 10915
    return-void

    .line 10916
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x2b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10917
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5

    .line 10918
    if-gez p2, :cond_0

    .line 10919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3w;->A66()I

    move-result v4

    .line 10920
    .local v0, "offset":I
    .restart local v0    # "offset":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10921
    .end local v0    # "offset":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3x;->A00(I)I

    move-result v4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const-string v1, "KHr0McsaN13zWmBdzhmfm62h5mt8zSB0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4, p4}, Lcom/facebook/ads/redexgen/X/3v;->A07(IZ)V

    .line 10922
    if-eqz p4, :cond_2

    .line 10923
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A03(Landroid/view/View;)V

    .line 10924
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1, v4, p3}, Lcom/facebook/ads/redexgen/X/3w;->A3U(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 10925
    return-void
.end method

.method public final A0I(Landroid/view/View;IZ)V
    .locals 2

    .line 10926
    if-gez p2, :cond_1

    .line 10927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3w;->A66()I

    move-result v1

    .line 10928
    .local v0, "offset":I
    .restart local v0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/3v;->A07(IZ)V

    .line 10929
    if-eqz p3, :cond_0

    .line 10930
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A03(Landroid/view/View;)V

    .line 10931
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/3w;->addView(Landroid/view/View;I)V

    .line 10932
    return-void

    .line 10933
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3x;->A00(I)I

    move-result v1

    goto :goto_0
.end method

.method public final A0J(Landroid/view/View;Z)V
    .locals 1

    .line 10934
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/3x;->A0I(Landroid/view/View;IZ)V

    .line 10935
    return-void
.end method

.method public final A0K(Landroid/view/View;)Z
    .locals 1

    .line 10936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final A0L(Landroid/view/View;)Z
    .locals 4

    .line 10937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3w;->A8U(Landroid/view/View;)I

    move-result v1

    .line 10938
    .local v0, "index":I
    const/4 v3, 0x1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 10939
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A04(Landroid/view/View;)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 10940
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3x;->A04:[Ljava/lang/String;

    const-string v1, "HipCYWSrBpzIS13Odtj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 10941
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3v;->A09(I)Z

    .line 10943
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A04(Landroid/view/View;)Z

    .line 10944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A01:Lcom/facebook/ads/redexgen/X/3w;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3w;->AEG(I)V

    .line 10945
    return v3

    .line 10946
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 10947
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/3v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3v;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
