.class public abstract Lcom/facebook/ads/redexgen/X/4Z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/facebook/ads/redexgen/X/4X;
    }
.end annotation


# static fields
.field public static A0I:[B

.field public static A0J:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/3x;

.field public A02:Lcom/facebook/ads/redexgen/X/4m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/E9;

.field public A04:Lcom/facebook/ads/redexgen/X/4w;

.field public A05:Lcom/facebook/ads/redexgen/X/4w;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:Z

.field public A0F:Z

.field public final A0G:Lcom/facebook/ads/redexgen/X/4u;

.field public final A0H:Lcom/facebook/ads/redexgen/X/4u;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 11622
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VrTEPZjwbsMyuvHOm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2WwBzOWctlsBfaK16SO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SN9IkStz5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kDHla2kaeJhueA2usdy0jZceB2KGO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oz8ehwpCKAgd43CqPtwSSE9zN5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pRsAYaXPUkY6EiG3qKZOmbtQ8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4Z;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11624
    new-instance v0, Lcom/facebook/ads/redexgen/X/YW;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YW;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/4u;

    .line 11625
    new-instance v0, Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YV;-><init>(Lcom/facebook/ads/redexgen/X/4Z;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    .line 11626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0G:Lcom/facebook/ads/redexgen/X/4u;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4w;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4w;-><init>(Lcom/facebook/ads/redexgen/X/4u;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A04:Lcom/facebook/ads/redexgen/X/4w;

    .line 11627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0H:Lcom/facebook/ads/redexgen/X/4u;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4w;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4w;-><init>(Lcom/facebook/ads/redexgen/X/4u;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A05:Lcom/facebook/ads/redexgen/X/4w;

    .line 11628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A09:Z

    .line 11629
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:Z

    .line 11630
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A06:Z

    .line 11631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0F:Z

    .line 11632
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Z

    return-void
.end method

.method public static A00(III)I
    .locals 3

    .line 11633
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 11634
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 11635
    .local v1, "size":I
    const/high16 v0, -0x80000000

    if-eq v2, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    .line 11636
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 11637
    :cond_0
    return v1

    .line 11638
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(IIIIZ)I
    .locals 6

    .line 11639
    sub-int/2addr p0, p2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 11640
    .local v0, "size":I
    const/4 v3, 0x0

    .line 11641
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 11642
    .local v2, "resultMode":I
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v1, -0x2

    const/4 v0, -0x1

    if-eqz p4, :cond_1

    .line 11643
    if-ltz p3, :cond_5

    .line 11644
    move v3, p3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11645
    :cond_1
    if-ltz p3, :cond_2

    .line 11646
    move v3, p3

    .line 11647
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 11648
    :cond_2
    if-ne p3, v0, :cond_3

    .line 11649
    move v3, p0

    .line 11650
    move v2, p1

    goto :goto_0

    .line 11651
    :cond_3
    if-ne p3, v1, :cond_c

    .line 11652
    move v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    .line 11653
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "mbdH64CAyADsqDHKi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "uvhJn14mL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_a

    .line 11654
    :cond_4
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 11655
    :cond_5
    if-ne p3, v0, :cond_8

    .line 11656
    if-eq p1, v4, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_7

    goto :goto_0

    .line 11657
    :cond_6
    const/4 v3, 0x0

    .line 11658
    const/4 v2, 0x0

    goto :goto_0

    .line 11659
    :cond_7
    move v3, p0

    .line 11660
    move v2, p1

    .line 11661
    goto :goto_0

    .line 11662
    :cond_8
    if-ne p3, v1, :cond_c

    .line 11663
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_9

    .line 11664
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "MUtJOOU4WeR0TtYG1JH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    .line 11665
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 11666
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "ru0BYCJI67FO4KgBABZqajada"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 11667
    :cond_c
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private final A02(Landroid/view/View;)I
    .locals 1

    .line 11668
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private final A03(Landroid/view/View;)I
    .locals 1

    .line 11669
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private final A04(Landroid/view/View;)I
    .locals 1

    .line 11670
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private final A05(Landroid/view/View;)I
    .locals 1

    .line 11671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 11672
    const/4 v0, 0x0

    return v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0I:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 4

    const/16 v0, 0x114

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "kyP20liVKsmkdJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4Z;->A0I:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x2t
        0x21t
        0x21t
        0x22t
        0x21t
        -0x23t
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x25t
        0x1et
        0x30t
        -0x23t
        0xft
        0x22t
        0x20t
        0x36t
        0x20t
        0x29t
        0x22t
        0x2ft
        0x13t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x1et
        0x30t
        -0x23t
        0x2dt
        0x1et
        0x2ft
        0x22t
        0x2bt
        0x31t
        -0x23t
        0x1ft
        0x32t
        0x31t
        -0x23t
        0x33t
        0x26t
        0x22t
        0x34t
        -0x23t
        0x26t
        0x30t
        -0x23t
        0x2bt
        0x2ct
        0x31t
        -0x23t
        0x1et
        -0x23t
        0x2ft
        0x22t
        0x1et
        0x29t
        -0x23t
        0x20t
        0x25t
        0x26t
        0x29t
        0x21t
        -0x15t
        -0x23t
        0x12t
        0x2bt
        0x23t
        0x26t
        0x29t
        0x31t
        0x22t
        0x2ft
        0x22t
        0x21t
        -0x23t
        0x26t
        0x2bt
        0x21t
        0x22t
        0x35t
        -0x9t
        -0x23t
        -0x5t
        0x8t
        0x8t
        0x9t
        0xet
        -0x46t
        0x7t
        0x9t
        0x10t
        -0x1t
        -0x46t
        -0x5t
        -0x46t
        -0x3t
        0x2t
        0x3t
        0x6t
        -0x2t
        -0x46t
        0x0t
        0xct
        0x9t
        0x7t
        -0x46t
        0x8t
        0x9t
        0x8t
        -0x39t
        -0x1t
        0x12t
        0x3t
        0xdt
        0xet
        0x3t
        0x8t
        0x1t
        -0x46t
        0x3t
        0x8t
        -0x2t
        -0x1t
        0x12t
        -0x2ct
        -0x50t
        -0x3dt
        -0x3ft
        -0x29t
        -0x3ft
        -0x36t
        -0x3dt
        -0x30t
        -0x4ct
        -0x39t
        -0x3dt
        -0x2bt
        0x9t
        0x1ft
        0x25t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x1ft
        0x26t
        0x15t
        0x22t
        0x22t
        0x19t
        0x14t
        0x15t
        -0x30t
        0x1ft
        0x1et
        -0x4t
        0x11t
        0x29t
        0x1ft
        0x25t
        0x24t
        -0xdt
        0x18t
        0x19t
        0x1ct
        0x14t
        0x22t
        0x15t
        0x1et
        -0x28t
        0x2t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x30t
        0x22t
        0x15t
        0x13t
        0x29t
        0x13t
        0x1ct
        0x15t
        0x22t
        -0x24t
        -0x30t
        0x3t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x30t
        0x23t
        0x24t
        0x11t
        0x24t
        0x15t
        -0x27t
        -0x30t
        -0x4et
        -0x38t
        -0x32t
        0x79t
        -0x3at
        -0x32t
        -0x34t
        -0x33t
        0x79t
        -0x38t
        -0x31t
        -0x42t
        -0x35t
        -0x35t
        -0x3et
        -0x43t
        -0x42t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        -0x54t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x53t
        -0x38t
        -0x57t
        -0x38t
        -0x34t
        -0x3et
        -0x33t
        -0x3et
        -0x38t
        -0x39t
        0x79t
        -0x33t
        -0x38t
        0x79t
        -0x34t
        -0x32t
        -0x37t
        -0x37t
        -0x38t
        -0x35t
        -0x33t
        0x79t
        -0x34t
        -0x3at
        -0x38t
        -0x38t
        -0x33t
        -0x3ft
        0x79t
        -0x34t
        -0x44t
        -0x35t
        -0x38t
        -0x3bt
        -0x3bt
        -0x3et
        -0x39t
        -0x40t
    .end array-data
.end method

.method private final A09(I)V
    .locals 1

    .line 11673
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0C(ILandroid/view/View;)V

    .line 11674
    return-void
.end method

.method private final A0A(I)V
    .locals 1

    .line 11675
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11676
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 11677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A0D(I)V

    .line 11678
    :cond_0
    return-void
.end method

.method private final A0B(II)V
    .locals 4

    .line 11679
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11680
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 11681
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A09(I)V

    .line 11682
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0E(Landroid/view/View;I)V

    .line 11683
    return-void

    .line 11684
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x2c

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 11685
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0C(ILandroid/view/View;)V
    .locals 1

    .line 11686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A0C(I)V

    .line 11687
    return-void
.end method

.method private final A0D(Landroid/view/View;)V
    .locals 1

    .line 11688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A0F(Landroid/view/View;)V

    .line 11689
    return-void
.end method

.method private final A0E(Landroid/view/View;I)V
    .locals 1

    .line 11690
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0F(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4a;)V

    .line 11691
    return-void
.end method

.method private final A0F(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4a;)V
    .locals 5

    .line 11692
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v4

    .line 11693
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4z;->A09(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 11695
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/3x;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 11696
    return-void

    .line 11697
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4z;->A0A(Lcom/facebook/ads/redexgen/X/4r;)V

    goto :goto_0
.end method

.method private A0G(Landroid/view/View;IZ)V
    .locals 8

    .line 11698
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v2

    .line 11699
    .local v0, "holder":Lcom/facebook/ads/redexgen/X/4r;
    if-nez p3, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11700
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4z;->A09(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 11701
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/4a;

    .line 11702
    .local v1, "lp":Lcom/facebook/ads/redexgen/X/4a;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0i()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11703
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11704
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0S()V

    .line 11705
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/3x;->A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 11706
    :cond_2
    :goto_2
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4a;->A02:Z

    if-eqz v0, :cond_3

    .line 11707
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11708
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/4a;->A02:Z

    .line 11709
    :cond_3
    return-void

    .line 11710
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0O()V

    goto :goto_1

    .line 11711
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    sget-object v3, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "5ABI9jSeQ"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ne v7, v6, :cond_8

    .line 11712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A07(Landroid/view/View;)I

    move-result v3

    .line 11713
    .local v2, "currentIndex":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 11714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A05()I

    move-result p2

    .line 11715
    :cond_7
    if-eq v3, v1, :cond_a

    .line 11716
    if-eq v3, p2, :cond_2

    .line 11717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {v0, v3, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0B(II)V

    goto :goto_2

    .line 11718
    .end local v2    # "currentIndex":I
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, p1, p2, v4}, Lcom/facebook/ads/redexgen/X/3x;->A0I(Landroid/view/View;IZ)V

    .line 11719
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/4a;->A01:Z

    .line 11720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4m;->A0F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4m;->A0C(Landroid/view/View;)V

    goto :goto_2

    .line 11722
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4z;->A0A(Lcom/facebook/ads/redexgen/X/4r;)V

    goto/16 :goto_0

    .line 11723
    .restart local v2    # "currentIndex":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x55

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 11724
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0H(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 11725
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/E9;->A0o(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11726
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4m;)V
    .locals 0

    .line 11727
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0M(Lcom/facebook/ads/redexgen/X/4m;)V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/4h;ILandroid/view/View;)V
    .locals 2

    .line 11728
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v1

    .line 11729
    .local v0, "viewHolder":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11730
    return-void

    .line 11731
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    .line 11732
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11733
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0A(I)V

    .line 11734
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4h;->A0b(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 11735
    :goto_0
    return-void

    .line 11736
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A09(I)V

    .line 11737
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/4h;->A0W(Landroid/view/View;)V

    .line 11738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0t:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4z;->A0C(Lcom/facebook/ads/redexgen/X/4r;)V

    goto :goto_0
.end method

.method private final A0K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .line 11739
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    .line 11740
    :cond_0
    return-void

    .line 11741
    :cond_1
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "A1LbQwkKC8kdEmdjm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mpAFCzQjd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/E9;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 11742
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E9;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 11743
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E9;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 11744
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/E9;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11745
    :cond_2
    :goto_0
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    .line 11746
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    if-eqz v0, :cond_3

    .line 11747
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 11748
    :cond_3
    return-void

    .line 11749
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 11750
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0L(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 4

    .line 11751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E9;->canScrollVertically(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E9;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11752
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3d;->A0N(I)V

    .line 11753
    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3d;->A0R(Z)V

    .line 11754
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/E9;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/E9;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11755
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3d;->A0N(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11756
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "WKK7ZU1nOyoZ4isR3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "S1xUaVTVF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/3d;->A0R(Z)V

    .line 11757
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0r(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v3

    .line 11758
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0q(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v2

    .line 11759
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0P(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Z

    move-result v1

    .line 11760
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A06(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I

    move-result v0

    .line 11761
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3a;->A00(IIZI)Lcom/facebook/ads/redexgen/X/3a;

    move-result-object v0

    .line 11762
    .local v0, "collectionInfo":Lcom/facebook/ads/redexgen/X/3a;
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/3d;->A0P(Ljava/lang/Object;)V

    .line 11763
    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4m;)V
    .locals 1

    .line 11764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    if-ne v0, p1, :cond_0

    .line 11765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    .line 11766
    :cond_0
    return-void
.end method

.method private final A0N()Z
    .locals 1

    .line 11767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4m;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0O(III)Z
    .locals 5

    .line 11768
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 11769
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 11770
    .local v1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 11771
    return v2

    .line 11772
    :cond_0
    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    if-eq v4, v1, :cond_4

    if-eqz v4, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v4, v0, :cond_1

    .line 11773
    return v2

    .line 11774
    :cond_1
    if-ne v3, p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 11775
    :cond_3
    return v0

    .line 11776
    :cond_4
    if-lt v3, p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private final A0P(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Z
    .locals 1

    .line 11777
    const/4 v0, 0x0

    return v0
.end method

.method private final A0Q(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;ILandroid/os/Bundle;)Z
    .locals 8

    .line 11778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 11779
    return v7

    .line 11780
    :cond_0
    const/4 v5, 0x0

    .local v2, "vScroll":I
    const/4 v4, 0x0

    .line 11781
    .local v3, "hScroll":I
    const/16 v0, 0x1000

    const/4 v6, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    .line 11782
    :cond_1
    :goto_0
    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 11783
    return v7

    .line 11784
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/E9;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11785
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v5, v1

    .line 11786
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/E9;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11787
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v4, v1

    goto :goto_0

    .line 11788
    :cond_4
    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/E9;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11789
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v5, v0

    .line 11790
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/E9;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11791
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "6TTpYbQ6a4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_0

    .line 11792
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/E9;->scrollBy(II)V

    .line 11793
    return v6

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0R(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 11794
    const/4 v0, 0x0

    return v0
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/E9;II)Z
    .locals 8

    .line 11795
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 11796
    .local v0, "focusedChild":Landroid/view/View;
    const/4 v6, 0x0

    if-nez v7, :cond_0

    .line 11797
    return v6

    .line 11798
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v5

    .line 11799
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v4

    .line 11800
    .local v3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v3, v0

    .line 11801
    .local v4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v2, v0

    .line 11802
    .local v5, "parentBottom":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0p:Landroid/graphics/Rect;

    .line 11803
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v7, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0H(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11804
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    if-ge v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p2

    if-le v0, v5, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-ge v0, v2, :cond_1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p3

    if-gt v0, v4, :cond_2

    .line 11805
    :cond_1
    return v6

    .line 11806
    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0T(Lcom/facebook/ads/redexgen/X/E9;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11807
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->A1v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0U(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 14

    .line 11808
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 11809
    .local v1, "out":[I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v13

    .line 11810
    .local v2, "parentLeft":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v12

    .line 11811
    .local v3, "parentTop":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v11, v0

    .line 11812
    .local v4, "parentRight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v10, v0

    .line 11813
    .local v5, "parentBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v1, p2

    iget v0, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr v9, v0

    .line 11814
    .local v6, "childLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr v8, v0

    .line 11815
    .local v7, "childTop":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v9

    .line 11816
    .local v8, "childRight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v8

    .line 11817
    .local v9, "childBottom":I
    sub-int v0, v9, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 11818
    .local v10, "offScreenLeft":I
    sub-int v0, v8, v12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 11819
    .local v12, "offScreenTop":I
    sub-int v0, v7, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11820
    .local v13, "offScreenRight":I
    sub-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 11821
    .local p0, "offScreenBottom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0a()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 11822
    if-eqz v3, :cond_1

    .line 11823
    .restart local p1    # null:Landroid/view/View;
    :goto_0
    if-eqz v5, :cond_0

    .line 11824
    .local v11, "dy":I
    :goto_1
    const/4 v0, 0x0

    aput v3, v4, v0

    .line 11825
    const/4 v0, 0x1

    aput v5, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_4

    .line 11826
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "97vXAXgJ0WxvI5IvBZpOR2Ky1DZNuVnu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v4

    .line 11827
    :cond_0
    sub-int/2addr v8, v12

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 11828
    :cond_1
    sub-int/2addr v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 11829
    .end local p1    # null:Landroid/view/View;
    :cond_2
    if-eqz v6, :cond_3

    move v3, v6

    goto :goto_0

    .line 11830
    :cond_3
    sub-int/2addr v9, v13

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0V()I
    .locals 1

    .line 11831
    const/4 v0, -0x1

    return v0
.end method

.method public final A0W()I
    .locals 1

    .line 11832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0X()I
    .locals 1

    .line 11833
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:I

    return v0
.end method

.method public final A0Y()I
    .locals 1

    .line 11834
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:I

    return v0
.end method

.method public final A0Z()I
    .locals 1

    .line 11835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    .line 11836
    .local v0, "a":Lcom/facebook/ads/redexgen/X/4N;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 11837
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0a()I
    .locals 1

    .line 11838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3E;->A01(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0b()I
    .locals 1

    .line 11839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3E;->A02(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0c()I
    .locals 1

    .line 11840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3E;->A03(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 11841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0e()I
    .locals 1

    .line 11842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f()I
    .locals 1

    .line 11843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()I
    .locals 1

    .line 11844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()I
    .locals 1

    .line 11845
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:I

    return v0
.end method

.method public final A0i()I
    .locals 1

    .line 11846
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0D:I

    return v0
.end method

.method public final A0j(Landroid/view/View;)I
    .locals 2

    .line 11847
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A02(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0k(Landroid/view/View;)I
    .locals 2

    .line 11848
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A03(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0l(Landroid/view/View;)I
    .locals 3

    .line 11849
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    .line 11850
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0m(Landroid/view/View;)I
    .locals 3

    .line 11851
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    .line 11852
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0n(Landroid/view/View;)I
    .locals 2

    .line 11853
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A04(Landroid/view/View;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0o(Landroid/view/View;)I
    .locals 2

    .line 11854
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A05(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0p(Landroid/view/View;)I
    .locals 1

    .line 11855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4a;->A00()I

    move-result v0

    return v0
.end method

.method public A0q(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 2

    .line 11856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    if-nez v0, :cond_1

    .line 11857
    :cond_0
    return v1

    .line 11858
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v1

    :cond_2
    return v1
.end method

.method public A0r(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 2

    .line 11859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    if-nez v0, :cond_1

    .line 11860
    :cond_0
    return v1

    .line 11861
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A25()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A04:Lcom/facebook/ads/redexgen/X/4N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v1

    :cond_2
    return v1
.end method

.method public final A0s()Landroid/view/View;
    .locals 6

    .line 11862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 11863
    return-object v5

    .line 11864
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11865
    .local v0, "focused":Landroid/view/View;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "iiKud1wfkCloFGZ1U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3x;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11866
    :cond_2
    :goto_0
    return-object v5

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "xPYIlKgRfeB9qWlMIQGlIgoODb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/3x;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 11867
    :cond_4
    return-object v3
.end method

.method public final A0t(I)Landroid/view/View;
    .locals 1

    .line 11868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A09(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0u(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 11869
    const/4 v0, 0x0

    return-object v0
.end method

.method public A0v(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/ads/redexgen/X/4a;
    .locals 1

    .line 11870
    new-instance v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public A0w(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/ads/redexgen/X/4a;
    .locals 1

    .line 11871
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4a;

    if-eqz v0, :cond_0

    .line 11872
    check-cast p1, Lcom/facebook/ads/redexgen/X/4a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4a;-><init>(Lcom/facebook/ads/redexgen/X/4a;)V

    return-object v0

    .line 11873
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 11874
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 11875
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/4a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final A0x()V
    .locals 1

    .line 11876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    if-eqz v0, :cond_0

    .line 11877
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4m;->A09()V

    .line 11878
    :cond_0
    return-void
.end method

.method public final A0y()V
    .locals 1

    .line 11879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    .line 11880
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->requestLayout()V

    .line 11881
    :cond_0
    return-void
.end method

.method public final A0z(I)V
    .locals 1

    .line 11882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    .line 11883
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->A1U(I)V

    .line 11884
    :cond_0
    return-void
.end method

.method public final A10(I)V
    .locals 1

    .line 11885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    .line 11886
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->A1V(I)V

    .line 11887
    :cond_0
    return-void
.end method

.method public final A11(II)V
    .locals 2

    .line 11888
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:I

    .line 11889
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0D:I

    .line 11890
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0D:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/E9;->A1B:Z

    if-nez v0, :cond_0

    .line 11891
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:I

    .line 11892
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:I

    .line 11893
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:I

    .line 11894
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/E9;->A1B:Z

    if-nez v0, :cond_1

    .line 11895
    iput v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:I

    .line 11896
    :cond_1
    return-void
.end method

.method public final A12(II)V
    .locals 9

    .line 11897
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v8

    .line 11898
    .local v0, "count":I
    if-nez v8, :cond_0

    .line 11899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/E9;->A1b(II)V

    .line 11900
    return-void

    .line 11901
    :cond_0
    const v6, 0x7fffffff

    .line 11902
    .local v1, "minX":I
    const v5, 0x7fffffff

    .line 11903
    .local v2, "minY":I
    const/high16 v4, -0x80000000

    .line 11904
    .local v3, "maxX":I
    const/high16 v3, -0x80000000

    .line 11905
    .local v4, "maxY":I
    const/4 v7, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 11906
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v2

    .line 11907
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0p:Landroid/graphics/Rect;

    .line 11908
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0H(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11909
    iget v0, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_1

    .line 11910
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 11911
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_2

    .line 11912
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 11913
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v5, :cond_3

    .line 11914
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 11915
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_4

    .line 11916
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 11917
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11918
    .end local v5    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0p:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 11919
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "hT857kPIBtMq0qM94"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qfhhOTku3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A15(Landroid/graphics/Rect;II)V

    .line 11920
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A13(II)V
    .locals 1

    .line 11921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/E9;->A0v(Lcom/facebook/ads/redexgen/X/E9;II)V

    .line 11922
    return-void
.end method

.method public final A14(ILcom/facebook/ads/redexgen/X/4h;)V
    .locals 1

    .line 11923
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 11924
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0A(I)V

    .line 11925
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/4h;->A0X(Landroid/view/View;)V

    .line 11926
    return-void
.end method

.method public A15(Landroid/graphics/Rect;II)V
    .locals 3

    .line 11927
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    add-int/2addr v1, v0

    .line 11928
    .local v0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    add-int/2addr v2, v0

    .line 11929
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0c()I

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A00(III)I

    move-result v1

    .line 11930
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0b()I

    move-result v0

    invoke-static {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A00(III)I

    move-result v0

    .line 11931
    .local p0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A13(II)V

    .line 11932
    return-void
.end method

.method public final A16(Landroid/view/View;)V
    .locals 1

    .line 11933
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A18(Landroid/view/View;I)V

    .line 11934
    return-void
.end method

.method public final A17(Landroid/view/View;)V
    .locals 1

    .line 11935
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A19(Landroid/view/View;I)V

    .line 11936
    return-void
.end method

.method public final A18(Landroid/view/View;I)V
    .locals 1

    .line 11937
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0G(Landroid/view/View;IZ)V

    .line 11938
    return-void
.end method

.method public final A19(Landroid/view/View;I)V
    .locals 1

    .line 11939
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0G(Landroid/view/View;IZ)V

    .line 11940
    return-void
.end method

.method public final A1A(Landroid/view/View;II)V
    .locals 7

    .line 11941
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/4a;

    .line 11942
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->A1D(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 11943
    .local v1, "insets":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 11944
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 11945
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0i()I

    move-result v3

    .line 11946
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4a;->leftMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4a;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4a;->width:I

    .line 11947
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    .line 11948
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A01(IIIIZ)I

    move-result v5

    .line 11949
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0Y()I

    move-result v3

    .line 11950
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4a;->topMargin:I

    add-int/2addr v2, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/4a;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, p3

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4a;->height:I

    .line 11951
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A25()Z

    move-result v0

    .line 11952
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A01(IIIIZ)I

    move-result v1

    .line 11953
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v5, v1, v6}, Lcom/facebook/ads/redexgen/X/4Z;->A1a(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11954
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 11955
    :cond_0
    return-void
.end method

.method public final A1B(Landroid/view/View;IIII)V
    .locals 5

    .line 11956
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4a;

    .line 11957
    .local v0, "lp":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    .line 11958
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4a;->leftMargin:I

    add-int/2addr v2, v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4a;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4a;->rightMargin:I

    sub-int/2addr p4, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4a;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, v2, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 11959
    return-void
.end method

.method public final A1C(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 3

    .line 11960
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v2

    .line 11961
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/4r;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3x;->A0K(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A1K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V

    .line 11963
    :cond_0
    return-void
.end method

.method public final A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 0

    .line 11964
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0D(Landroid/view/View;)V

    .line 11965
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/4h;->A0X(Landroid/view/View;)V

    .line 11966
    return-void
.end method

.method public final A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 7

    .line 11967
    if-eqz p2, :cond_0

    .line 11968
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4a;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/4a;->A03:Landroid/graphics/Rect;

    .line 11969
    .local v0, "insets":Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v0

    .line 11970
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v0, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 11971
    invoke-virtual {p3, v4, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11972
    .end local v0    # "insets":Landroid/graphics/Rect;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_2

    .line 11973
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 11974
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/E9;->A0q:Landroid/graphics/RectF;

    .line 11976
    .local v1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v6, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 11977
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 11978
    iget v0, v6, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 11979
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v5, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 11980
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    iget v3, v6, Landroid/graphics/RectF;->right:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 11981
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "WbBFuKAltYM"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    float-to-double v0, v3

    .line 11982
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    .line 11983
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 11984
    invoke-virtual {p3, v5, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 11985
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v1    # "tempRectF":Landroid/graphics/RectF;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 11986
    return-void
.end method

.method public final A1F(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 2

    .line 11987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0L(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/3d;)V

    .line 11988
    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 6

    .line 11989
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4h;->A0E()I

    move-result v5

    .line 11990
    .local v0, "scrapCount":I
    add-int/lit8 v4, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 11991
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4h;->A0F(I)Landroid/view/View;

    move-result-object v3

    .line 11992
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v2

    .line 11993
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/4r;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11994
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/4r;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 11995
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4r;->A0Z(Z)V

    .line 11996
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A0e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/E9;->removeDetachedView(Landroid/view/View;Z)V

    .line 11998
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A05:Lcom/facebook/ads/redexgen/X/4V;

    if-eqz v0, :cond_2

    .line 11999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A05:Lcom/facebook/ads/redexgen/X/4V;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4V;->A0K(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 12000
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0Z(Z)V

    .line 12001
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4h;->A0V(Landroid/view/View;)V

    goto :goto_1

    .line 12002
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4h;->A0L()V

    .line 12003
    if-lez v5, :cond_4

    .line 12004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->invalidate()V

    .line 12005
    :cond_4
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 2

    .line 12006
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    .line 12007
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 12008
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 12009
    .local p0, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0J(Lcom/facebook/ads/redexgen/X/4h;ILandroid/view/View;)V

    .line 12010
    .end local p0    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12011
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 2

    .line 12012
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 12013
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 12014
    .local v1, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12015
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A14(ILcom/facebook/ads/redexgen/X/4h;)V

    .line 12016
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 12017
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public A1J(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;II)V
    .locals 1

    .line 12018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/E9;->A1b(II)V

    .line 12019
    return-void
.end method

.method public A1K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/View;Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 9

    .line 12020
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A25()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v3

    .line 12021
    .local v2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A24()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0p(Landroid/view/View;)I

    move-result v5

    .line 12022
    .local v4, "columnIndexGuess":I
    :goto_1
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12023
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 12024
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Z;->A0J:[Ljava/lang/String;

    const-string v1, "h476R5jl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 12025
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/3b;->A00(IIIIZZ)Lcom/facebook/ads/redexgen/X/3b;

    move-result-object v0

    .line 12026
    .local v0, "itemInfo":Lcom/facebook/ads/redexgen/X/3b;
    invoke-virtual {p4, v0}, Lcom/facebook/ads/redexgen/X/3d;->A0Q(Ljava/lang/Object;)V

    .line 12027
    return-void
.end method

.method public final A1L(Lcom/facebook/ads/redexgen/X/4m;)V
    .locals 2

    .line 12028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 12029
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4m;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4m;->A09()V

    .line 12031
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    .line 12032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A02:Lcom/facebook/ads/redexgen/X/4m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/4m;->A0D(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 12033
    return-void
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 0

    .line 12034
    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 1

    .line 12035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:Z

    .line 12036
    return-void
.end method

.method public final A1O(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 3

    .line 12037
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->getWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 12038
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 12039
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A11(II)V

    .line 12040
    return-void
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 1

    .line 12041
    if-nez p1, :cond_0

    .line 12042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 12043
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    .line 12044
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:I

    .line 12045
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:I

    .line 12046
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0D:I

    .line 12047
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0B:I

    .line 12048
    return-void

    .line 12049
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 12050
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/E9;->A01:Lcom/facebook/ads/redexgen/X/3x;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A01:Lcom/facebook/ads/redexgen/X/3x;

    .line 12051
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0C:I

    .line 12052
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E9;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0A:I

    goto :goto_0
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/E9;II)V
    .locals 0

    .line 12053
    return-void
.end method

.method public A1R(Lcom/facebook/ads/redexgen/X/E9;II)V
    .locals 0

    .line 12054
    return-void
.end method

.method public A1S(Lcom/facebook/ads/redexgen/X/E9;III)V
    .locals 0

    .line 12055
    return-void
.end method

.method public A1T(Lcom/facebook/ads/redexgen/X/E9;IILjava/lang/Object;)V
    .locals 0

    .line 12056
    return-void
.end method

.method public final A1U(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 1

    .line 12057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A07:Z

    .line 12058
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A20(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4h;)V

    .line 12059
    return-void
.end method

.method public final A1V(Z)V
    .locals 0

    .line 12060
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A06:Z

    .line 12061
    return-void
.end method

.method public final A1W()Z
    .locals 4

    .line 12062
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v3

    .line 12063
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 12064
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    .line 12065
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 12066
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v0, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v0, :cond_0

    .line 12067
    const/4 v0, 0x1

    return v0

    .line 12068
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12069
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A1X()Z
    .locals 1

    .line 12070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1Y()Z
    .locals 1

    .line 12071
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0E:Z

    return v0
.end method

.method public final A1Z(ILandroid/os/Bundle;)Z
    .locals 2

    .line 12072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/4Z;->A0Q(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final A1a(Landroid/view/View;IILcom/facebook/ads/redexgen/X/4a;)Z
    .locals 2

    .line 12073
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A0F:Z

    if-eqz v0, :cond_0

    .line 12074
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4a;->width:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0O(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12075
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, p4, Lcom/facebook/ads/redexgen/X/4a;->height:I

    invoke-static {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0O(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 12076
    :goto_0
    return v0

    .line 12077
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1b(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 12078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4Z;->A0R(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public A1c(Lcom/facebook/ads/redexgen/X/4a;)Z
    .locals 1

    .line 12079
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1d(Lcom/facebook/ads/redexgen/X/E9;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 12080
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4Z;->A1e(Lcom/facebook/ads/redexgen/X/E9;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public final A1e(Lcom/facebook/ads/redexgen/X/E9;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .line 12081
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/4Z;->A0U(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 12082
    .local v0, "scrollAmount":[I
    const/4 v4, 0x0

    aget v3, v0, v4

    .line 12083
    .local v2, "dx":I
    const/4 v2, 0x1

    aget v1, v0, v2

    .line 12084
    .local v4, "dy":I
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/4Z;->A0S(Lcom/facebook/ads/redexgen/X/E9;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12085
    :cond_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 12086
    :cond_1
    if-eqz p4, :cond_2

    .line 12087
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/E9;->scrollBy(II)V

    .line 12088
    :goto_0
    return v2

    .line 12089
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/facebook/ads/redexgen/X/E9;->A1f(II)V

    goto :goto_0

    .line 12090
    :cond_3
    return v4
.end method

.method public final A1f(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 12091
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/4Z;->A0T(Lcom/facebook/ads/redexgen/X/E9;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final A1g(Lcom/facebook/ads/redexgen/X/E9;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/E9;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 12092
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public A1h(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12093
    const/4 v0, 0x0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12094
    const/4 v0, 0x0

    return v0
.end method

.method public A1j(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12095
    const/4 v0, 0x0

    return v0
.end method

.method public A1k(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12096
    const/4 v0, 0x0

    return v0
.end method

.method public A1l(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12097
    const/4 v0, 0x0

    return v0
.end method

.method public A1m(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12098
    const/4 v0, 0x0

    return v0
.end method

.method public A1n(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12099
    const/4 v0, 0x0

    return v0
.end method

.method public A1o(Lcom/facebook/ads/redexgen/X/4o;)I
    .locals 1

    .line 12100
    const/4 v0, 0x0

    return v0
.end method

.method public A1p()Landroid/os/Parcelable;
    .locals 1

    .line 12101
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1q(I)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12102
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v4

    .line 12103
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 12104
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v2

    .line 12105
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/E9;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v1

    .line 12106
    .local v3, "vh":Lcom/facebook/ads/redexgen/X/4r;
    if-nez v1, :cond_1

    .line 12107
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/facebook/ads/redexgen/X/4r;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12108
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    .line 12109
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4o;->A07()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4r;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12110
    :cond_2
    return-object v2

    .line 12111
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public A1r(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12112
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract A1s()Lcom/facebook/ads/redexgen/X/4a;
.end method

.method public A1t(I)V
    .locals 0

    .line 12113
    return-void
.end method

.method public A1u(IILcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4X;)V
    .locals 0

    .line 12114
    return-void
.end method

.method public A1v(ILcom/facebook/ads/redexgen/X/4X;)V
    .locals 0

    .line 12115
    return-void
.end method

.method public A1w(Landroid/os/Parcelable;)V
    .locals 0

    .line 12116
    return-void
.end method

.method public A1x(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 12117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0K(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 12118
    return-void
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/4h;Lcom/facebook/ads/redexgen/X/4o;)V
    .locals 4

    .line 12119
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0x43

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12120
    return-void
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4o;)V
    .locals 0

    .line 12121
    return-void
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4h;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 12122
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4o;I)V
    .locals 4

    .line 12123
    const/16 v2, 0x81

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x44

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12124
    return-void
.end method

.method public A22(Ljava/lang/String;)V
    .locals 1

    .line 12125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A03:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_0

    .line 12126
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->A1q(Ljava/lang/String;)V

    .line 12127
    :cond_0
    return-void
.end method

.method public A23()Z
    .locals 1

    .line 12128
    const/4 v0, 0x0

    return v0
.end method

.method public A24()Z
    .locals 1

    .line 12129
    const/4 v0, 0x0

    return v0
.end method

.method public A25()Z
    .locals 1

    .line 12130
    const/4 v0, 0x0

    return v0
.end method

.method public A26()Z
    .locals 1

    .line 12131
    const/4 v0, 0x0

    return v0
.end method
