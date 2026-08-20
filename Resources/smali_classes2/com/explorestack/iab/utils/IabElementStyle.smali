.class public Lcom/explorestack/iab/utils/IabElementStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/Integer;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Float;

.field public t:Ljava/lang/Float;

.field public u:Ljava/lang/Float;

.field public v:Ljava/lang/Integer;

.field public w:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->merge(Lcom/explorestack/iab/utils/IabElementStyle;)V

    return-void
.end method


# virtual methods
.method public applyAlignment(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/IabElementStyle;->positionAsGravity()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getMarginLeft(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getMarginTop(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getMarginRight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getMarginBottom(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public applyPadding(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getPaddingLeft(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getPaddingTop(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getPaddingRight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getPaddingBottom(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public applyRelativeAlignment(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_0
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x50

    if-eq v0, v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0xc

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    goto :goto_2

    :cond_5
    const/16 v0, 0xf

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    return-void
.end method

.method public copyWith(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/explorestack/iab/utils/IabElementStyle;->merge(Lcom/explorestack/iab/utils/IabElementStyle;)V

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->merge(Lcom/explorestack/iab/utils/IabElementStyle;)V

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getFillColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0
.end method

.method public getFontStyle()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    goto :goto_1
.end method

.method public getHideAfter()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    return-object v0
.end method

.method public getHorizontalPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMarginBottom(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getMarginLeft(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getMarginRight(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getMarginTop(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getOpacity()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPaddingBottom(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getPaddingLeft(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getPaddingRight(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getPaddingTop(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getStrokeColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, Lcom/explorestack/iab/utils/Assets;->mainAssetsColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWidth(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    goto :goto_1
.end method

.method public hasFillColor()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStrokeColor()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutlined()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVisible()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public merge(Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    :cond_4
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    :cond_5
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    :cond_6
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    :cond_7
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    :cond_8
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    if-eqz v0, :cond_9

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    :cond_9
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    :cond_a
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    :cond_b
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    :cond_c
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    :cond_d
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    :cond_e
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    :cond_f
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    :cond_10
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    :cond_11
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    :cond_12
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    if-eqz v0, :cond_13

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    :cond_13
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    :cond_14
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    :cond_15
    iget-object v0, p1, Lcom/explorestack/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/explorestack/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    :cond_16
    iget-object p1, p1, Lcom/explorestack/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    if-eqz p1, :cond_17

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    :cond_17
    return-void
.end method

.method public positionAsGravity()I
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->r:Ljava/lang/String;

    return-void
.end method

.method public setFillColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->b:Ljava/lang/Integer;

    return-void
.end method

.method public setFontSize(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->w:Ljava/lang/Float;

    return-void
.end method

.method public setFontStyle(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->v:Ljava/lang/Integer;

    return-void
.end method

.method public setHeight(Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->u:Ljava/lang/Float;

    return-void
.end method

.method public setHideAfter(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->i:Ljava/lang/Float;

    return-void
.end method

.method public setHorizontalPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->e:Ljava/lang/Integer;

    return-void
.end method

.method public setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/explorestack/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/explorestack/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/explorestack/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    return-void
.end method

.method public setMargin(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/explorestack/iab/utils/IabElementStyle;->setMargin(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setMarginBottom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->q:Ljava/lang/Integer;

    return-void
.end method

.method public setMarginLeft(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->n:Ljava/lang/Integer;

    return-void
.end method

.method public setMarginRight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->p:Ljava/lang/Integer;

    return-void
.end method

.method public setMarginTop(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->o:Ljava/lang/Integer;

    return-void
.end method

.method public setOpacity(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->h:Ljava/lang/Float;

    return-void
.end method

.method public setOutlined(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/explorestack/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/explorestack/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/explorestack/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    return-void
.end method

.method public setPadding(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    array-length v0, p1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    aget-object v2, p1, v3

    invoke-static {v2}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->convertCssSizeToPx(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/explorestack/iab/utils/IabElementStyle;->setPadding(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setPaddingBottom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->m:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingLeft(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->j:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingRight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->k:Ljava/lang/Integer;

    return-void
.end method

.method public setPaddingTop(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->l:Ljava/lang/Integer;

    return-void
.end method

.method public setStrokeColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->a:Ljava/lang/Integer;

    return-void
.end method

.method public setStrokeWidth(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->s:Ljava/lang/Float;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->g:Ljava/lang/String;

    return-void
.end method

.method public setVerticalPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->f:Ljava/lang/Integer;

    return-void
.end method

.method public setVisible(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public setWidth(Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/utils/IabElementStyle;->t:Ljava/lang/Float;

    return-void
.end method
