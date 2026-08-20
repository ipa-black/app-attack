.class public abstract Lcom/facebook/ads/redexgen/X/YO;
.super Lcom/facebook/ads/redexgen/X/4c;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/E9;

.field public A01:Landroid/widget/Scroller;

.field public final A02:Lcom/facebook/ads/redexgen/X/4e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 67931
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WP5CpU5dCfM1vj2iCgRczyLeS833jqA7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "f0t6mABNpir4NiI1IJBR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VMSqLwjWc3fXvu7D9B7JwatTJSWiKmSt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2kGOlvpEajHcc9JJ5BV7kSrV8Uhb9VDh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BGGgbgkg4NpzKA2XjpG6Q8iHB2GG9zH0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ziOTckvigWpUqNYWulExTvMWDfbzI1Sq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WkLWBkQ13lLgYVln8HDaQ7gYbGPRUWfj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hZJ2tRP2pGaevCKAXmW2Fr9GhnOGACBf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YO;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YO;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67932
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4c;-><init>()V

    .line 67933
    new-instance v0, Lcom/facebook/ads/redexgen/X/YP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YP;-><init>(Lcom/facebook/ads/redexgen/X/YO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:Lcom/facebook/ads/redexgen/X/4e;

    return-void
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 67934
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/YO;->A0E(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Yd;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YO;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 2

    .line 67935
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->A1l(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 67936
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67937
    return-void
.end method

.method private A08()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getOnFlingListener()Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67939
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->A1k(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 67940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/E9;->setOnFlingListener(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 67941
    return-void

    .line 67942
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YO;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A09()V
    .locals 4

    const/16 v0, 0x2b

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/YO;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/YO;->A04:[Ljava/lang/String;

    const-string v1, "Gfsvb5V6ZkZ1EjPhJmDEOg0wCX37AMGK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "BogmwpJuEiSgKohE6B9VLJKkNQC2pxlX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/YO;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x23t
        0xat
        -0x44t
        0x5t
        0xat
        0xft
        0x10t
        -0x3t
        0xat
        -0x1t
        0x1t
        -0x44t
        0xbt
        0x2t
        -0x44t
        -0x15t
        0xat
        -0x1et
        0x8t
        0x5t
        0xat
        0x3t
        -0x18t
        0x5t
        0xft
        0x10t
        0x1t
        0xat
        0x1t
        0xet
        -0x44t
        -0x3t
        0x8t
        0xet
        0x1t
        -0x3t
        0x0t
        0x15t
        -0x44t
        0xft
        0x1t
        0x10t
        -0x36t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4Z;II)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67943
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4l;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 67944
    return v6

    .line 67945
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YO;->A05(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/4m;

    move-result-object v3

    .line 67946
    .local v0, "smoothScroller":Lcom/facebook/ads/redexgen/X/4m;
    if-nez v3, :cond_1

    .line 67947
    return v6

    .line 67948
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/YO;->A0C(Lcom/facebook/ads/redexgen/X/4Z;II)I

    move-result v5

    .line 67949
    .local v2, "targetPosition":I
    const/4 v4, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/YO;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/YO;->A04:[Ljava/lang/String;

    const-string v1, "3QNQgzU1MIdfo8xP0zEWa1SfaSPVi8u7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "BhxrOivCOMjMD1hwED78TbVHZR3oyoMb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_2

    .line 67950
    return v6

    .line 67951
    :cond_2
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/4m;->A0A(I)V

    .line 67952
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4Z;->A1L(Lcom/facebook/ads/redexgen/X/4m;)V

    .line 67953
    const/4 v0, 0x1

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0B(II)Z
    .locals 4

    .line 67954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v3

    .line 67955
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/4Z;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 67956
    return v2

    .line 67957
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    .line 67958
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/4N;
    if-nez v0, :cond_1

    .line 67959
    return v2

    .line 67960
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getMinFlingVelocity()I

    move-result v1

    .line 67961
    .local v3, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 67962
    :cond_2
    invoke-direct {p0, v3, p1, p2}, Lcom/facebook/ads/redexgen/X/YO;->A0A(Lcom/facebook/ads/redexgen/X/4Z;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 67963
    :cond_3
    return v2
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/4Z;II)I
.end method

.method public abstract A0D(Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public A0E(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Yd;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67964
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4l;

    if-nez v0, :cond_0

    .line 67965
    const/4 v0, 0x0

    return-object v0

    .line 67966
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/E8;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/E8;-><init>(Lcom/facebook/ads/redexgen/X/YO;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0F()V
    .locals 5

    .line 67967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    if-nez v0, :cond_0

    .line 67968
    return-void

    .line 67969
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v1

    .line 67970
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/4Z;
    if-nez v1, :cond_1

    .line 67971
    return-void

    .line 67972
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/YO;->A0D(Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    .line 67973
    .local v1, "snapView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 67974
    return-void

    .line 67975
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/YO;->A0H(Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;)[I

    move-result-object v4

    .line 67976
    .local v2, "snapDistance":[I
    const/4 v1, 0x0

    aget v0, v4, v1

    const/4 v3, 0x1

    if-nez v0, :cond_3

    aget v0, v4, v3

    if-eqz v0, :cond_4

    .line 67977
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    aget v1, v4, v1

    aget v0, v4, v3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->A1f(II)V

    .line 67978
    :cond_4
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/E9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 67979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    if-ne v0, p1, :cond_0

    .line 67980
    return-void

    .line 67981
    :cond_0
    if-eqz v0, :cond_1

    .line 67982
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YO;->A07()V

    .line 67983
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    .line 67984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    if-eqz v0, :cond_2

    .line 67985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YO;->A08()V

    .line 67986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Landroid/widget/Scroller;

    .line 67987
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YO;->A0F()V

    .line 67988
    :cond_2
    return-void
.end method

.method public abstract A0H(Lcom/facebook/ads/redexgen/X/4Z;Landroid/view/View;)[I
    .param p1    # Lcom/facebook/ads/redexgen/X/4Z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
