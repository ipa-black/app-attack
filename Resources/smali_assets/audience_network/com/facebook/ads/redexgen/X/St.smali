.class public final Lcom/facebook/ads/redexgen/X/St;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static A06:[B

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:Landroid/widget/HorizontalScrollView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/LinearLayout;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Lcom/facebook/ads/redexgen/X/2D;

.field public final A05:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 53319
    invoke-static {}, Lcom/facebook/ads/redexgen/X/St;->A0C()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/St;->A09:I

    .line 53320
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/St;->A08:I

    .line 53321
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/St;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;)V
    .locals 6

    .line 53322
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;)V

    .line 53323
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/St;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53324
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2E;->A00(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A04:Lcom/facebook/ads/redexgen/X/2D;

    .line 53325
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/St;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    .line 53326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/St;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53327
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53329
    sget v0, Lcom/facebook/ads/redexgen/X/St;->A07:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53330
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53331
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/St;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    .line 53332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53333
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53334
    .local v1, "contentParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53335
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/St;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Landroid/widget/HorizontalScrollView;

    .line 53336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 53337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53339
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/St;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    .line 53340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53341
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 53343
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53344
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53345
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/St;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53346
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 53347
    return-void
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/St;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/St;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x1at
        -0x18t
        -0x10t
        -0x5ct
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x7ft
        -0x5et
        -0x3bt
        -0x7ft
        -0x4dt
        -0x3at
        -0x2ft
        -0x30t
        -0x2dt
        -0x2bt
        -0x36t
        -0x31t
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final A0L()V
    .locals 6

    .line 53348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53349
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MQ;-><init>(Lcom/facebook/ads/redexgen/X/St;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53350
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/St;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v5, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53352
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/ML;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A04:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0H()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53353
    new-instance v0, Lcom/facebook/ads/redexgen/X/MR;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/MR;-><init>(Lcom/facebook/ads/redexgen/X/St;Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v4, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53355
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/ML;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A04:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0L()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53356
    new-instance v0, Lcom/facebook/ads/redexgen/X/MS;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/MS;-><init>(Lcom/facebook/ads/redexgen/X/St;Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53358
    .local v2, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/ML;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A04:Lcom/facebook/ads/redexgen/X/2D;

    .line 53359
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0M()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A07:Lcom/facebook/ads/redexgen/X/LT;

    .line 53360
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53361
    new-instance v0, Lcom/facebook/ads/redexgen/X/MT;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/MT;-><init>(Lcom/facebook/ads/redexgen/X/St;Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53362
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53363
    .local v3, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/St;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53369
    return-void
.end method

.method public final A0M()V
    .locals 0

    .line 53370
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0I(Landroid/view/View;)V

    .line 53371
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 53372
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 4

    .line 53373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/St;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53375
    .local v0, "reviewText":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 53376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A04:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53377
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 53378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53380
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53381
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 6

    .line 53382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A09:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MU;-><init>(Lcom/facebook/ads/redexgen/X/St;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53385
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/St;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/St;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53387
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 53388
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53389
    .local v0, "optionItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/St;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53390
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2H;->A05()Ljava/util/List;

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

    .line 53391
    .local v2, "option":Lcom/facebook/ads/redexgen/X/2H;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A05:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53392
    .local v3, "optionView":Lcom/facebook/ads/redexgen/X/ML;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2H;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53393
    new-instance v0, Lcom/facebook/ads/redexgen/X/MV;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/MV;-><init>(Lcom/facebook/ads/redexgen/X/St;Lcom/facebook/ads/redexgen/X/ML;Lcom/facebook/ads/redexgen/X/2H;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53395
    .end local v2    # "option":Lcom/facebook/ads/redexgen/X/2H;
    .end local v3    # "optionView":Lcom/facebook/ads/redexgen/X/ML;
    goto :goto_0

    .line 53396
    :cond_0
    return-void
.end method

.method public final A0P()Z
    .locals 1

    .line 53397
    const/4 v0, 0x1

    return v0
.end method
