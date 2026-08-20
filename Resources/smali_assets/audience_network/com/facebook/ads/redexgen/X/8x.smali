.class public abstract Lcom/facebook/ads/redexgen/X/8x;
.super Lcom/facebook/ads/redexgen/X/SF;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SE;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/M2;

.field public A02:Lcom/facebook/ads/redexgen/X/O2;

.field public A03:Lcom/facebook/ads/redexgen/X/Rd;

.field public A04:Lcom/facebook/ads/redexgen/X/Op;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0C:Lcom/facebook/ads/redexgen/X/PO;

.field public final A0D:Lcom/facebook/ads/redexgen/X/NY;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0F:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A0H:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 19762
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZJd3r9AhG0a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "i1M"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "myOt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "scTs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x2qjzjwt5KjNEBlbZiSy7b60v5gMv07i"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l9mbaUlHikXHnlqbzXlarwn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RgzjkxP8tSu3AToRYAuzqOa1HsgYA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "48ukShptsWaLS3SUfEjE876"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8x;->A0I:[Ljava/lang/String;

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/8x;->A0K:I

    .line 19763
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/8x;->A0L:I

    .line 19764
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/8x;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 3

    .line 19765
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 19766
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A09:Landroid/graphics/Path;

    .line 19767
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0A:Landroid/graphics/RectF;

    .line 19768
    new-instance v0, Lcom/facebook/ads/redexgen/X/92;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/92;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0G:Lcom/facebook/ads/redexgen/X/Kr;

    .line 19769
    new-instance v0, Lcom/facebook/ads/redexgen/X/91;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/91;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0C:Lcom/facebook/ads/redexgen/X/PO;

    .line 19770
    new-instance v0, Lcom/facebook/ads/redexgen/X/90;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/90;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0E:Lcom/facebook/ads/redexgen/X/Mt;

    .line 19771
    new-instance v0, Lcom/facebook/ads/redexgen/X/8z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8z;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0D:Lcom/facebook/ads/redexgen/X/NY;

    .line 19772
    new-instance v0, Lcom/facebook/ads/redexgen/X/8y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8y;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0F:Lcom/facebook/ads/redexgen/X/M9;

    .line 19773
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/8x;->A03:Lcom/facebook/ads/redexgen/X/Rd;

    .line 19774
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8x;->A0H:Ljava/lang/String;

    .line 19775
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 19776
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8x;->setGravity(I)V

    .line 19777
    sget v1, Lcom/facebook/ads/redexgen/X/8x;->A0K:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/8x;->setPadding(IIII)V

    .line 19778
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 19779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8x;->setUpView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 19780
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A08:Landroid/graphics/Paint;

    .line 19781
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19782
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A08:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A08:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A08:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19785
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 19786
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/8x;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19787
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8x;)Lcom/facebook/ads/redexgen/X/Sa;
    .locals 0

    .line 19788
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/8x;)Lcom/facebook/ads/redexgen/X/Sa;
    .locals 0

    .line 19789
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8x;)Lcom/facebook/ads/redexgen/X/Rd;
    .locals 0

    .line 19790
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8x;->A03:Lcom/facebook/ads/redexgen/X/Rd;

    return-object p0
.end method

.method private A03()V
    .locals 1

    .line 19791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A02:Lcom/facebook/ads/redexgen/X/O2;

    if-nez v0, :cond_0

    .line 19792
    return-void

    .line 19793
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A07:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A06:Z

    if-eqz v0, :cond_3

    .line 19794
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A02:Lcom/facebook/ads/redexgen/X/O2;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O2;->AAF()V

    .line 19795
    :cond_3
    return-void
.end method

