.class public Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;
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
    .locals 14

    iget-boolean v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const v0, 0x101030e

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v0

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContainer;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    const/4 v9, 0x2

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x10

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->c()V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->m:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v6, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v6}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    const/high16 v11, 0x41a00000    # 20.0f

    mul-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/appodeal/ads/NativeIconView;

    iget-object v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/appodeal/ads/NativeIconView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v6}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    const/high16 v11, 0x42480000    # 50.0f

    mul-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->r:I

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->r:I

    invoke-direct {v6, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v11}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v11

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v6, v4, v4, v11, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    move-object v8, v6

    check-cast v8, Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v8}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v4, v4, v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v11, 0x1

    invoke-virtual {v6, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v6, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RatingBar;

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    const/4 v12, 0x0

    const v13, 0x101007d

    invoke-direct {v6, v8, v12, v13}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v6, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v12, 0x3

    invoke-virtual {v6, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/appodeal/ads/NativeMediaView;

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/appodeal/ads/NativeMediaView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v8}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6, v4, v8, v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v6, v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-virtual {v0, v6}, Lcom/appodeal/ads/NativeMediaView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/appodeal/ads/NativeMediaView;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v6}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v8, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v8}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v0, v6, v4, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-virtual {v6}, Lcom/appodeal/ads/NativeMediaView;->getId()I

    move-result v6

    invoke-virtual {v0, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/appodeal/ads/native_ad/views/NativeAdView;->b()V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v0, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-static {v6}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-virtual {v5}, Lcom/appodeal/ads/NativeMediaView;->getId()I

    move-result v5

    invoke-virtual {v0, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMinLines(I)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v11, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->q:Z

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v5}, Lcom/appodeal/ads/NativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v5}, Lcom/appodeal/ads/NativeAd;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v0}, Lcom/appodeal/ads/NativeAd;->getRating()F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v5}, Lcom/appodeal/ads/NativeAd;->getRating()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

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

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    invoke-interface {v5}, Lcom/appodeal/ads/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->h:Lcom/appodeal/ads/NativeIconView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-virtual {v5}, Lcom/appodeal/ads/NativeMediaView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v6, p0, Lcom/appodeal/ads/NativeAdView;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v0, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->i:Lcom/appodeal/ads/NativeMediaView;

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/NativeMediaView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    iget-object v2, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->p:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/appodeal/ads/NativeAd;->getProviderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appodeal/ads/NativeAdView;->g:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->o:Lcom/appodeal/ads/NativeAd;

    iget-object v1, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/NativeAdView;->registerView(Lcom/appodeal/ads/NativeAd;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/native_ad/views/NativeAdView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
