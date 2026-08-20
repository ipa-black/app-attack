.class public final Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.super Lcom/facebook/ads/redexgen/X/Li;
.source ""


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Lg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Lh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public final A03:Landroid/widget/RelativeLayout;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ii;

.field public final A05:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A06:Lcom/facebook/ads/redexgen/X/M4;

.field public final A07:Lcom/facebook/ads/redexgen/X/Om;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1590
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "elaUgpg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xyZ5KhWZZkOCw26QnbyRE89VYXYHkT38"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j2Hg99bd5kkvFLrtwtqoGvtE7T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FtK0h2Y990QReQxCoMrwn7Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "09p430KvfvIa5D7TMMbG57be7BWhVuc0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4K9Dg6G4rdQDm1ubILJxRl9GbBVTjarc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MQsbPX4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ODYsITK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:I

    .line 1591
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    .line 1592
    sget v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:I

    sub-int v0, v2, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:I

    .line 1593
    mul-int/lit8 v0, v2, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    .line 1594
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;I)V
    .locals 4
    .param p4    # I
        .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
        .end annotation
    .end param

    .line 1595
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Li;-><init>(Landroid/content/Context;)V

    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Z

    .line 1597
    iput-object p2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    .line 1598
    iput-object p3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Lcom/facebook/ads/redexgen/X/Ii;

    .line 1599
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setGravity(I)V

    .line 1600
    new-instance v0, Lcom/facebook/ads/redexgen/X/M4;

    invoke-direct {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/M4;-><init>(Lcom/facebook/ads/redexgen/X/Xc;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    .line 1601
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1602
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Lo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Lo;-><init>(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1604
    .local v0, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1605
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Landroid/widget/RelativeLayout;

    .line 1607
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1608
    .local v2, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1609
    new-instance v0, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Om;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    .line 1610
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1611
    .local v1, "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1612
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Om;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1614
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;II)V
    .locals 0
    .param p4    # I
        .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
        .end annotation
    .end param

    .line 1616
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/Ii;I)V

    .line 1617
    invoke-virtual {p0, p1, p5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07(Lcom/facebook/ads/redexgen/X/Xc;I)V

    .line 1618
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/Lh;
    .locals 0

    .line 1619
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Lh;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/M4;
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x71

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
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        0xft
        0x12t
        0x16t
        0x8t
        -0x3dt
        -0x1ct
        0x7t
        0x38t
        0x4bt
        0x56t
        0x55t
        0x58t
        0x5at
        0x6t
        0x27t
        0x4at
        0x4dt
        0x48t
        0x48t
        0x45t
        0x3bt
        0x3at
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/1L;Z)V
    .locals 5

    .line 1621
    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Z

    .line 1622
    .local v0, "fullScreenEnabled":Z
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/1L;->A04(Z)I

    move-result v2

    .line 1623
    .local v1, "accentColor":I
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/1L;->A0A(Z)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Om;->A01(II)V

    .line 1624
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Lg;->setIconColors(I)V

    .line 1625
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Lg;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1, v4, p2}, Lcom/facebook/ads/redexgen/X/M4;->A02(Lcom/facebook/ads/redexgen/X/1L;ZZ)V

    .line 1627
    const/4 v3, 0x0

    if-eqz v4, :cond_0

    .line 1628
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1629
    .local v3, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1630
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1631
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    const/high16 v1, -0x1000000

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:I

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0Q(Landroid/view/View;III)V

    .line 1632
    .end local v3    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x6a000000
        0x0
    .end array-data
.end method

.method public final A05()Z
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->A03()Z

    move-result v0

    return v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;I)V
    .locals 3

    .line 1635
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/M4;->setInitialUnskippableSeconds(I)V

    .line 1636
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    if-eqz v2, :cond_0

    .line 1637
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lg;->setAdDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 1638
    :cond_0
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Xc;I)V
    .locals 5

    .line 1639
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    if-eqz v0, :cond_0

    .line 1640
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 1641
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lg;->removeAllViews()V

    .line 1642
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lg;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lg;-><init>(Lcom/facebook/ads/redexgen/X/Xc;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    .line 1643
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1644
    .local v0, "adReportingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1645
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1646
    return-void
.end method

.method public getDetailsContainer()Landroid/view/View;
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getToolbarActionMode()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 1648
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarActionMode()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 1649
    sget v0, Lcom/facebook/ads/redexgen/X/Li;->A00:I

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Lh;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1650
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Lh;

    return-object v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 2

    .line 1651
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lg;->setVisibility(I)V

    .line 1652
    return-void

    .line 1653
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Om;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1655
    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/Sa;)V
    .locals 4

    .line 1656
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    .line 1657
    const/16 v2, 0x11

    const/4 v1, 0x7

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A03(Lcom/facebook/ads/redexgen/X/Sa;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1658
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Om;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 1660
    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Z

    .line 1661
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1b;)V
    .locals 3

    .line 1662
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/M4;->setInitialUnskippableSeconds(I)V

    .line 1663
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Om;->setPageDetails(Lcom/facebook/ads/redexgen/X/1V;)V

    .line 1664
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lg;

    if-eqz v2, :cond_0

    .line 1665
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Lcom/facebook/ads/redexgen/X/Ii;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/Lj;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lg;->setAdDetails(Lcom/facebook/ads/redexgen/X/1V;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ii;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 1666
    :cond_0
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .locals 5

    .line 1667
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1668
    if-eqz p1, :cond_1

    .line 1669
    iget-object v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/Om;

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[Ljava/lang/String;

    const-string v1, "uYrc95dj4mq6YR3RipRhNZPjST"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ufyXPPKrvmASdIniU0CJIS9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1670
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[Ljava/lang/String;

    const-string v1, "RoBBOPMqmB8G6B1FErbRchWOJuWn3pgq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarMessageEnabled(Z)V

    .line 1671
    return-void

    :cond_2
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarMessageEnabled(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setProgress(F)V

    .line 1673
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1674
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 1675
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/LT;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/LT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1676
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setProgressImage(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 1677
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setProgressImmediate(F)V

    .line 1679
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setProgressSpinnerInvisible(Z)V

    .line 1681
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 1

    .line 1682
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarMessage(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
        .end annotation
    .end param

    .line 1684
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 1685
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Lh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1686
    iput-object p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Lh;

    .line 1687
    return-void
.end method
