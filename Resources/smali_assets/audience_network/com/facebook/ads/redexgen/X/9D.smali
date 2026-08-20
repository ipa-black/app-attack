.class public Lcom/facebook/ads/redexgen/X/9D;
.super Lcom/facebook/ads/redexgen/X/SF;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SX;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/M2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/O2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Op;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Rd;

.field public final A08:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A09:Lcom/facebook/ads/redexgen/X/PO;

.field public final A0A:Lcom/facebook/ads/redexgen/X/NY;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0C:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Kr;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Nm;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 20127
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3nDu3mubCrSGPsHb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUxuavEQD34fwSKO8hxc7w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmAyL1Y1BI3zOyZEMNvfuG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1nycCDmAbpyAo4RWRzHJ2ixoeiRT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fh6VcnyoMwgZMcb2oBIx6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bmD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0J:[Ljava/lang/String;

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/4 v0, 0x0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9D;->A0L:I

    .line 20128
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9D;->A0M:I

    .line 20129
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9D;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 3

    .line 20130
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/Nm;Z)V

    .line 20131
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0G:Landroid/graphics/Path;

    .line 20132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0H:Landroid/graphics/RectF;

    .line 20133
    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    .line 20134
    new-instance v0, Lcom/facebook/ads/redexgen/X/9c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9c;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A09:Lcom/facebook/ads/redexgen/X/PO;

    .line 20135
    new-instance v0, Lcom/facebook/ads/redexgen/X/9b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9b;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0B:Lcom/facebook/ads/redexgen/X/Mt;

    .line 20136
    new-instance v0, Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0A:Lcom/facebook/ads/redexgen/X/NY;

    .line 20137
    new-instance v0, Lcom/facebook/ads/redexgen/X/9E;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9E;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/M9;

    .line 20138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    .line 20139
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9D;->A07:Lcom/facebook/ads/redexgen/X/Rd;

    .line 20140
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/lang/String;

    .line 20141
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 20142
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9D;->setGravity(I)V

    .line 20143
    sget v1, Lcom/facebook/ads/redexgen/X/9D;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9D;->setPadding(IIII)V

    .line 20144
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 20145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9D;->setUpView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 20146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0F:Landroid/graphics/Paint;

    .line 20147
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0F:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20148
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0F:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0F:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 20152
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9D;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20153
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Sa;
    .locals 0

    .line 20154
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Sa;
    .locals 0

    .line 20155
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object p0

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 20156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

    .line 20158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->A93(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 20159
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->A07(Z)V

    .line 20161
    :cond_0
    return-void
.end method

.method private A03()V
    .locals 2

    .line 20162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->A05()V

    .line 20164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

    .line 20165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0I:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A0A()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->AFf(Lcom/facebook/ads/redexgen/X/RA;)V

    .line 20166
    :cond_0
    return-void
.end method

.method private A04()V
    .locals 4

    .line 20167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A01:Lcom/facebook/ads/redexgen/X/O2;

    if-nez v0, :cond_0

    .line 20168
    return-void

    .line 20169
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A05:Z

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0J:[Ljava/lang/String;

    const-string v1, "whWH7G9NZGoicUCMK8TGye"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jQqQ2QRGHP0rmsCqitHuog"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Z

    if-eqz v0, :cond_4

    .line 20170
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A01:Lcom/facebook/ads/redexgen/X/O2;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O2;->AAF()V

    .line 20171
    :cond_4
    return-void
.end method

.method private A05(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20172
    if-nez p1, :cond_0

    .line 20173
    return-void

    .line 20174
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20175
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v2, :cond_1

    .line 20176
    return-void

    .line 20177
    :cond_1
    const/16 v1, 0xd

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20178
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20179
    return-void
.end method

.method public static A06(Landroid/view/View;)V
    .locals 3

    .line 20180
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20181
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 20182
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/9D;)V
    .locals 0

    .line 20183
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A03()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9D;)V
    .locals 0

    .line 20184
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A02()V

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9D;)V
    .locals 0

    .line 20185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A04()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/9D;Z)Z
    .locals 0

    .line 20186
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A05:Z

    return p1
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/9D;Z)Z
    .locals 0

    .line 20187
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 20265
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9D;->setUpImageView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 20266
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9D;->setUpVideoView(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 20267
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9D;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 20268
    return-void
.end method


# virtual methods
.method public final A0D()Z
    .locals 1

    .line 20188
    const/4 v0, 0x0

    return v0
.end method

.method public final A0d()Z
    .locals 1

    .line 20189
    const/4 v0, 0x0

    return v0
.end method

.method public final A0g()V
    .locals 1

    .line 20190
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

    .line 20191
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->A01()V

    .line 20192
    :cond_0
    return-void
.end method

.method public final A0h()V
    .locals 2

    .line 20193
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20194
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0i()V

    .line 20195
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v1, :cond_0

    .line 20196
    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A02:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A05(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 20197
    :cond_0
    return-void
.end method

.method public final A0i()V
    .locals 2

    .line 20198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A07:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0P()Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O5;->getVolume()F

    move-result v1

    .line 20199
    .local v0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 20200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Op;->setVolume(F)V

    .line 20201
    :cond_0
    return-void
.end method

.method public final A0j()Z
    .locals 1

    .line 20202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

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

    .line 20203
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A03:Z

    return v0
.end method

.method public final A0l(Ljava/util/Map;)V
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

    .line 20204
    .local p1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

    .line 20205
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->A02()V

    .line 20206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20207
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Op;->A04(Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Ljava/util/Map;)V

    .line 20208
    :cond_0
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/Op;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 20210
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20211
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 20212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20213
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20214
    const/4 v5, 0x0

    .line 20215
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 20216
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 20217
    sget v5, Lcom/facebook/ads/redexgen/X/9D;->A0K:I

    .line 20218
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9D;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9D;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20220
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9D;->A0H:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9D;->A0L:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9D;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9D;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20221
    if-eqz v6, :cond_1

    .line 20222
    sget v5, Lcom/facebook/ads/redexgen/X/9D;->A0M:I

    .line 20223
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9D;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9D;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20225
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->onDraw(Landroid/graphics/Canvas;)V

    .line 20226
    return-void

    .line 20227
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
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

    .line 20228
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getCtaButton()Lcom/facebook/ads/redexgen/X/Sa;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Sa;->setCta(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/util/Map;)V

    .line 20229
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 20230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    if-eqz v1, :cond_0

    .line 20231
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setVisibility(I)V

    .line 20232
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 20233
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04()Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/redexgen/X/9D;Lcom/facebook/ads/redexgen/X/9e;)V

    .line 20234
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A06(Lcom/facebook/ads/redexgen/X/N9;)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v0

    .line 20235
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 20236
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v1, :cond_1

    .line 20237
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->setVisibility(I)V

    .line 20238
    :cond_1
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 20239
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A03:Z

    .line 20240
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O2;)V
    .locals 0

    .line 20241
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 20242
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 20243
    new-instance v0, Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/M2;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    .line 20244
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20245
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20246
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A06(Landroid/view/View;)V

    .line 20247
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 2

    .line 20248
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    .line 20249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A06(Landroid/view/View;)V

    .line 20250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    if-eqz v1, :cond_0

    .line 20251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9D;->A05(Landroid/view/View;)V

    .line 20253
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v1, :cond_1

    .line 20254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9D;->A05(Landroid/view/View;)V

    .line 20256
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9D;->addView(Landroid/view/View;)V

    .line 20257
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 3

    .line 20258
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/lang/String;

    .line 20259
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ni;->getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 20260
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Op;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ii;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    .line 20261
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IK;->A14(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20262
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NO;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20263
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9D;->A06(Landroid/view/View;)V

    .line 20264
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 20269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v0, :cond_0

    .line 20270
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 20271
    :cond_0
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 5

    .line 20272
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/M2;

    if-eqz v4, :cond_0

    .line 20273
    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0J:[Ljava/lang/String;

    const-string v1, "s54OOOYMcUndmM7F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/M2;->setVisibility(I)V

    .line 20274
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    if-eqz v1, :cond_1

    .line 20275
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->setVisibility(I)V

    .line 20276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Op;->setVideoURI(Ljava/lang/String;)V

    .line 20277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 20278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A09:Lcom/facebook/ads/redexgen/X/PO;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 20279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0B:Lcom/facebook/ads/redexgen/X/Mt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 20280
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0A:Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 20281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/Op;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/M9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Op;->A03(Lcom/facebook/ads/redexgen/X/8V;)V

    .line 20282
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
