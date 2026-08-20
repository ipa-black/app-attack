.class public Lcom/bytedance/sdk/component/adexpress/widget/GifView;
.super Landroid/widget/ImageView;
.source "GifView.java"


# instance fields
.field private ABk:Z

.field private CJ:Landroid/graphics/drawable/AnimatedImageDrawable;

.field private Gm:I

.field private Qhi:Landroid/graphics/Movie;

.field private ROR:F

.field private Sf:F

.field private Tgh:Z

.field private WAv:I

.field private ac:I

.field private cJ:J

.field private fl:Z

.field private hm:F

.field private iMK:Z

.field private volatile zc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->fl:Z

    .line 50
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Tgh:Z

    .line 73
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ABk:Z

    .line 74
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->iMK:Z

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi()V

    return-void
.end method

.method private Qhi(Landroid/graphics/Canvas;)V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ac:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 551
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->hm:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 552
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    invoke-virtual {v0, p1, v1, v1}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ROR:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->hm:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Sf:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 558
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private ac()V
    .locals 6

    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 523
    iget-wide v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 524
    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ:J

    .line 528
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    .line 534
    :cond_2
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->iMK:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ac:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_3

    .line 535
    iput v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ac:I

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->zc:Z

    return-void

    .line 540
    :cond_3
    iget-wide v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ac:I

    return-void
.end method

.method private cJ()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->fl:Z

    if-nez v0, :cond_0

    .line 504
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ABk:Z

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 158
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_2

    .line 159
    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 160
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->CJ:Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 161
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->zc:Z

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->iMK:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 169
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ()V

    return-void
.end method


# virtual methods
.method Qhi()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->fl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->fl:Z

    if-nez v0, :cond_1

    .line 481
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->zc:Z

    if-nez v0, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ac()V

    .line 483
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi(Landroid/graphics/Canvas;)V

    .line 484
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ()V

    return-void

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 489
    const-string v0, "GifView"

    const-string v1, "onDraw->Throwable->"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 492
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 466
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 467
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->fl:Z

    if-nez p1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->WAv:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ROR:F

    .line 472
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Gm:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Sf:F

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ABk:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 411
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 412
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->fl:Z

    if-nez v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 421
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 424
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_0

    int-to-float v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 434
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_1

    int-to-float p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_1

    :cond_1
    move p2, v3

    .line 446
    :goto_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->hm:F

    int-to-float p1, v0

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 448
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->WAv:I

    int-to-float p2, v1

    mul-float/2addr p2, v3

    float-to-int p2, p2

    .line 449
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Gm:I

    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .line 564
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    .line 565
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 566
    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ABk:Z

    .line 567
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ()V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 574
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 575
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 576
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ABk:Z

    .line 577
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ()V

    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 583
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->Qhi:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 585
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->ABk:Z

    .line 586
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->cJ()V

    :cond_1
    return-void
.end method

.method public setRepeatConfig(Z)V
    .locals 2

    .line 173
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->iMK:Z

    if-nez p1, :cond_1

    .line 176
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;->CJ:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 180
    const-string v0, "GifView"

    const-string v1, "setRepeatConfig error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
