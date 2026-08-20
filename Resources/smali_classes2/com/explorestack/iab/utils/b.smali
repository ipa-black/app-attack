.class public Lcom/explorestack/iab/utils/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/b$d;
    }
.end annotation


# static fields
.field public static final g:Landroid/view/animation/Interpolator;

.field public static final h:Landroid/view/animation/Interpolator;

.field public static final i:[I


# instance fields
.field public final a:Lcom/explorestack/iab/utils/b$d;

.field public b:F

.field public c:Landroid/content/res/Resources;

.field public d:Landroid/animation/Animator;

.field public e:F

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/explorestack/iab/utils/b;->g:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/explorestack/iab/utils/b$a;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/b$a;-><init>()V

    sput-object v0, Lcom/explorestack/iab/utils/b;->h:Landroid/view/animation/Interpolator;

    const/high16 v0, -0x1000000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/utils/b;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/utils/b;->c:Landroid/content/res/Resources;

    new-instance p1, Lcom/explorestack/iab/utils/b$d;

    invoke-direct {p1}, Lcom/explorestack/iab/utils/b$d;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    sget-object v0, Lcom/explorestack/iab/utils/b;->i:[I

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/b$d;->a([I)V

    const/high16 p1, 0x40200000    # 2.5f

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/b;->c(F)V

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/b;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/b;)F
    .locals 0

    iget p0, p0, Lcom/explorestack/iab/utils/b;->e:F

    return p0
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/b;F)F
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/utils/b;->e:F

    return p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/b;FLcom/explorestack/iab/utils/b$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/utils/b;->b(FLcom/explorestack/iab/utils/b$d;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/b;FLcom/explorestack/iab/utils/b$d;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/b;->a(FLcom/explorestack/iab/utils/b$d;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/utils/b;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/utils/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/utils/b;->f:Z

    return p0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    iget v0, v0, Lcom/explorestack/iab/utils/b$d;->i:F

    return v0
.end method

.method public final a(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b$d;->a(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final a(FLcom/explorestack/iab/utils/b$d;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/utils/b;->b(FLcom/explorestack/iab/utils/b$d;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->h()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->i()F

    move-result v1

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->g()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->i()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v1}, Lcom/explorestack/iab/utils/b$d;->d(F)V

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->g()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/explorestack/iab/utils/b$d;->b(F)V

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->h()F

    move-result v1

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->h()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/explorestack/iab/utils/b$d;->c(F)V

    return-void
.end method

.method public final a(FLcom/explorestack/iab/utils/b$d;Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/explorestack/iab/utils/b;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/utils/b;->a(FLcom/explorestack/iab/utils/b$d;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->h()F

    move-result p3

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    const v3, 0x3c23d70a    # 0.01f

    const v4, 0x3f4a3d71    # 0.79f

    if-gez v2, :cond_2

    div-float v0, p1, v1

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->i()F

    move-result v1

    sget-object v2, Lcom/explorestack/iab/utils/b;->h:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    sub-float v2, p1, v1

    div-float/2addr v2, v1

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->i()F

    move-result v1

    add-float/2addr v1, v4

    sget-object v5, Lcom/explorestack/iab/utils/b;->h:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float v0, v1, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    const v2, 0x3e570a3c    # 0.20999998f

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    iget v2, p0, Lcom/explorestack/iab/utils/b;->e:F

    add-float/2addr p1, v2

    const/high16 v2, 0x43580000    # 216.0f

    mul-float/2addr p1, v2

    invoke-virtual {p2, v1}, Lcom/explorestack/iab/utils/b$d;->d(F)V

    invoke-virtual {p2, v0}, Lcom/explorestack/iab/utils/b$d;->b(F)V

    invoke-virtual {p2, p3}, Lcom/explorestack/iab/utils/b$d;->c(F)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/b;->b(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Paint$Cap;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b$d;->a(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public varargs a([I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b$d;->a([I)V

    iget-object p1, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/b$d;->c(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/explorestack/iab/utils/b$b;

    invoke-direct {v2, p0, v0}, Lcom/explorestack/iab/utils/b$b;-><init>(Lcom/explorestack/iab/utils/b;Lcom/explorestack/iab/utils/b$d;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    sget-object v2, Lcom/explorestack/iab/utils/b;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/explorestack/iab/utils/b$c;

    invoke-direct {v2, p0, v0}, Lcom/explorestack/iab/utils/b$c;-><init>(Lcom/explorestack/iab/utils/b;Lcom/explorestack/iab/utils/b$d;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/utils/b;->b:F

    return-void
.end method

.method public final b(FLcom/explorestack/iab/utils/b$d;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/explorestack/iab/utils/b;->a(FII)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/iab/utils/b$d;->f()I

    move-result p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/explorestack/iab/utils/b$d;->b(I)V

    return-void
.end method

.method public c(F)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b$d;->e(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/explorestack/iab/utils/b;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v1, p1, v0}, Lcom/explorestack/iab/utils/b$d;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->a()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b$d;->a(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/b$d;->a(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->l()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->b()F

    move-result v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/b$d;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/b;->f:Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/b$d;->c(I)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->k()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/utils/b;->b(F)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/b$d;->c(I)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/b;->a:Lcom/explorestack/iab/utils/b$d;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/b$d;->k()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
