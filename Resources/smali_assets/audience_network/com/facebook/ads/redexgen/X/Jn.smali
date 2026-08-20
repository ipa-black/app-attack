.class public final Lcom/facebook/ads/redexgen/X/Jn;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PL;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A04:Lcom/facebook/ads/redexgen/X/Kr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 40777
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CZ6R6baQKTb1E5sAmpDqVkfMXF7zVnG4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nQZGX73N3q5NRRZlZyP90gUTrDeeLYBu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LfCM6PYFJNbwOvLH4thVDQon3h1Zk2zk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bpUakkTElIOqaP65ISNG9oh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gJtMODfbj2e7z8MJG7ZRKfD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8rYwk9o7IGDDsMQbyUTj4ra1LUt9E6qX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3WiLQHXTUUJ8WctEatoRQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Xo7nIXQ5hsw2R0tzDjIU8fyfjH4jtFIR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jn;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jn;->A06()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Jn;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ii;)V
    .locals 3

    .line 40778
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40779
    new-instance v0, Lcom/facebook/ads/redexgen/X/6h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6h;-><init>(Lcom/facebook/ads/redexgen/X/Jn;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A04:Lcom/facebook/ads/redexgen/X/Kr;

    .line 40780
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jn;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    .line 40781
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jn;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 40782
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A01:Landroid/graphics/Paint;

    .line 40783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jn;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40784
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jn;->setColorFilter(I)V

    .line 40785
    sget v0, Lcom/facebook/ads/redexgen/X/Jn;->A07:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jn;->setPadding(IIII)V

    .line 40786
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jn;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jn;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40787
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jn;->A05()V

    .line 40788
    new-instance v0, Lcom/facebook/ads/redexgen/X/PZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PZ;-><init>(Lcom/facebook/ads/redexgen/X/Jn;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40789
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 40790
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/redexgen/X/Ii;
    .locals 0

    .line 40791
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 40792
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jn;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 1

    .line 40793
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0W:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jn;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40794
    return-void
.end method

.method private A05()V
    .locals 1

    .line 40795
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0X:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jn;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40796
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jn;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x65t
        0x5dt
        0x5ct
        0x4dt
        0x8t
        0x69t
        0x4ct
    .end array-data
.end method

.method private A07()Z
    .locals 5

    .line 40797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getVolume()F

    move-result v4

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jn;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jn;->A06:[Ljava/lang/String;

    const-string v1, "7LwdJMyLjSlNEKSwxkcw7Q3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "d5nTRpYYugpReKnwSxkEX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmpl-float v0, v4, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Jn;)Z
    .locals 0

    .line 40798
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jn;->A07()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A09()V
    .locals 1

    .line 40799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    if-nez v0, :cond_0

    .line 40800
    return-void

    .line 40801
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jn;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jn;->A04()V

    .line 40803
    :goto_0
    return-void

    .line 40804
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jn;->A05()V

    goto :goto_0
.end method

.method public final A93(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 2

    .line 40805
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    .line 40806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    if-eqz v0, :cond_0

    .line 40807
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A04:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A05(Lcom/facebook/ads/redexgen/X/8V;)Z

    .line 40808
    :cond_0
    return-void
.end method

.method public final AFf(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 2

    .line 40809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    if-eqz v0, :cond_0

    .line 40810
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A04:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8U;->A06(Lcom/facebook/ads/redexgen/X/8V;)Z

    .line 40811
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A00:Lcom/facebook/ads/redexgen/X/RA;

    .line 40812
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 40813
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jn;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 40814
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jn;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 40815
    .local v1, "y":I
    int-to-float v3, v1

    int-to-float v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jn;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40816
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 40817
    return-void
.end method
