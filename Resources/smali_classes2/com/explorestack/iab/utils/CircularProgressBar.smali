.class public final Lcom/explorestack/iab/utils/CircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/IabElement;


# instance fields
.field public a:Lcom/explorestack/iab/utils/b;

.field public final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/CircularProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    new-instance v1, Lcom/explorestack/iab/utils/b;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/utils/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/utils/b;->c(F)V

    iget-object p1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    const/high16 v0, -0x10000

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/b;->a([I)V

    iget-object p1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/b;->a(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b;->a()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b;->a([I)V

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/IabElementStyle;->getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/b;->c(F)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->a:Lcom/explorestack/iab/utils/b;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getStrokeColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/b;->a([I)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    return-void
.end method
