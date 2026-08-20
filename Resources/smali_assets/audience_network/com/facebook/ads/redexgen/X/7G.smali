.class public final Lcom/facebook/ads/redexgen/X/7G;
.super Lcom/facebook/ads/redexgen/X/T9;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Os;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I

.field public static final A0S:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/F1;

.field public A05:Lcom/facebook/ads/redexgen/X/6M;

.field public A06:Lcom/facebook/ads/redexgen/X/2M;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/ND;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Lcom/facebook/ads/redexgen/X/NT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/Rd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/QA;

.field public A0C:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/On;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/1L;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A0H:Lcom/facebook/ads/redexgen/X/LD;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Nm;

.field public final A0K:Lcom/facebook/ads/redexgen/X/Ot;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Ot;

.field public final A0M:Lcom/facebook/ads/redexgen/X/JW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 16428
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jpfQHsJU1lQWxp7CXlwdVdxcmzkEjD3g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zEjz0M8mBGIlVid6uM60nN2wm9TWrUGD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N1PpSZkKdQQSk7AxXPBdtL04F7CB9SRH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NsCDsqdLjA318x1fHEY8u0Kcg9miAoAi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WmIcjMDFfLwNDk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Zb94j8IQkKLdVAKFmXIR3eGQpuAhW41l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pxOHyfKHQ8aixQeNEjeruqZzDXsiYM9P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7G;->A0B()V

    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7G;->A0Q:I

    .line 16429
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7G;->A0R:I

    .line 16430
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/7G;->A0S:I

    .line 16431
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/7G;->A0P:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/F1;)V
    .locals 10

    .line 16432
    move-object v1, p0

    move-object v4, p2

    invoke-direct {p0, p1, v4, p4, p5}, Lcom/facebook/ads/redexgen/X/T9;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;)V

    .line 16433
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    .line 16434
    const/4 v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    .line 16435
    iput-object p3, v1, Lcom/facebook/ads/redexgen/X/7G;->A05:Lcom/facebook/ads/redexgen/X/6M;

    .line 16436
    iput-object p1, v1, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    .line 16437
    iput-object p4, v1, Lcom/facebook/ads/redexgen/X/7G;->A0I:Lcom/facebook/ads/redexgen/X/Lj;

    .line 16438
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0E:I

    .line 16439
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JW;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/JW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0M:Lcom/facebook/ads/redexgen/X/JW;

    .line 16440
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Or;->A04:Lcom/facebook/ads/redexgen/X/Or;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ot;

    invoke-direct {v0, v3, v2, p0}, Lcom/facebook/ads/redexgen/X/Ot;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Or;Lcom/facebook/ads/redexgen/X/Os;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0L:Lcom/facebook/ads/redexgen/X/Ot;

    .line 16441
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Or;->A03:Lcom/facebook/ads/redexgen/X/Or;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ot;

    invoke-direct {v0, v3, v2, p0}, Lcom/facebook/ads/redexgen/X/Ot;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Or;Lcom/facebook/ads/redexgen/X/Os;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0K:Lcom/facebook/ads/redexgen/X/Ot;

    .line 16442
    new-instance v2, Lcom/facebook/ads/redexgen/X/Nl;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    .line 16443
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v5

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v9, v1, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Zs;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    .line 16444
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0H(Lcom/facebook/ads/redexgen/X/Li;)Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    .line 16445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->A0J()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0J:Lcom/facebook/ads/redexgen/X/Nm;

    .line 16446
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Zs;->A0g()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0F:Lcom/facebook/ads/redexgen/X/1L;

    .line 16447
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16448
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgressSpinnerInvisible(Z)V

    .line 16449
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7G;)Lcom/facebook/ads/redexgen/X/Zs;
    .locals 0

    .line 16450
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7G;)Lcom/facebook/ads/redexgen/X/F1;
    .locals 0

    .line 16451
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7G;)Lcom/facebook/ads/redexgen/X/Xc;
    .locals 0

    .line 16452
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7G;)Lcom/facebook/ads/redexgen/X/Ia;
    .locals 0

    .line 16453
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7G;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 16454
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7G;)Lcom/facebook/ads/redexgen/X/QA;
    .locals 0

    .line 16455
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7G;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/7G;)Ljava/lang/String;
    .locals 0

    .line 16456
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    return-object p0
.end method

