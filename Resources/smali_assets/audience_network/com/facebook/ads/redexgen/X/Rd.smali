.class public Lcom/facebook/ads/redexgen/X/Rd;
.super Lcom/facebook/ads/redexgen/X/4e;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/O1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/O3;

.field public A04:Lcom/facebook/ads/redexgen/X/QA;

.field public A05:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ye;

.field public final A0D:Lcom/facebook/ads/redexgen/X/4m;

.field public final A0E:Lcom/facebook/ads/redexgen/X/O4;

.field public final A0F:Lcom/facebook/ads/redexgen/X/O5;

.field public final A0G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 51040
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vVts3290hN8iYOphvTtUHsw8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QXZRYfiopoOIgyOb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uRY3EBcOhcPzIFCW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1yhQGC5wOot73mjsntHrCCOy6H7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ngPHprqJPXgJBcmGEhNrmzVf2B4dA5Oh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DCeBbFrEMIUsiq6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "addqTveDrmk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rd;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2M;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QA;Landroid/os/Bundle;)V
    .locals 2
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/QA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2M;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/QA;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 51041
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4e;-><init>()V

    .line 51042
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0G:Ljava/util/Set;

    .line 51043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Z

    .line 51044
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Z

    .line 51045
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Z

    .line 51046
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:I

    .line 51047
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:F

    .line 51048
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rg;-><init>(Lcom/facebook/ads/redexgen/X/Rd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    .line 51049
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rf;-><init>(Lcom/facebook/ads/redexgen/X/Rd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/O3;

    .line 51050
    new-instance v0, Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Re;-><init>(Lcom/facebook/ads/redexgen/X/Rd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0E:Lcom/facebook/ads/redexgen/X/O4;

    .line 51051
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/Ye;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    .line 51052
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:I

    .line 51053
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Ljava/util/List;

    .line 51054
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/QA;

    .line 51055
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2M;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:Lcom/facebook/ads/redexgen/X/4m;

    .line 51056
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2M;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:Landroid/content/Context;

    .line 51057
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/E9;->A1k(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 51058
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/Rd;->A0D(Landroid/os/Bundle;)V

    .line 51059
    return-void
.end method

.method private A03(II)Lcom/facebook/ads/redexgen/X/SF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51060
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A04(IIZ)Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v0

    return-object v0
.end method

.method private A04(IIZ)Lcom/facebook/ads/redexgen/X/SF;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51061
    const/4 v5, 0x0

    .line 51062
    .local v0, "foundVideo":Lcom/facebook/ads/redexgen/X/SF;
    .local v1, "i":I
    :goto_0
    if-gt p1, p2, :cond_6

    .line 51063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/SF;

    .line 51064
    .local v2, "curCard":Lcom/facebook/ads/redexgen/X/SF;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SF;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51065
    .restart local v2    # "curCard":Lcom/facebook/ads/redexgen/X/SF;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 51066
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Rd;->A0b(Landroid/view/View;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51067
    .local v3, "isCompletelyVisible":Z
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v5, :cond_4

    .line 51068
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SF;->A0k()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0G:Ljava/util/Set;

    .line 51069
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:I

    .line 51070
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0I(Lcom/facebook/ads/redexgen/X/Ni;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51071
    :cond_3
    move-object v5, v3

    .line 51072
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/SF;->A0k()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 51073
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0C(IZ)V

    .line 51074
    .end local v2    # "curCard":Lcom/facebook/ads/redexgen/X/SF;
    .end local v3    # "isCompletelyVisible":Z
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 51075
    .end local v1    # "i":I
    .end local v2
    :cond_6
    return-object v5
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .locals 2

    .line 51076
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Z

    if-nez v0, :cond_0

    .line 51077
    return-void

    .line 51078
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A28()I

    move-result v1

    .line 51079
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A29()I

    move-result v0

    .line 51080
    .local v1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A03(II)Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v0

    .line 51081
    .local p0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/SF;
    if-eqz v0, :cond_1

    .line 51082
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SF;->A0h()V

    .line 51083
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 2

    .line 51084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A27()I

    move-result v1

    .line 51085
    .local v0, "curPos":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 51086
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0V(I)V

    .line 51087
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rd;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x6t
        -0x7t
        -0xct
        0x4t
        -0xbt
        -0xft
        -0x1at
        -0x2t
        0x4t
        -0x16t
        -0xdt
        -0x1at
        -0x19t
        -0xft
        -0x16t
        -0x17t
        0x4t
        -0xbt
        -0x1at
        -0x9t
        -0x1at
        -0xet
        0x7t
        0x11t
        0x1dt
        0x4t
        0x7t
        0x10t
        0x11t
        0x12t
        0x1dt
        0x14t
        0x7t
        0x2t
        0x3t
        0xdt
        0x1dt
        0xet
        -0x1t
        0x10t
        -0x1t
        0xbt
        -0x5t
        -0xct
        -0xft
        -0x6t
        -0xet
        -0x16t
        0x4t
        -0xft
        -0x16t
        -0x5t
        -0x16t
        -0xft
        0x4t
        -0xbt
        -0x1at
        -0x9t
        -0x1at
        -0xet
    .end array-data
.end method

.method private A09(I)V
    .locals 3

    .line 51088
    add-int/lit8 v2, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    .line 51089
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A29()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A04(IIZ)Lcom/facebook/ads/redexgen/X/SF;

    move-result-object v1

    .line 51090
    .local v0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/SF;
    if-eqz v1, :cond_0

    .line 51091
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SF;->A0h()V

    .line 51092
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0V(I)V

    .line 51093
    :cond_0
    return-void
.end method

.method private A0A(II)V
    .locals 0

    .line 51094
    .local p0, "i":I
    :goto_0
    if-gt p1, p2, :cond_0

    .line 51095
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A0T(I)V

    .line 51096
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 51097
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private final A0B(II)V
    .locals 0

    .line 51098
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A0S(I)V

    .line 51099
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/Rd;->A0S(I)V

    .line 51100
    return-void
.end method

.method private A0C(IZ)V
    .locals 2

    .line 51101
    if-eqz p2, :cond_0

    .line 51102
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51103
    :goto_0
    return-void

    .line 51104
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A0D(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51105
    if-nez p1, :cond_0

    .line 51106
    return-void

    .line 51107
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:F

    .line 51108
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Z

    .line 51109
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Z

    .line 51110
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 0

    .line 51111
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Rd;I)V
    .locals 0

    .line 51112
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A09(I)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Rd;IZ)V
    .locals 0

    .line 51113
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rd;->A0C(IZ)V

    return-void
.end method

.method private A0H()Z
    .locals 2

    .line 51114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0B:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A2A(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0A:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/Ni;I)Z
    .locals 7

    .line 51115
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p1, v4, :cond_1

    .line 51116
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const-string v1, "Sny8hSa0LYjBAej7q"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, v5

    goto :goto_0

    .line 51117
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getWidth()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    div-float/2addr v1, v6

    float-to-int v3, v1

    .line 51118
    .local v3, "allowedAreaMaxX":I
    :goto_0
    if-ne p1, v4, :cond_3

    .line 51119
    const/4 v2, 0x1

    .line 51120
    .local v0, "allowedAreaMinX":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 51121
    .local v1, "furthestX":I
    if-gt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getX()F

    move-result v1

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 51122
    .local v2, "result":Z
    :goto_2
    return v5

    .line 51123
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 51124
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 51125
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    div-float/2addr v1, v6

    float-to-int v2, v1

    goto :goto_1
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/SF;)Z
    .locals 2

    .line 51126
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SF;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51127
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Z

    .line 51128
    const/4 v0, 0x1

    return v0

    .line 51129
    :cond_0
    return v1
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/Rd;)Z
    .locals 0

    .line 51130
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A0H()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0L(Lcom/facebook/ads/redexgen/X/E9;I)V
    .locals 1

    .line 51131
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4e;->A0L(Lcom/facebook/ads/redexgen/X/E9;I)V

    .line 51132
    if-nez p2, :cond_0

    .line 51133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Z

    .line 51134
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A06()V

    .line 51135
    :cond_0
    return-void
.end method

.method public A0M(Lcom/facebook/ads/redexgen/X/E9;II)V
    .locals 2

    .line 51136
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4e;->A0M(Lcom/facebook/ads/redexgen/X/E9;II)V

    .line 51137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Z

    .line 51138
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Z

    if-eqz v0, :cond_0

    .line 51139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Z

    .line 51140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A06()V

    .line 51141
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A06:Z

    .line 51142
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A28()I

    move-result v1

    .line 51143
    .local v0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A29()I

    move-result v0

    .line 51144
    .local v1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0B(II)V

    .line 51145
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0A(II)V

    .line 51146
    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Rd;->A0W(III)V

    .line 51147
    return-void
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/O3;
    .locals 1

    .line 51148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A03:Lcom/facebook/ads/redexgen/X/O3;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/O4;
    .locals 1

    .line 51149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0E:Lcom/facebook/ads/redexgen/X/O4;

    return-object v0
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/O5;
    .locals 1

    .line 51150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    return-object v0
.end method

.method public final A0Q()V
    .locals 4

    .line 51151
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:I

    .line 51152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A28()I

    move-result v3

    .line 51153
    .local v0, "firstPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A29()I

    move-result v2

    .line 51154
    .local v1, "lastPos":I
    .local v2, "i":I
    :goto_0
    if-gt v3, v2, :cond_0

    if-ltz v3, :cond_0

    .line 51155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/SF;

    .line 51156
    .local v3, "card":Lcom/facebook/ads/redexgen/X/SF;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SF;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51157
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:I

    .line 51158
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SF;->A0g()V

    .line 51159
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 51160
    .end local v3    # "card":Lcom/facebook/ads/redexgen/X/SF;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final A0R()V
    .locals 2

    .line 51161
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:I

    .line 51162
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/SF;

    .line 51163
    .local v0, "card":Lcom/facebook/ads/redexgen/X/SF;
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A01:I

    if-ltz v0, :cond_0

    .line 51164
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SF;->A0h()V

    .line 51165
    :cond_0
    return-void
.end method

.method public final A0S(I)V
    .locals 5

    .line 51166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    .line 51167
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/SF;

    .line 51168
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/SF;
    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Rd;->A0b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51169
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const-string v1, "Vxamqv9qm4zlsVVB8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Rd;->A0a(Lcom/facebook/ads/redexgen/X/SF;Z)V

    .line 51170
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0T(I)V
    .locals 3

    .line 51171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    .line 51172
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A1q(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/SF;

    .line 51173
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/SF;
    if-nez v2, :cond_0

    .line 51174
    return-void

    .line 51175
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Rd;->A0b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51176
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0a(Lcom/facebook/ads/redexgen/X/SF;Z)V

    .line 51177
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Rd;->A0J(Lcom/facebook/ads/redexgen/X/SF;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A05:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 51178
    const v0, -0x5f000010

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/SF;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/On;

    .line 51179
    .local v1, "cardInfo":Lcom/facebook/ads/redexgen/X/On;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A09()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O5;->setVolume(F)V

    .line 51180
    .end local v1    # "cardInfo":Lcom/facebook/ads/redexgen/X/On;
    :cond_2
    return-void

    .line 51181
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A0U(I)V
    .locals 0

    .line 51182
    invoke-direct {p0, p1, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A0A(II)V

    .line 51183
    return-void
.end method

.method public final A0V(I)V
    .locals 2

    .line 51184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4m;->A0A(I)V

    .line 51185
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0D:Lcom/facebook/ads/redexgen/X/4m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1L(Lcom/facebook/ads/redexgen/X/4m;)V

    .line 51186
    return-void
.end method

.method public final A0W(III)V
    .locals 2

    .line 51187
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Lcom/facebook/ads/redexgen/X/O1;

    if-nez v0, :cond_1

    .line 51188
    .end local v0
    .end local v1
    :cond_0
    return-void

    .line 51189
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A0C:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A27()I

    move-result v1

    .line 51190
    .local v0, "firstCompletelyVisible":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 51191
    .local v1, "recomputeFrom":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Lcom/facebook/ads/redexgen/X/O1;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/O1;->AFj(I)V

    .line 51192
    return-void

    .line 51193
    :cond_2
    if-gez p3, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method public final A0X(Landroid/os/Bundle;)V
    .locals 4

    .line 51194
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A00:F

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 51195
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A07:Z

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51196
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Rd;->A08:Z

    const/16 v2, 0x17

    const/16 v1, 0x14

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51197
    return-void
.end method

.method public A0Y(Landroid/view/View;Z)V
    .locals 1

    .line 51198
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51199
    return-void

    .line 51200
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/O1;)V
    .locals 0

    .line 51201
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rd;->A02:Lcom/facebook/ads/redexgen/X/O1;

    .line 51202
    return-void
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/SF;Z)V
    .locals 4

    .line 51203
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rd;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51204
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rd;->A0Y(Landroid/view/View;Z)V

    .line 51205
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SF;->A0j()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rd;->A0I:[Ljava/lang/String;

    const-string v1, "slnyAJQBNPORwedJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 51206
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SF;->A0g()V

    .line 51207
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A0b(Landroid/view/View;)Z
    .locals 2

    .line 51208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51209
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 51210
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
