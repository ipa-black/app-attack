.class public Lcom/explorestack/iab/mraid/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:Landroid/graphics/Rect;

.field public final i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/explorestack/iab/mraid/f;->i:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->a:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->d:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->e:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->f:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->g:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/f;->h:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/explorestack/iab/mraid/f;->i:F

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->pixelsToIntDips(FF)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/explorestack/iab/mraid/f;->i:F

    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->pixelsToIntDips(FF)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/explorestack/iab/mraid/f;->i:F

    invoke-static {v2, v3}, Lcom/explorestack/iab/utils/Utils;->pixelsToIntDips(FF)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v3, p0, Lcom/explorestack/iab/mraid/f;->i:F

    invoke-static {p1, v3}, Lcom/explorestack/iab/utils/Utils;->pixelsToIntDips(FF)I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(II)Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/f;->a:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/explorestack/iab/mraid/f;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/mraid/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(IIII)Z
    .locals 7

    iget-object v1, p0, Lcom/explorestack/iab/mraid/f;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/explorestack/iab/mraid/f;->f:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/iab/mraid/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_1

    add-int v0, p3, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_1

    add-int v0, p4, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    add-int/2addr p5, p3

    add-int/2addr p6, p4

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/mraid/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b(IIII)Z
    .locals 7

    iget-object v1, p0, Lcom/explorestack/iab/mraid/f;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/explorestack/iab/mraid/f;->h:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/iab/mraid/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c(IIII)Z
    .locals 7

    iget-object v1, p0, Lcom/explorestack/iab/mraid/f;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/explorestack/iab/mraid/f;->d:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/iab/mraid/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z

    move-result p1

    return p1
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method public e()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/f;->b:Landroid/graphics/Rect;

    return-object v0
.end method
