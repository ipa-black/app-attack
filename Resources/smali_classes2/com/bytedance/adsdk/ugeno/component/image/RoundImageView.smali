.class public Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/IAnimation;


# static fields
.field private static final CJ:[Landroid/widget/ImageView$ScaleType;

.field public static final Qhi:Landroid/graphics/Shader$TileMode;

.field static final synthetic cJ:Z = true


# instance fields
.field private ABk:Z

.field private Gm:Landroid/graphics/drawable/Drawable;

.field private HzH:Landroid/widget/ImageView$ScaleType;

.field private MQ:Lcom/bytedance/adsdk/ugeno/ac;

.field private ROR:Landroid/content/res/ColorStateList;

.field private Sf:F

.field private Tgh:Landroid/graphics/drawable/Drawable;

.field private WAv:Z

.field private ac:F

.field private final fl:[F

.field private hm:Landroid/graphics/ColorFilter;

.field private hpZ:I

.field private iMK:Z

.field private kYc:Landroid/graphics/Shader$TileMode;

.field private pA:I

.field private tP:Landroid/graphics/Shader$TileMode;

.field private zc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    .line 50
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->CJ:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 61
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->fl:[F

    const/high16 p1, -0x1000000

    .line 66
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ROR:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Sf:F

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hm:Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->WAv:Z

    .line 71
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->zc:Z

    .line 72
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ABk:Z

    .line 73
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->iMK:Z

    .line 77
    sget-object p1, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->kYc:Landroid/graphics/Shader$TileMode;

    .line 78
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->tP:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private CJ()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->WAv:Z

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->zc:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hm:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private Qhi()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    if-eqz v2, :cond_1

    .line 176
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    .line 183
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private Qhi(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 265
    :cond_0
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 266
    check-cast p1, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    .line 267
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Sf:F

    .line 268
    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(F)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ROR:Landroid/content/res/ColorStateList;

    .line 269
    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/content/res/ColorStateList;)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    move-result-object p2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ABk:Z

    .line 270
    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Z)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->kYc:Landroid/graphics/Shader$TileMode;

    .line 271
    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/graphics/Shader$TileMode;)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->tP:Landroid/graphics/Shader$TileMode;

    .line 272
    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->cJ(Landroid/graphics/Shader$TileMode;)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    .line 274
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->fl:[F

    if-eqz p2, :cond_1

    .line 275
    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(FFFF)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->CJ()V

    return-void

    .line 283
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 285
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 286
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 287
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private Qhi(Z)V
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->iMK:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private ac()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->HzH:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private cJ()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 212
    :cond_0
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hpZ:I

    if-eqz v2, :cond_1

    .line 214
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hpZ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RoundedImageView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hpZ:I

    .line 221
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Qhi(FFFF)V
    .locals 6

    .line 385
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->fl:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    cmpl-float v2, v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    aget v2, v0, v3

    cmpl-float v2, v2, p4

    if-nez v2, :cond_0

    aget v2, v0, v4

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    .line 392
    :cond_0
    aput p1, v0, v1

    .line 393
    aput p2, v0, v5

    .line 394
    aput p3, v0, v4

    .line 395
    aput p4, v0, v3

    .line 397
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    .line 398
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/ac;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ROR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ROR:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 403
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Sf:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->fl:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 314
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getRipple()F
    .locals 1

    .line 577
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->HzH:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->kYc:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->tP:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 561
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 562
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/ac;->Tgh()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 569
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 570
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_0

    .line 571
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/ac;->ROR()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 545
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 546
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1, p0}, Lcom/bytedance/adsdk/ugeno/ac;->Qhi(Landroid/graphics/Canvas;Lcom/bytedance/adsdk/ugeno/core/IAnimation;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/bytedance/adsdk/ugeno/ac;->Qhi(IIII)V

    .line 537
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/ac;->Qhi(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 525
    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    .line 527
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 553
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 554
    iget-object p4, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->MQ:Lcom/bytedance/adsdk/ugeno/ac;

    if-eqz p4, :cond_0

    .line 555
    invoke-interface {p4, p1, p2, p3, p3}, Lcom/bytedance/adsdk/ugeno/ac;->cJ(IIII)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 202
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 296
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 298
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 193
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hpZ:I

    if-eq v0, p1, :cond_0

    .line 194
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hpZ:I

    .line 195
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->cJ()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Tgh:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 424
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ROR:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    .line 435
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ROR:Landroid/content/res/ColorStateList;

    .line 436
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    const/4 p1, 0x0

    .line 437
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 438
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Sf:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 439
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 411
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Sf:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Sf:F

    .line 414
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    const/4 p1, 0x0

    .line 415
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 416
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hm:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 239
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->hm:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->zc:Z

    .line 241
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->WAv:Z

    .line 242
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->CJ()V

    .line 243
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 355
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 336
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(FFFF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    .line 148
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/graphics/Bitmap;)Lcom/bytedance/adsdk/ugeno/component/image/Qhi;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    .line 150
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    .line 140
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/component/image/Qhi;->Qhi(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    .line 142
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 155
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    if-eq v0, p1, :cond_0

    .line 156
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->pA:I

    .line 157
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    .line 159
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Gm:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 165
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ABk:Z

    .line 461
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    const/4 p1, 0x0

    .line 462
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    return-void
.end method

.method public setRipple(F)V
    .locals 0

    .line 582
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac:F

    .line 583
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->postInvalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 111
    sget-boolean v0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->cJ:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->HzH:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_2

    .line 114
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->HzH:Landroid/widget/ImageView$ScaleType;

    .line 116
    sget-object v0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView$1;->Qhi:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 124
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    const/4 p1, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->kYc:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->kYc:Landroid/graphics/Shader$TileMode;

    .line 474
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    const/4 p1, 0x0

    .line 475
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 476
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    return-void
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->tP:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    return-void

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->tP:Landroid/graphics/Shader$TileMode;

    .line 487
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->ac()V

    const/4 p1, 0x0

    .line 488
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->Qhi(Z)V

    .line 489
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/component/image/RoundImageView;->invalidate()V

    return-void
.end method