.method private A08()V
    .locals 5

    .line 16457
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    const/4 v4, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 16458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0K:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ot;->setVisibility(I)V

    .line 16459
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0E:I

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 16460
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7G;->A0L:Lcom/facebook/ads/redexgen/X/Ot;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, "6a52QfyEa3IWfhbHGHqjZ8J10HxaoQoC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Ot;->setVisibility(I)V

    .line 16461
    :goto_1
    return-void

    .line 16462
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0L:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ot;->setVisibility(I)V

    goto :goto_1

    .line 16463
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0K:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ot;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09()V
    .locals 4

    .line 16464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    if-eqz v0, :cond_0

    .line 16465
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16466
    .local v0, "dotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7G;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 16467
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2M;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16468
    sget v0, Lcom/facebook/ads/redexgen/X/7G;->A0Q:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16469
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/NT;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16471
    .end local v0    # "dotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 16472
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16473
    sget v0, Lcom/facebook/ads/redexgen/X/7G;->A0Q:I

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A0A()V
    .locals 5

    .line 16474
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7G;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16475
    .local v0, "orientation":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16476
    .local v1, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A03:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16477
    .local v2, "height":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 16478
    sget v0, Lcom/facebook/ads/redexgen/X/7G;->A0Q:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v1, v4, v0

    div-int/lit8 v0, v2, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 16479
    .local v3, "childWidth":I
    sub-int/2addr v4, v3

    const/16 v2, 0x8

    div-int/2addr v4, v2

    .line 16480
    .local v4, "childSpacing":I
    mul-int/lit8 v1, v4, 0x4

    .line 16481
    .local p1, "extraSpacing":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0K:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ot;->setVisibility(I)V

    .line 16482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0L:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ot;->setVisibility(I)V

    .line 16483
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    if-eqz v0, :cond_1

    .line 16484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2M;->getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/Rc;

    move-result-object v0

    .line 16485
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/Rc;
    if-eqz v0, :cond_0

    .line 16486
    invoke-virtual {v0, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Rc;->A0F(III)V

    .line 16487
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A06()V

    .line 16488
    :cond_0
    :goto_1
    return-void

    .line 16489
    :cond_1
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16490
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7G;->onDestroy()V

    goto :goto_1

    .line 16491
    .end local v3    # "childWidth":I
    .end local v4    # "childSpacing":I
    .end local p1
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 16492
    .restart local v3    # "childWidth":I
    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 16493
    .restart local v4    # "childSpacing":I
    move v1, v4

    .line 16494
    .restart local p1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7G;->A08()V

    goto :goto_0
.end method

.method public static A0B()V
    .locals 4

    const/16 v0, 0x81

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, "0pXVmbGKHAzIVbBBK7Eyv6Mrdc2f0VIY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/7G;->A0N:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x5et
        -0x75t
        -0x75t
        -0x78t
        -0x75t
        0x39t
        0x7ct
        -0x75t
        0x7et
        0x7at
        -0x73t
        -0x7et
        -0x79t
        -0x80t
        0x39t
        0x7ct
        0x7at
        -0x75t
        -0x78t
        -0x72t
        -0x74t
        0x7et
        -0x7bt
        0x39t
        -0x71t
        -0x7et
        0x7et
        -0x70t
        0x59t
        -0x7at
        -0x7at
        -0x7dt
        -0x7at
        0x34t
        -0x75t
        0x7ct
        0x7dt
        -0x80t
        0x79t
        0x34t
        0x77t
        0x75t
        -0x7at
        -0x7dt
        -0x77t
        -0x79t
        0x79t
        -0x80t
        0x34t
        0x77t
        0x75t
        -0x7at
        0x78t
        0x34t
        0x77t
        0x7ct
        0x75t
        -0x7et
        0x7bt
        0x79t
        0x42t
        0x5bt
        0x57t
        0x56t
        -0x76t
        0x79t
        0x7et
        0x7at
        -0x7dt
        0x78t
        0x7at
        0x63t
        0x7at
        -0x77t
        -0x74t
        -0x7ct
        -0x79t
        -0x80t
        -0x61t
        -0x5et
        -0x63t
        -0x5et
        -0x61t
        -0x4et
        -0x61t
        -0x63t
        -0x60t
        -0x4dt
        -0x54t
        -0x5et
        -0x56t
        -0x5dt
        -0x21t
        -0x15t
        -0x17t
        -0x56t
        -0x1et
        -0x23t
        -0x21t
        -0x1ft
        -0x22t
        -0x15t
        -0x15t
        -0x19t
        -0x56t
        -0x23t
        -0x20t
        -0x11t
        -0x56t
        -0x1bt
        -0x16t
        -0x10t
        -0x1ft
        -0x12t
        -0x11t
        -0x10t
        -0x1bt
        -0x10t
        -0x1bt
        -0x23t
        -0x18t
        -0x56t
        -0x21t
        -0x18t
        -0x1bt
        -0x21t
        -0x19t
        -0x1ft
        -0x20t
    .end array-data
.end method

.method private final A0C()V
    .locals 4

    .line 16495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16496
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2M;->removeAllViews()V

    .line 16497
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    .line 16498
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    if-eqz v0, :cond_1

    .line 16499
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NT;->removeAllViews()V

    .line 16500
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    .line 16501
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 16502
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 16503
    :cond_3
    return-void
.end method

.method private final A0D(ILandroid/os/Bundle;)V
    .locals 21
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16504
    move-object/from16 v0, p0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move/from16 v1, p1

    if-ne v1, v6, :cond_6

    const/4 v9, 0x1

    .line 16505
    .local v10, "isPortrait":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7G;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    .line 16506
    new-instance v10, Lcom/facebook/ads/redexgen/X/SW;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v12, 0x0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    .line 16507
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A03()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1J;->A00()Lcom/facebook/ads/redexgen/X/1H;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1H;->A05:Lcom/facebook/ads/redexgen/X/1H;

    if-ne v3, v2, :cond_5

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/7G;->A0F:Lcom/facebook/ads/redexgen/X/1L;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 16508
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1M;->A06()Z

    move-result v15

    .line 16509
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/T9;->getAdEventManager()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v17

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7G;->A0I:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    const/16 v8, 0x5c

    const/16 v3, 0x25

    const/16 v2, 0x6e

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v10 .. v20}, Lcom/facebook/ads/redexgen/X/SW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;IZLcom/facebook/ads/redexgen/X/1L;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;)V

    iput-object v10, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    .line 16510
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    .line 16511
    if-eqz v9, :cond_4

    const/4 v2, 0x1

    .line 16512
    :goto_2
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/ND;->A0C(I)V

    .line 16513
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    const/4 v5, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16514
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/7G;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    .line 16515
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/QA;

    invoke-direct {v2, v0, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    .line 16516
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/QA;->A0W(I)V

    .line 16517
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A02:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/QA;->A0X(I)V

    .line 16518
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/2M;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2M;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    .line 16519
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 16520
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16521
    .local v13, "recyclerViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16522
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rd;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    move v5, v1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Rd;-><init>(Lcom/facebook/ads/redexgen/X/2M;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QA;Landroid/os/Bundle;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    .line 16523
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 16524
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Rc;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/T9;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/7G;->A05:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    .line 16525
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/T9;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lj;

    move-result-object v16

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7G;->A0M:Lcom/facebook/ads/redexgen/X/JW;

    .end local v10    # "isPortrait":Z
    .local p6, "isPortrait":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/T9;->A0E:Lcom/facebook/ads/redexgen/X/Li;

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v7

    invoke-direct/range {v8 .. v20}, Lcom/facebook/ads/redexgen/X/Rc;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/QA;Lcom/facebook/ads/redexgen/X/LD;Lcom/facebook/ads/redexgen/X/Lj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rd;Lcom/facebook/ads/redexgen/X/JW;Lcom/facebook/ads/redexgen/X/Li;)V

    .line 16526
    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/E9;->setAdapter(Lcom/facebook/ads/redexgen/X/4N;)V

    .line 16527
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7G;->A0A()V

    .line 16528
    :goto_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7G;->A0F(Lcom/facebook/ads/redexgen/X/Rd;)V

    .line 16529
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16530
    .local v1, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16531
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16532
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    .line 16533
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v11

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 16534
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x11

    if-eq v4, v3, :cond_7

    sget-object v7, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v4, ""

    const/4 v3, 0x5

    aput-object v4, v7, v3

    invoke-interface {v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Im;->AFp(Landroid/view/View;Ljava/lang/String;Z)V

    .line 16535
    :cond_0
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16536
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7G;->A09()V

    .line 16537
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16538
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/ND;->setTitleMaxLines(I)V

    .line 16539
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ND;->A0A()V

    .line 16540
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ND;->A09()V

    .line 16541
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    invoke-virtual {v3, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16542
    const/4 v2, -0x2

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16543
    .local v3, "leftArrowLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16544
    .local v4, "rightArrowLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16545
    const/16 v4, 0xf

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16546
    sget v2, Lcom/facebook/ads/redexgen/X/7G;->A0P:I

    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16547
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16548
    sget v3, Lcom/facebook/ads/redexgen/X/7G;->A0Q:I

    const/4 v2, 0x0

    invoke-virtual {v7, v3, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16549
    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16550
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16551
    sget v2, Lcom/facebook/ads/redexgen/X/7G;->A0P:I

    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16552
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16553
    sget v3, Lcom/facebook/ads/redexgen/X/7G;->A0Q:I

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16554
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0K:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v3, v2, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16555
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0L:Lcom/facebook/ads/redexgen/X/Ot;

    invoke-virtual {v3, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16556
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16557
    .local v5, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16558
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A0M:Lcom/facebook/ads/redexgen/X/JW;

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16559
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7G;->A03:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/T9;->A0U(Landroid/view/View;ZI)V

    .line 16560
    sget v1, Lcom/facebook/ads/redexgen/X/Ne;->A00:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7G;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7G;->removeView(Landroid/view/View;)V

    .line 16561
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IK;->A2A(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16562
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 16563
    :goto_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 16564
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    .line 16565
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    .line 16566
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v4

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 16567
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 16568
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/ND;->setInfo(Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 16569
    :cond_1
    return-void

    .line 16570
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7G;->A0J:Lcom/facebook/ads/redexgen/X/Nm;

    .line 16571
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    .line 16572
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v1

    .line 16573
    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_4

    .line 16574
    .end local p6
    .restart local v10    # "isPortrait":Z
    .end local v10    # "isPortrait":Z
    .restart local p6
    :cond_3
    const/16 v8, 0x3d

    const/16 v7, 0x11

    const/4 v6, 0x7

    sget-object v4, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v4, v3

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x50

    if-eq v4, v3, :cond_8

    sget-object v5, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v4, ""

    const/4 v3, 0x5

    aput-object v4, v5, v3

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v4, 0x1c

    const/16 v3, 0xb

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16575
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7G;->onDestroy()V

    goto/16 :goto_3

    .line 16576
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 16577
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 16578
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/F1;)V
    .locals 6

    .line 16579
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    .line 16580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    .line 16581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0A()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A01:I

    .line 16582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0B()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A02:I

    .line 16583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0o()Ljava/util/List;

    move-result-object v5

    .line 16584
    .local v0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    .line 16585
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 16586
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/1C;

    .line 16587
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/On;-><init>(IILcom/facebook/ads/redexgen/X/1C;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16588
    .end local v2    # "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16589
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 4

    .line 16590
    new-instance v1, Lcom/facebook/ads/redexgen/X/EA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    .line 16591
    .local v0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/YO;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YO;->A0G(Lcom/facebook/ads/redexgen/X/E9;)V

    .line 16592
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ra;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ra;-><init>(Lcom/facebook/ads/redexgen/X/7G;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0Z(Lcom/facebook/ads/redexgen/X/O1;)V

    .line 16593
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A05:Lcom/facebook/ads/redexgen/X/18;

    .line 16594
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A01()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NT;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NT;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1L;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    .line 16595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 16596
    sget v1, Lcom/facebook/ads/redexgen/X/7G;->A0R:I

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16597
    .local v1, "positionDotsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/7G;->A0S:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 16598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/NT;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16599
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/7G;I)V
    .locals 0

    .line 16600
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7G;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/7G;Lcom/facebook/ads/redexgen/X/LD;)V
    .locals 0

    .line 16601
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/T9;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/LD;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/7G;)Z
    .locals 0

    .line 16602
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0Z()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/7G;)Z
    .locals 0

    .line 16603
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T9;->A0Y()Z

    move-result p0

    return p0
.end method

.method private setAdDetailsToolBarClickListener(I)V
    .locals 4

    .line 16667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0J:Lcom/facebook/ads/redexgen/X/Nm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16668
    :cond_0
    return-void

    .line 16669
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    .line 16670
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 16671
    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, "L2Q99TOJcURMOBK7mibMWk3Gkyoj0cp8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bh6RAua9XdYQzRZgXDnYUJ30pnvEuGys"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4N;->A0D()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 16672
    .end local v0
    :cond_2
    return-void

    .line 16673
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    .line 16674
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/E9;->A1F(I)Lcom/facebook/ads/redexgen/X/4r;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Lm;

    .line 16675
    .local v0, "setAdToolBarClickListener":Lcom/facebook/ads/redexgen/X/Lm;
    if-nez v1, :cond_4

    .line 16676
    return-void

    .line 16677
    :cond_4
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Lm;->AEn()V

    .line 16678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lm;->AEl(Lcom/facebook/ads/redexgen/X/ND;)V

    .line 16679
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 11

    .line 16680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A08:Lcom/facebook/ads/redexgen/X/NT;

    if-eqz v0, :cond_0

    .line 16681
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NT;->A00(I)V

    .line 16682
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A04:Lcom/facebook/ads/redexgen/X/F1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Zs;->A0i(I)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v4

    .line 16683
    .local v0, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    if-eqz v4, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    if-eq v0, p1, :cond_3

    .line 16684
    iput p1, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    .line 16685
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7G;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 16686
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7G;->A08()V

    .line 16687
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ne;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7G;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7G;->removeView(Landroid/view/View;)V

    .line 16688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A2A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16689
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 16690
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, "kFih28rpO37RepskuaJrvvoNb65qRIkh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v5, :cond_5

    .line 16691
    :cond_2
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0x21

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16692
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A0M:Lcom/facebook/ads/redexgen/X/JW;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->setVisibility(I)V

    .line 16694
    :cond_3
    :goto_2
    return-void

    .line 16695
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A0M:Lcom/facebook/ads/redexgen/X/JW;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JW;->setVisibility(I)V

    goto :goto_2

    .line 16696
    :cond_5
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1C;->A0E()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v6

    .line 16697
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1C;->A0F()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    .line 16698
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0k()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 16699
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/ND;->setInfo(Lcom/facebook/ads/redexgen/X/1J;Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 16700
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7G;->setAdDetailsToolBarClickListener(I)V

    goto :goto_1

    .line 16701
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0J:Lcom/facebook/ads/redexgen/X/Nm;

    .line 16702
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    .line 16703
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A07()Ljava/lang/String;

    move-result-object v0

    .line 16704
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A00(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0a()Z
    .locals 1

    .line 16604
    const/4 v0, 0x0

    return v0
.end method

.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16605
    const/16 v2, 0x4e

    const/16 v1, 0xe

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7G;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/F1;

    .line 16606
    .local v0, "dataBundle":Lcom/facebook/ads/redexgen/X/F1;
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/T9;->A0V(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 16607
    if-eqz v0, :cond_0

    .line 16608
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7G;->A0E(Lcom/facebook/ads/redexgen/X/F1;)V

    .line 16609
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/5F;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16610
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/7G;->A0D(ILandroid/os/Bundle;)V

    .line 16611
    new-instance v0, Lcom/facebook/ads/redexgen/X/RZ;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/RZ;-><init>(Lcom/facebook/ads/redexgen/X/7G;Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0K(Lcom/facebook/ads/redexgen/X/5D;)V

    .line 16612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T9;->A0A:Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0h()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()Lcom/facebook/ads/redexgen/X/1F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1F;->A03()I

    move-result v0

    .line 16613
    .local v1, "unskippableSec":I
    if-lez v0, :cond_1

    .line 16614
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T9;->A0T(I)V

    .line 16615
    :cond_1
    return-void
.end method

.method public final ABw(Z)V
    .locals 1

    .line 16616
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T9;->ABw(Z)V

    .line 16617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    if-eqz v0, :cond_0

    .line 16618
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0Q()V

    .line 16619
    :cond_0
    return-void
.end method

.method public final ACM(Z)V
    .locals 1

    .line 16620
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T9;->ACM(Z)V

    .line 16621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    if-eqz v0, :cond_0

    .line 16622
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0R()V

    .line 16623
    :cond_0
    return-void
.end method

.method public final ACi(Lcom/facebook/ads/redexgen/X/Or;)V
    .locals 4

    .line 16624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    if-eqz v0, :cond_0

    .line 16625
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/Ye;

    move-result-object v3

    .line 16626
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/4Z;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Or;->A03:Lcom/facebook/ads/redexgen/X/Or;

    if-ne p1, v0, :cond_2

    .line 16627
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    if-gtz v0, :cond_1

    const/4 v2, 0x0

    .line 16628
    .local v1, "newPosition":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4o;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A21(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4o;I)V

    .line 16629
    :goto_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/7G;->setUpLayoutForCardAtIndex(I)V

    .line 16630
    .end local v0    # "layoutManager":Lcom/facebook/ads/redexgen/X/4Z;
    .end local v1    # "newPosition":I
    :cond_0
    return-void

    .line 16631
    :cond_1
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 16632
    .end local v1
    :cond_2
    iget v2, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A0E:I

    add-int/lit8 v0, v1, -0x1

    if-lt v2, v0, :cond_3

    add-int/lit8 v2, v1, -0x1

    .line 16633
    .restart local v1    # "newPosition":I
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4o;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ye;->A21(Lcom/facebook/ads/redexgen/X/E9;Lcom/facebook/ads/redexgen/X/4o;I)V

    goto :goto_1

    .line 16634
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 1

    .line 16635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    if-eqz v0, :cond_0

    .line 16636
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rd;->A0X(Landroid/os/Bundle;)V

    .line 16637
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 16638
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 16639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16640
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7G;->AEZ(Landroid/os/Bundle;)V

    .line 16641
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T9;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16642
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7G;->A0A()V

    .line 16643
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    if-eqz v0, :cond_0

    .line 16644
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/Ye;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A1t(I)V

    .line 16645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A09:Lcom/facebook/ads/redexgen/X/Rd;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0U(I)V

    .line 16646
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7G;->A09()V

    .line 16647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A07:Lcom/facebook/ads/redexgen/X/ND;

    if-eqz v1, :cond_1

    .line 16648
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ND;->A0C(I)V

    .line 16649
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 16650
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/T9;->onDestroy()V

    .line 16651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A0A()Lcom/facebook/ads/redexgen/X/Im;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7G;->A0O:[Ljava/lang/String;

    const-string v1, "nCvA44nJ0TVVJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A06:Lcom/facebook/ads/redexgen/X/2M;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Im;->AFe(Landroid/view/View;)V

    .line 16653
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16654
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T9;->A0C:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7G;->A0C:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    .line 16655
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A03(Lcom/facebook/ads/redexgen/X/QA;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    .line 16656
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->A02(Lcom/facebook/ads/redexgen/X/LD;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v0

    .line 16657
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NA;->A05()Ljava/util/Map;

    move-result-object v0

    .line 16658
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A99(Ljava/lang/String;Ljava/util/Map;)V

    .line 16659
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7G;->A0C()V

    .line 16660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0V()V

    .line 16661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0B:Lcom/facebook/ads/redexgen/X/QA;

    .line 16662
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    .line 16663
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0D:Ljava/util/List;

    .line 16664
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 16665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7G;->A0H:Lcom/facebook/ads/redexgen/X/LD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A0G:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/LD;->A06(Lcom/facebook/ads/redexgen/X/Xc;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 16666
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/T9;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