.method private A04(Landroid/view/View;)V
    .locals 3

    .line 19796
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19797
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 19798
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/8x;)V
    .locals 0

    .line 19799
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8x;->A03()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/8x;Z)Z
    .locals 0

    .line 19800
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8x;->A07:Z

    return p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/8x;Z)Z
    .locals 0

    .line 19801
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8x;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 19862
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/8x;->setUpImageView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 19863
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/8x;->setUpVideoView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 19864
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/8x;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 19865
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 19866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 19867
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/8x;->A0l(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 19868
    return-void
.end method


# virtual methods
.method public A0D()Z
    .locals 1

    .line 19802
    const/4 v0, 0x0

    return v0
.end method

.method public final A0d()Z
    .locals 1

    .line 19803
    const/4 v0, 0x0

    return v0
.end method

.method public final A0g()V
    .locals 1

    .line 19804
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->A01()V

    .line 19806
    :cond_0
    return-void
.end method

.method public final A0h()V
    .locals 2

    .line 19807
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19808
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0i()V

    .line 19809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A02:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A05(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 19810
    :cond_0
    return-void
.end method

.method public final A0i()V
    .locals 2

    .line 19811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A03:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0P()Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O5;->getVolume()F

    move-result v1

    .line 19812
    .local v0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 19813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Op;->setVolume(F)V

    .line 19814
    :cond_0
    return-void
.end method

.method public final A0j()Z
    .locals 1

    .line 19815
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0k()Z
    .locals 1

    .line 19816
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A05:Z

    return v0
.end method

.method public abstract A0l(Lcom/facebook/ads/redexgen/X/Xc;)V
.end method

.method public final A0m(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19817
    .local p1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->A02()V

    .line 19818
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19819
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0H:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Op;->A04(Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Ljava/util/Map;)V

    .line 19820
    :cond_0
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 19821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/Op;
    .locals 1

    .line 19822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 19823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 19824
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8x;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19825
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8x;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8x;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/8x;->A0J:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 19826
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19827
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8x;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/8x;->A0K:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/8x;->A0K:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8x;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/8x;->A0K:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19828
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8x;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8x;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/8x;->A0L:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 19829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 19830
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->onDraw(Landroid/graphics/Canvas;)V

    .line 19831
    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 19832
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Na;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 19833
    return-void
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/1M;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1M;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19834
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0H:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;)V

    .line 19835
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 19836
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setVisibility(I)V

    .line 19837
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->setVisibility(I)V

    .line 19838
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 19839
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/SE;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/92;)V

    .line 19840
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v0

    .line 19841
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 19842
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 19843
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/8x;->A05:Z

    .line 19844
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O2;)V
    .locals 0

    .line 19845
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8x;->A02:Lcom/facebook/ads/redexgen/X/O2;

    .line 19846
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 19847
    new-instance v0, Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/M2;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    .line 19848
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O6;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19850
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8x;->A04(Landroid/view/View;)V

    .line 19851
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 1

    .line 19852
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A00:Landroid/widget/RelativeLayout;

    .line 19853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8x;->A04(Landroid/view/View;)V

    .line 19854
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 3

    .line 19855
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8x;->A0H:Ljava/lang/String;

    .line 19856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 19857
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Op;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ii;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    .line 19858
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A14(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Lcom/facebook/ads/redexgen/X/8x;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19860
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8x;->A04(Landroid/view/View;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/8x;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 19861
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8x;->A0I:[Ljava/lang/String;

    const-string v1, "V2iAUpZbaEbKk91ZDPvMgym9lCZNc3yl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 19869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 19870
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 19871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A01:Lcom/facebook/ads/redexgen/X/M2;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setVisibility(I)V

    .line 19872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->setVisibility(I)V

    .line 19873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setVideoURI(Ljava/lang/String;)V

    .line 19874
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0G:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 19875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0C:Lcom/facebook/ads/redexgen/X/PO;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 19876
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0E:Lcom/facebook/ads/redexgen/X/Mt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 19877
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0D:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 19878
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8x;->A04:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8x;->A0F:Lcom/facebook/ads/redexgen/X/M9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 19879
    return-void
.end method
