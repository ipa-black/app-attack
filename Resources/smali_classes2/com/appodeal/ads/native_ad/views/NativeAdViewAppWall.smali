.class public Lcom/appodeal/ads/native_ad/views/NativeAdViewAppWall;
.super Lcom/appodeal/ads/native_ad/views/NativeAdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/native_ad/views/NativeAdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/native_ad/views/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/native_ad/views/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appodeal/ads/native_ad/views/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/NativeAd;)V
    .locals 1

    const-string v0, "default"

    invoke-direct {p0, p1, p2, v0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;-><init>(Landroid/content/Context;Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appodeal/ads/native_ad/views/NativeAdView;-><init>(Landroid/content/Context;Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-boolean v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    const/16 v1, 0x8

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const v0, 0x101030e

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v0

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v0, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x10

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->c()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v0

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/appodeal/ads/NativeIconView;

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/appodeal/ads/NativeIconView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v0

    const/high16 v9, 0x428c0000    # 70.0f

    mul-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->r:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->r:I

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v9}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v0, v3, v3, v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v0, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v6}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v6}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v9}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v0, v6, v3, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->b()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v5}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMinLines(I)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RatingBar;

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    const/4 v5, 0x0

    const v6, 0x101007d

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/appodeal/ads/NativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v4}, Lcom/appodeal/ads/NativeAd;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v0}, Lcom/appodeal/ads/NativeAd;->getRating()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v4}, Lcom/appodeal/ads/NativeAd;->getRating()F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v0}, Lcom/appodeal/ads/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v0}, Lcom/appodeal/ads/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v0}, Lcom/appodeal/ads/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v4}, Lcom/appodeal/ads/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    iget-object v4, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/appodeal/ads/NativeAd;->getProviderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/NativeAdView;->registerView(Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method
