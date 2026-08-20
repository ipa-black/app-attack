.class public final Lcom/facebook/ads/redexgen/X/My;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/Lj;

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/YO;

.field public A01:Lcom/facebook/ads/redexgen/X/Xc;

.field public A02:Lcom/facebook/ads/redexgen/X/0w;

.field public A03:Lcom/facebook/ads/redexgen/X/So;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/NT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 45140
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CT308ms2RTF49ixw7iITcI5DvAIGWMXZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qur6nZLrhU9XJET37yOODnXWYcrj37IJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KopKmjllEHptdGx3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mL4xXMXopKoNgp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1VwEGJcTQNgN7iTbFc9O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/My;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/My;->A09:I

    .line 45141
    sget v0, Lcom/facebook/ads/redexgen/X/My;->A09:I

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/facebook/ads/redexgen/X/My;->A08:I

    .line 45142
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/My;->A0A:I

    .line 45143
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sn;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/My;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 45144
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45146
    new-instance v0, Lcom/facebook/ads/redexgen/X/0w;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/0w;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 45147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 45148
    new-instance v0, Lcom/facebook/ads/redexgen/X/EA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Lcom/facebook/ads/redexgen/X/YO;

    .line 45149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A00:Lcom/facebook/ads/redexgen/X/YO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YO;->A0G(Lcom/facebook/ads/redexgen/X/E9;)V

    .line 45150
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45151
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/My;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45153
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/My;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/My;->A07:[Ljava/lang/String;

    const-string v1, "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Zs;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Zs;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;"
        }
    .end annotation

    .line 45154
    if-nez p1, :cond_0

    .line 45155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 45156
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0o()Ljava/util/List;

    move-result-object v5

    .line 45157
    .local v0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45158
    .local v1, "mCarouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 45159
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/1C;

    .line 45160
    .local v3, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/On;-><init>(IILcom/facebook/ads/redexgen/X/1C;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45161
    .end local v3    # "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45162
    .end local v2    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/My;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x19t
        0x5t
        0x16t
        0x13t
        0x19t
        0x17t
        0x9t
        0x10t
        -0x3ct
        -0xet
        0x5t
        0x18t
        0xdt
        0x1at
        0x9t
        -0x3ct
        0x1at
        0xdt
        0x9t
        0x1bt
        -0x3ct
        0x5t
        0x8t
        0x9t
        0x14t
        0x18t
        0x9t
        0x16t
        -0x3ct
        0xdt
        0x17t
        0x12t
        -0x35t
        0x18t
        -0x3ct
        0x7t
        0x16t
        0x9t
        0x5t
        0x18t
        0x9t
        0x8t
        -0x3ct
        0x14t
        0x16t
        0x13t
        0x14t
        0x9t
        0x16t
        0x10t
        0x1dt
        -0x5t
        -0x7t
        0x2t
        -0x7t
        0x6t
        -0x3t
        -0x9t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/My;I)V
    .locals 0

    .line 45163
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/My;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static getDummyListener()Lcom/facebook/ads/redexgen/X/Lj;
    .locals 1

    .line 45186
    sget-object v0, Lcom/facebook/ads/redexgen/X/My;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    return-object v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 1

    .line 45192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A04:Lcom/facebook/ads/redexgen/X/NT;

    if-eqz v0, :cond_0

    .line 45193
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NT;->A00(I)V

    .line 45194
    :cond_0
    return-void
.end method

.method private setupDotsLayout(Lcom/facebook/ads/redexgen/X/Tp;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;)V"
        }
    .end annotation

    .line 45195
    .local p2, "carouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 45196
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9g;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sm;-><init>(Lcom/facebook/ads/redexgen/X/My;)V

    .line 45197
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0Z(Lcom/facebook/ads/redexgen/X/O1;)V

    .line 45198
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45199
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v2

    .line 45200
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NT;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NT;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A04:Lcom/facebook/ads/redexgen/X/NT;

    .line 45201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A04:Lcom/facebook/ads/redexgen/X/NT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 45202
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45203
    .local v0, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45204
    sget v1, Lcom/facebook/ads/redexgen/X/My;->A0A:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A04:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/My;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45206
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 2

    .line 45164
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 45165
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Tp;I)V
    .locals 11

    .line 45166
    move-object v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/My;->A01(Lcom/facebook/ads/redexgen/X/Zs;)Ljava/util/ArrayList;

    move-result-object v3

    .line 45167
    .local v0, "carouselCardInfo":Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0w;->setCardsInfo(Ljava/util/ArrayList;)V

    .line 45168
    new-instance v1, Lcom/facebook/ads/redexgen/X/So;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45169
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45170
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v5

    sget-object v7, Lcom/facebook/ads/redexgen/X/My;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    .line 45171
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 45172
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9g;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/So;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/redexgen/X/Lj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9g;Lcom/facebook/ads/redexgen/X/JW;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Lcom/facebook/ads/redexgen/X/So;

    .line 45173
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 45174
    sget v0, Lcom/facebook/ads/redexgen/X/My;->A08:I

    sub-int/2addr p2, v0

    .line 45175
    .local v1, "childWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Lcom/facebook/ads/redexgen/X/So;

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A0F(III)V

    .line 45176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Lcom/facebook/ads/redexgen/X/So;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A06()V

    .line 45177
    invoke-direct {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/My;->setupDotsLayout(Lcom/facebook/ads/redexgen/X/Tp;Ljava/util/ArrayList;)V

    .line 45178
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/QA;)V
    .locals 6

    .line 45179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Lcom/facebook/ads/redexgen/X/So;

    if-eqz v0, :cond_0

    .line 45180
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/So;->A0G(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 45181
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0w;->A23(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 45182
    return-void

    .line 45183
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/My;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 45184
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A1u:I

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 45185
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    goto :goto_0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 45187
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/My;->A03:Lcom/facebook/ads/redexgen/X/So;

    if-eqz v3, :cond_0

    .line 45188
    sub-int v2, p4, p2

    sget v0, Lcom/facebook/ads/redexgen/X/My;->A08:I

    sub-int/2addr v2, v0

    .line 45189
    .local v1, "childWidth":I
    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A0F(III)V

    .line 45190
    .end local v1    # "childWidth":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 45191
    return-void
.end method
