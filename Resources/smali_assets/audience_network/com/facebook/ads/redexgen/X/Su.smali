.class public final Lcom/facebook/ads/redexgen/X/Su;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static final A03:I


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;

.field public final A01:Lcom/facebook/ads/redexgen/X/2D;

.field public final A02:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 53398
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Su;->A03:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;Lcom/facebook/ads/redexgen/X/Lk;Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 3

    .line 53399
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1V;Lcom/facebook/ads/redexgen/X/Lk;Lcom/facebook/ads/redexgen/X/Lj;)V

    .line 53400
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53401
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2E;->A00(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53402
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Su;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    .line 53403
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Su;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53405
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MM;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53406
    return-void
.end method

.method public static A0B(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 53407
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53408
    .local v0, "viewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53409
    return-object v1

    .line 53410
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private A0C()V
    .locals 3

    .line 53411
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 53412
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 53413
    .local v0, "transition":Landroid/transition/TransitionSet;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 53414
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v0, Landroid/transition/Explode;

    invoke-direct {v0}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 53415
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/LL;->A0V(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 53416
    .end local v0    # "transition":Landroid/transition/TransitionSet;
    :goto_0
    return-void

    .line 53417
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public final A0L()V
    .locals 11

    .line 53418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0A()Lcom/facebook/ads/redexgen/X/2H;

    move-result-object v10

    .line 53419
    .local v0, "hidingReason":Lcom/facebook/ads/redexgen/X/2H;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v8, Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53420
    .local v1, "hideAdView":Lcom/facebook/ads/redexgen/X/MW;
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53421
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0H()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53422
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0G()Ljava/lang/String;

    move-result-object v0

    .line 53423
    invoke-virtual {v8, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->setInfo(Lcom/facebook/ads/redexgen/X/LT;Ljava/lang/String;Ljava/lang/String;)V

    .line 53424
    new-instance v0, Lcom/facebook/ads/redexgen/X/MN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MN;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/MW;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0B()Lcom/facebook/ads/redexgen/X/2H;

    move-result-object v9

    .line 53426
    .local v2, "reportingReason":Lcom/facebook/ads/redexgen/X/2H;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v7, Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53427
    .local v3, "reportAdView":Lcom/facebook/ads/redexgen/X/MW;
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53428
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0L()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53429
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0K()Ljava/lang/String;

    move-result-object v0

    .line 53430
    invoke-virtual {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->setInfo(Lcom/facebook/ads/redexgen/X/LT;Ljava/lang/String;Ljava/lang/String;)V

    .line 53431
    new-instance v0, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/MW;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v6, Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/MW;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53433
    .local v4, "adChoicesView":Lcom/facebook/ads/redexgen/X/MW;
    sget-object v2, Lcom/facebook/ads/redexgen/X/LT;->A07:Lcom/facebook/ads/redexgen/X/LT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53434
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0M()Ljava/lang/String;

    move-result-object v1

    .line 53435
    const-string v0, ""

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->setInfo(Lcom/facebook/ads/redexgen/X/LT;Ljava/lang/String;Ljava/lang/String;)V

    .line 53436
    new-instance v0, Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/Su;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/MW;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53437
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53438
    .local v5, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Su;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53439
    .local v7, "optionsView":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 53440
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53441
    sget v2, Lcom/facebook/ads/redexgen/X/Su;->A03:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v1, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53442
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53443
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2H;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53444
    invoke-virtual {v3, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53445
    :cond_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/2H;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53446
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53447
    :cond_1
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53448
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Su;->A0C()V

    .line 53449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53450
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Su;->A0B(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53451
    return-void
.end method

.method public final A0M()V
    .locals 1

    .line 53452
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0I(Landroid/view/View;)V

    .line 53453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53454
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 53455
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 5

    .line 53456
    sget-object v0, Lcom/facebook/ads/redexgen/X/2F;->A04:Lcom/facebook/ads/redexgen/X/2F;

    if-ne p2, v0, :cond_0

    .line 53457
    return-void

    .line 53458
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2F;->A05:Lcom/facebook/ads/redexgen/X/2F;

    const/4 v4, 0x1

    if-ne p2, v0, :cond_5

    const/4 v3, 0x1

    .line 53459
    .local v0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A0B:Lcom/facebook/ads/redexgen/X/MJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MF;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/MF;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MJ;)V

    .line 53460
    if-eqz v3, :cond_4

    .line 53461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0F()Ljava/lang/String;

    move-result-object v0

    .line 53462
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    .line 53463
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    .line 53464
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2H;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    .line 53465
    if-eqz v3, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0E(Lcom/facebook/ads/redexgen/X/LT;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    .line 53466
    if-eqz v3, :cond_2

    .line 53467
    const v0, -0x86dc5

    .line 53468
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0D(I)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    .line 53469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A0A:Lcom/facebook/ads/redexgen/X/1V;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MH;->A0A:Lcom/facebook/ads/redexgen/X/1V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1V;->A01()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53470
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MF;->A0M()Lcom/facebook/ads/redexgen/X/MG;

    move-result-object v2

    .line 53471
    .local v2, "adHiddenView":Lcom/facebook/ads/redexgen/X/MG;
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53472
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Su;->A0B(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53475
    return-void

    .line 53476
    :cond_1
    const-string v0, ""

    goto :goto_4

    .line 53477
    :cond_2
    const v0, -0xca871b

    goto :goto_3

    .line 53478
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    goto :goto_2

    .line 53479
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0E()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 53480
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 10

    .line 53481
    sget-object v0, Lcom/facebook/ads/redexgen/X/2F;->A05:Lcom/facebook/ads/redexgen/X/2F;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 53482
    .local v0, "isReportFlow":Z
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/MZ;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Su;->A02:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/MH;->A0B:Lcom/facebook/ads/redexgen/X/MJ;

    .line 53483
    if-eqz v1, :cond_1

    .line 53484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0L()Ljava/lang/String;

    move-result-object v8

    .line 53485
    :goto_1
    if-eqz v1, :cond_0

    sget-object v9, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    :goto_2
    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/MZ;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/MJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53486
    .local v3, "reasonPickerView":Lcom/facebook/ads/redexgen/X/MZ;
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/MZ;->setClickable(Z)V

    .line 53487
    const/4 v0, -0x1

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53488
    sget v2, Lcom/facebook/ads/redexgen/X/Su;->A03:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v4, v1, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/MZ;->setPadding(IIII)V

    .line 53489
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Su;->A0C()V

    .line 53490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53491
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Su;->A0B(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53492
    return-void

    .line 53493
    :cond_0
    sget-object v9, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    goto :goto_2

    .line 53494
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0H()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 53495
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0P()Z
    .locals 1

    .line 53496
    const/4 v0, 0x0

    return v0
.end method
