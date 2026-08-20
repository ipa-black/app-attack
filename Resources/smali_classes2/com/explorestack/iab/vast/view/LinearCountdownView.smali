.class public Lcom/explorestack/iab/vast/view/LinearCountdownView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/IabElement;


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field public c:F

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:F

    const/high16 p1, 0x41700000    # 15.0f

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    sget p1, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:F

    const/high16 p1, 0x41700000    # 15.0f

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    sget p1, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    return-void
.end method

.method public changePercentage(F)V
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget-object v8, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    iget v2, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->b:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float v6, v2, v0

    iget-object v8, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 1

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getStrokeColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->d:I

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/vast/view/LinearCountdownView;->c:F

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
