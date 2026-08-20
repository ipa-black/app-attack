.class public final Lcom/facebook/ads/redexgen/X/Ss;
.super Lcom/facebook/ads/redexgen/X/MH;
.source ""


# static fields
.field public static A05:[B

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/ScrollView;

.field public final A03:Lcom/facebook/ads/redexgen/X/2D;

.field public final A04:Lcom/facebook/ads/redexgen/X/Xc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 53220
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ss;->A0C()V

    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ss;->A08:I

    .line 53221
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ss;->A07:I

    .line 53222
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ss;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;)V
    .locals 4

    .line 53223
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MH;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Ljava/lang/String;)V

    .line 53224
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2E;->A00(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 53226
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ss;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    .line 53227
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/Ss;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 53228
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53229
    sget v0, Lcom/facebook/ads/redexgen/X/Ss;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53230
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ss;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    .line 53233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 53234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0M(Landroid/view/View;I)V

    .line 53235
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ss;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    .line 53236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53237
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Ss;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53238
    const/4 v3, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53239
    .local v1, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ss;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53241
    return-void
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ss;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ss;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x35t
        0x16t
        0x14t
        0x1ct
        0x69t
        0x46t
        0x45t
        0x59t
        0x4ft
        0xat
        0x6bt
        0x4et
        0xat
        0x78t
        0x4ft
        0x5at
        0x45t
        0x58t
        0x5et
        0x43t
        0x44t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public final A0L()V
    .locals 9

    .line 53242
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53243
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ma;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/Ss;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53244
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ss;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v7, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53246
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/ML;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0H()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53247
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v6, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53249
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/ML;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0L()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53250
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mc;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/Mc;-><init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v5, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53252
    .local v2, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/ML;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 53253
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0M()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A07:Lcom/facebook/ads/redexgen/X/LT;

    .line 53254
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53255
    new-instance v0, Lcom/facebook/ads/redexgen/X/Md;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Md;-><init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/ML;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/ML;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53256
    const/4 v8, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53257
    .local v3, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Ss;->A08:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53258
    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53259
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ss;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53260
    .local v6, "menuLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53261
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53262
    .local v4, "menuParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53263
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53266
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53268
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53269
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53270
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53271
    return-void
.end method

.method public final A0M()V
    .locals 0

    .line 53272
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0I(Landroid/view/View;)V

    .line 53273
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 53274
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 6

    .line 53275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53276
    sget-object v0, Lcom/facebook/ads/redexgen/X/2F;->A05:Lcom/facebook/ads/redexgen/X/2F;

    if-ne p2, v0, :cond_0

    .line 53277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0F()Ljava/lang/String;

    move-result-object v5

    .line 53278
    .local v0, "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    .line 53279
    .local v1, "icon":Lcom/facebook/ads/redexgen/X/LT;
    const v3, -0x86dc5

    .line 53280
    .local v2, "iconBackground":I
    .restart local v2    # "iconBackground":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A0B:Lcom/facebook/ads/redexgen/X/MJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MF;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/MF;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MJ;)V

    .line 53281
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/MF;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    .line 53282
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v1

    .line 53283
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2H;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MF;->A0K(Z)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53285
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/MF;->A0E(Lcom/facebook/ads/redexgen/X/LT;)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53286
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/MF;->A0D(I)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53287
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MF;->A0L(Z)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53288
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MF;->A0J(Z)Lcom/facebook/ads/redexgen/X/MF;

    move-result-object v0

    .line 53289
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MF;->A0M()Lcom/facebook/ads/redexgen/X/MG;

    move-result-object v3

    .line 53290
    .local v3, "adHiddenView":Lcom/facebook/ads/redexgen/X/MG;
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53291
    .local v4, "adHiddenViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53292
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 53295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53297
    return-void

    .line 53298
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "icon":Lcom/facebook/ads/redexgen/X/LT;
    .end local v2    # "iconBackground":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A03:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0H()Ljava/lang/String;

    move-result-object v5

    .line 53299
    .restart local v0    # "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    .line 53300
    .restart local v1    # "icon":Lcom/facebook/ads/redexgen/X/LT;
    const v3, -0xca871b

    goto :goto_0
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/2F;)V
    .locals 6

    .line 53301
    sget-object v0, Lcom/facebook/ads/redexgen/X/2F;->A05:Lcom/facebook/ads/redexgen/X/2F;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 53302
    .local v0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ss;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MH;->A0B:Lcom/facebook/ads/redexgen/X/MJ;

    .line 53303
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0Q:Lcom/facebook/ads/redexgen/X/LT;

    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/MZ;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/MZ;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/2H;Lcom/facebook/ads/redexgen/X/MJ;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 53304
    .local v2, "optionChooserView":Landroid/view/View;
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53305
    .local v1, "optionChooserParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53306
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53307
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A09:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53308
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Me;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Me;-><init>(Lcom/facebook/ads/redexgen/X/Ss;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53309
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ss;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0T(Landroid/view/ViewGroup;)V

    .line 53311
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 53312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53313
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53315
    return-void

    .line 53316
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0K:Lcom/facebook/ads/redexgen/X/LT;

    goto :goto_1

    .line 53317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0P()Z
    .locals 1

    .line 53318
    const/4 v0, 0x1

    return v0
.end method
