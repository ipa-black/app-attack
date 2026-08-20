.class public final Lcom/facebook/ads/redexgen/X/MG;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MF;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/2D;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Lcom/facebook/ads/redexgen/X/MJ;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44237
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    .line 44238
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0A:I

    .line 44239
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0D:I

    .line 44240
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A08:I

    .line 44241
    sget v1, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A08:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/MG;->A07:I

    .line 44242
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0E:I

    .line 44243
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0B:I

    .line 44244
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0F:I

    .line 44245
    sget v1, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A0C:I

    .line 44246
    sget v0, Lcom/facebook/ads/redexgen/X/Kk;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MG;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MF;)V
    .locals 10

    .line 44247
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A01(Lcom/facebook/ads/redexgen/X/MF;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44248
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A01(Lcom/facebook/ads/redexgen/X/MF;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 44249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2E;->A00(Lcom/facebook/ads/redexgen/X/Xb;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Lcom/facebook/ads/redexgen/X/2D;

    .line 44250
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A03(Lcom/facebook/ads/redexgen/X/MF;)Lcom/facebook/ads/redexgen/X/MJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Lcom/facebook/ads/redexgen/X/MJ;

    .line 44251
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A09(Lcom/facebook/ads/redexgen/X/MF;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0E:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:I

    .line 44252
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A09(Lcom/facebook/ads/redexgen/X/MF;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0B:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:I

    .line 44253
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A0A(Lcom/facebook/ads/redexgen/X/MF;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Z

    .line 44254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MG;->setFocusable(Z)V

    .line 44255
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MG;->A01(Lcom/facebook/ads/redexgen/X/MF;)Landroid/view/View;

    move-result-object v7

    .line 44256
    .local v0, "headerView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MG;->A00(Lcom/facebook/ads/redexgen/X/MF;)Landroid/view/View;

    move-result-object v6

    .line 44257
    .local v1, "contentView":Landroid/view/View;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MG;->getFooterView()Landroid/view/View;

    move-result-object v5

    .line 44258
    .local v2, "footerView":Landroid/view/View;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 44259
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 44260
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/LL;->A0K(Landroid/view/View;)V

    .line 44261
    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44262
    .local v3, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44263
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44264
    .local v6, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44265
    const/4 v1, 0x3

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44266
    const/4 v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44267
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44268
    .local v4, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44269
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44270
    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/MG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44271
    invoke-virtual {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/MG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44272
    invoke-virtual {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/MG;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44273
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A0B(Lcom/facebook/ads/redexgen/X/MF;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44274
    return-void

    .line 44275
    :cond_0
    const/16 v1, 0x8

    goto :goto_2

    .line 44276
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0C:I

    goto :goto_1

    .line 44277
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0F:I

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MF;Lcom/facebook/ads/redexgen/X/MD;)V
    .locals 0

    .line 44278
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MG;-><init>(Lcom/facebook/ads/redexgen/X/MF;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/MF;)Landroid/view/View;
    .locals 13

    .line 44279
    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44280
    .local v1, "iconView":Landroid/widget/ImageView;
    iget v0, v8, Lcom/facebook/ads/redexgen/X/MG;->A00:I

    invoke-virtual {v12, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44281
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A02(Lcom/facebook/ads/redexgen/X/MF;)Lcom/facebook/ads/redexgen/X/LT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44282
    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44283
    iget v0, v8, Lcom/facebook/ads/redexgen/X/MG;->A01:I

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44284
    .local v3, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44285
    .local v4, "iconDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 44286
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A00(Lcom/facebook/ads/redexgen/X/MF;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44287
    invoke-static {v12, v1}, Lcom/facebook/ads/redexgen/X/LL;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44288
    const/16 v9, 0x11

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44289
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44290
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44291
    .local v7, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v10, v6, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 44292
    const v0, -0xe3e1df

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44293
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A04(Lcom/facebook/ads/redexgen/X/MF;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44294
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 44295
    const/4 v5, -0x2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44296
    .local v9, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    invoke-virtual {v7, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44297
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44298
    .local v11, "subtitleView":Landroid/widget/TextView;
    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 44299
    const v0, -0x9f9890

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44300
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A05(Lcom/facebook/ads/redexgen/X/MF;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44301
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 44302
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44303
    .local v2, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A09:I

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44304
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44305
    .local v12, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44306
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44307
    invoke-virtual {v4, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44308
    invoke-virtual {v4, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44309
    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44310
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A08(Lcom/facebook/ads/redexgen/X/MF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44311
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44312
    .local p0, "chipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44313
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44314
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A06(Lcom/facebook/ads/redexgen/X/MF;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44315
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/MG;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v7, Lcom/facebook/ads/redexgen/X/NU;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/NU;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 44316
    .local v6, "logoView":Lcom/facebook/ads/redexgen/X/NU;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0F:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44317
    .local p1, "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0A:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44318
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/NU;->setFullCircleCorners(Z)V

    .line 44319
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/MG;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sf;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Sf;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xc;)V

    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0F:I

    .line 44320
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A05(II)Lcom/facebook/ads/redexgen/X/Sf;

    move-result-object v1

    .line 44321
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A06(Lcom/facebook/ads/redexgen/X/MF;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A07(Ljava/lang/String;)V

    .line 44322
    invoke-virtual {v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44323
    .end local v6    # "logoView":Lcom/facebook/ads/redexgen/X/NU;
    .end local p1    # "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/MG;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v2, Lcom/facebook/ads/redexgen/X/ML;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 44324
    .local v6, "selectedOptionView":Lcom/facebook/ads/redexgen/X/ML;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A07(Lcom/facebook/ads/redexgen/X/MF;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0E:Lcom/facebook/ads/redexgen/X/LT;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ML;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LT;)V

    .line 44325
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/ML;->setSelected(Z)V

    .line 44326
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44327
    .local v5, "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44328
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44329
    .end local v5    # "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "selectedOptionView":Lcom/facebook/ads/redexgen/X/ML;
    .end local p0    # "chipContainer":Landroid/widget/LinearLayout;
    :cond_1
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/MF;)Landroid/view/View;
    .locals 4

    .line 44330
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44331
    .local v0, "headerView":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44332
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/MF;->A0C(Lcom/facebook/ads/redexgen/X/MF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44333
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44334
    .local v1, "closeButton":Landroid/widget/ImageView;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A08:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44335
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44336
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44337
    new-instance v0, Lcom/facebook/ads/redexgen/X/MD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MD;-><init>(Lcom/facebook/ads/redexgen/X/MG;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44338
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0D:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44339
    .local v2, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44340
    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44341
    .end local v1    # "closeButton":Landroid/widget/ImageView;
    .end local v2    # "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MG;)Lcom/facebook/ads/redexgen/X/MJ;
    .locals 0

    .line 44342
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MG;->A04:Lcom/facebook/ads/redexgen/X/MJ;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MG;)Z
    .locals 0

    .line 44343
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MG;->A05:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 8

    .line 44344
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44345
    .local v0, "settingsIcon":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0T:Lcom/facebook/ads/redexgen/X/LT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LU;->A01(Lcom/facebook/ads/redexgen/X/LT;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44346
    const v1, -0xca871b

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44347
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A06:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44348
    .local v2, "settingsIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44350
    .local v4, "managePrefsText":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/16 v0, 0x10

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/LL;->A0X(Landroid/widget/TextView;ZI)V

    .line 44351
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44352
    sget v0, Lcom/facebook/ads/redexgen/X/MG;->A0A:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44354
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44355
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44356
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MG;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44357
    .local v6, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44358
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44359
    new-instance v0, Lcom/facebook/ads/redexgen/X/ME;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ME;-><init>(Lcom/facebook/ads/redexgen/X/MG;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44360
    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44361
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44362
    return-object v1
.end method
