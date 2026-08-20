.class public abstract Lcom/facebook/ads/redexgen/X/4m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4l;,
        Lcom/facebook/ads/redexgen/X/4k;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/4Z;

.field public A03:Lcom/facebook/ads/redexgen/X/E9;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 12724
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ffTcX10Z9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "veDPHJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iWatF5LLo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0slLts"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "p92m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eFvKPH9TFpfstHyCObyNN72zUjBGeH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4m;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12726
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    .line 12727
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4k;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4k;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A06:Lcom/facebook/ads/redexgen/X/4k;

    .line 12728
    return-void
.end method

.method private final A00(Landroid/view/View;)I
    .locals 1

    .line 12729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->A1B(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private final A01(I)Landroid/view/View;
    .locals 1

    .line 12730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A1q(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4m;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x56

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const-string v1, "8BqCBekg5p6xdwXQXpIxknueaPhzjw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/4m;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4et
        0x69t
        0x71t
        0x66t
        0x6bt
        0x6et
        0x63t
        0x27t
        0x73t
        0x66t
        0x75t
        0x60t
        0x62t
        0x73t
        0x27t
        0x77t
        0x68t
        0x74t
        0x6et
        0x73t
        0x6et
        0x68t
        0x69t
        0x16t
        0x27t
        0x35t
        0x35t
        0x23t
        0x22t
        0x66t
        0x29t
        0x30t
        0x23t
        0x34t
        0x66t
        0x32t
        0x27t
        0x34t
        0x21t
        0x23t
        0x32t
        0x66t
        0x36t
        0x29t
        0x35t
        0x2ft
        0x32t
        0x2ft
        0x29t
        0x28t
        0x66t
        0x31t
        0x2et
        0x2ft
        0x2at
        0x23t
        0x66t
        0x35t
        0x2bt
        0x29t
        0x29t
        0x32t
        0x2et
        0x66t
        0x35t
        0x25t
        0x34t
        0x29t
        0x2at
        0x2at
        0x2ft
        0x28t
        0x21t
        0x68t
        0x4et
        0x79t
        0x7ft
        0x65t
        0x7ft
        0x70t
        0x79t
        0x6et
        0x4at
        0x75t
        0x79t
        0x6bt
    .end array-data
.end method

.method private A04(II)V
    .locals 6

    .line 12731
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 12732
    .local v0, "recyclerView":Lcom/facebook/ads/redexgen/X/E9;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    if-nez v3, :cond_1

    .line 12733
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A09()V

    .line 12734
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A04:Z

    .line 12735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A01:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 12736
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4m;->A00(Landroid/view/View;)I

    move-result v5

    iget v4, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

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

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const-string v1, "1zDtC4ICw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "WYaFIbeKL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_7

    .line 12737
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4m;->A01:Landroid/view/View;

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A06:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4k;)V

    .line 12738
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4m;->A06:Lcom/facebook/ads/redexgen/X/4k;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const-string v1, "M"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4k;->A05(Lcom/facebook/ads/redexgen/X/E9;)V

    .line 12739
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A09()V

    .line 12740
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    if-eqz v0, :cond_4

    .line 12741
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A06:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A0H(IILcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4k;)V

    .line 12742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A06:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4k;->A06()Z

    move-result v1

    .line 12743
    .local v1, "hadJumpTarget":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A06:Lcom/facebook/ads/redexgen/X/4k;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4k;->A05(Lcom/facebook/ads/redexgen/X/E9;)V

    .line 12744
    if-eqz v1, :cond_4

    .line 12745
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    if-eqz v0, :cond_5

    .line 12746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A04:Z

    .line 12747
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/E9;->A08:Lcom/facebook/ads/redexgen/X/4q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4q;->A07()V

    .line 12748
    .end local v1    # "hadJumpTarget":Z
    :cond_4
    :goto_1
    return-void

    .line 12749
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A09()V

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/4m;->A08:[Ljava/lang/String;

    const-string v1, "sldJFA0K947j"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/4k;->A05(Lcom/facebook/ads/redexgen/X/E9;)V

    .line 12750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A09()V

    goto :goto_0

    .line 12751
    :cond_7
    const/16 v2, 0x4a

    const/16 v1, 0xc

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x17

    const/16 v1, 0x33

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A01:Landroid/view/View;

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/4m;II)V
    .locals 0

    .line 12753
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4m;->A04(II)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 12754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0W()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 12755
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    return v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/4Z;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    return-object v0
.end method

.method public final A09()V
    .locals 2

    .line 12757
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    if-nez v0, :cond_0

    .line 12758
    return-void

    .line 12759
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A0G()V

    .line 12760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4o;->A00(Lcom/facebook/ads/redexgen/X/4o;I)I

    .line 12761
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/4m;->A01:Landroid/view/View;

    .line 12762
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    .line 12763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A04:Z

    .line 12764
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    .line 12765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/4Z;->A0I(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4m;)V

    .line 12766
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/4m;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 12767
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 12768
    return-void
.end method

.method public final A0A(I)V
    .locals 0

    .line 12769
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    .line 12770
    return-void
.end method

.method public final A0B(Landroid/graphics/PointF;)V
    .locals 4

    .line 12771
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 12772
    .local v0, "magnitude":F
    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 12773
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 12774
    return-void
.end method

.method public final A0C(Landroid/view/View;)V
    .locals 2

    .line 12775
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4m;->A00(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A07()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 12776
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4m;->A01:Landroid/view/View;

    .line 12777
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 3

    .line 12778
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    .line 12779
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4m;->A02:Lcom/facebook/ads/redexgen/X/4Z;

    .line 12780
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 12781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/E9;->A0s:Lcom/facebook/ads/redexgen/X/4o;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4o;->A00(Lcom/facebook/ads/redexgen/X/4o;I)I

    .line 12782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    .line 12783
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A04:Z

    .line 12784
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4m;->A07()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4m;->A01(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A01:Landroid/view/View;

    .line 12785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A03:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A08:Lcom/facebook/ads/redexgen/X/4q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4q;->A07()V

    .line 12786
    return-void

    .line 12787
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0E()Z
    .locals 1

    .line 12788
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A04:Z

    return v0
.end method

.method public final A0F()Z
    .locals 1

    .line 12789
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4m;->A05:Z

    return v0
.end method

.method public abstract A0G()V
.end method

.method public abstract A0H(IILcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4k;)V
.end method

.method public abstract A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4o;Lcom/facebook/ads/redexgen/X/4k;)V
.end method
