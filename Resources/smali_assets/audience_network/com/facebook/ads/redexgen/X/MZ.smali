.class public final Lcom/facebook/ads/redexgen/X/MZ;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2H;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A02:Lcom/facebook/ads/redexgen/X/MJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44563
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MZ;->A03:I

    .line 44564
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MZ;->A04:I

    .line 44565
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MZ;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/MJ;Lcom/facebook/ads/redexgen/X/LT;)V
    .locals 6

    .line 44566
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/MZ;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/MJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 44567
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/MJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44568
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44569
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    .line 44570
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/2H;

    .line 44571
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MZ;->A02:Lcom/facebook/ads/redexgen/X/MJ;

    .line 44572
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/MZ;->setOrientation(I)V

    .line 44573
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44574
    .local v1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 44575
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/MZ;->A01(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 44576
    .local v3, "headerView":Landroid/view/View;
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 44577
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44578
    .local v5, "separator":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44579
    const v0, -0x9f9890

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 44580
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/MZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44581
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/MZ;->addView(Landroid/view/View;)V

    .line 44582
    .end local v3    # "headerView":Landroid/view/View;
    .end local v5    # "separator":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/2H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2H;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/2H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2H;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/facebook/ads/redexgen/X/MZ;->A00(Lcom/facebook/ads/redexgen/X/LT;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44584
    .local v0, "subHeaderView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/MZ;->A05:I

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 44585
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/MZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44586
    .end local v0    # "subHeaderView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MZ;->A02()Landroid/view/ViewGroup;

    move-result-object v1

    .line 44587
    .local v0, "optionsView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/MZ;->A05:I

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 44588
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/MZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44589
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/LT;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 44590
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44591
    .local v0, "iconView":Landroid/widget/ImageView;
    const v1, -0x9f9890

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44592
    sget v0, Lcom/facebook/ads/redexgen/X/MZ;->A04:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44593
    .local v2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44594
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44595
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44596
    .local v3, "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/16 v0, 0xe

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 44597
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44598
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44599
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44600
    sget v0, Lcom/facebook/ads/redexgen/X/MZ;->A05:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44601
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 44602
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44603
    .local v4, "subHeaderView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44604
    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44605
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44606
    return-object v0
.end method

.method private A01(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 44607
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44608
    .local v0, "arrowImageView":Landroid/widget/ImageView;
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44609
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A09:Lcom/facebook/ads/redexgen/X/LT;

    .line 44610
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44611
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44612
    sget v1, Lcom/facebook/ads/redexgen/X/MZ;->A05:I

    mul-int/lit8 v0, v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44613
    sget v0, Lcom/facebook/ads/redexgen/X/MZ;->A03:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44614
    .local v1, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/facebook/ads/redexgen/X/MX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MX;-><init>(Lcom/facebook/ads/redexgen/X/MZ;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44615
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44616
    .local v2, "titleView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44617
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44618
    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 44619
    const v0, -0xe3e1df

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44620
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44621
    .local v5, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MZ;->A03:I

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44622
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44623
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MZ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44624
    .local v4, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44625
    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44626
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44627
    return-object v0
.end method

.method private A02()Landroid/view/ViewGroup;
    .locals 6

    .line 44628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v5, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Mf;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 44629
    .local v0, "reportOptionsView":Lcom/facebook/ads/redexgen/X/Mf;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/2H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2H;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2H;

    .line 44630
    .local v2, "reason":Lcom/facebook/ads/redexgen/X/2H;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A01:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 44631
    .local v3, "chipView":Lcom/facebook/ads/redexgen/X/ML;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2H;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 44632
    new-instance v0, Lcom/facebook/ads/redexgen/X/MY;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/MY;-><init>(Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/ML;Lcom/facebook/ads/redexgen/X/2H;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44633
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Mf;->addView(Landroid/view/View;)V

    .line 44634
    .end local v2    # "reason":Lcom/facebook/ads/redexgen/X/2H;
    .end local v3    # "chipView":Lcom/facebook/ads/redexgen/X/ML;
    goto :goto_0

    .line 44635
    :cond_0
    return-object v5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MZ;)Lcom/facebook/ads/redexgen/X/MJ;
    .locals 0

    .line 44636
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A02:Lcom/facebook/ads/redexgen/X/MJ;

    return-object p0
.end method
