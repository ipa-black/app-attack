.class public abstract Lcom/explorestack/iab/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lcom/explorestack/iab/utils/IabElementStyle;

.field public d:Z

.field public final e:Ljava/lang/Runnable;

.field public final f:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/g;->d:Z

    new-instance v0, Lcom/explorestack/iab/utils/g$a;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/g$a;-><init>(Lcom/explorestack/iab/utils/g;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/g;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/explorestack/iab/utils/g$b;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/g$b;-><init>(Lcom/explorestack/iab/utils/g;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/g;->f:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/explorestack/iab/utils/g;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/g;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/utils/g;->f:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/utils/g;->d:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getWidth(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->getHeight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/explorestack/iab/utils/IabElementStyle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 3

    invoke-virtual {p0, p1, p3}, Lcom/explorestack/iab/utils/g;->c(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/explorestack/iab/utils/IabElementStyle;->copyWith(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/g;->c()V

    return-void

    :cond_0
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, p1, p3}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p3, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->applyAlignment(Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, p3}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p3, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->applyRelativeAlignment(Landroid/widget/RelativeLayout$LayoutParams;)V

    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v1, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v2, p3}, Lcom/explorestack/iab/utils/g;->a(Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;Lcom/explorestack/iab/utils/IabElementStyle;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/iab/utils/g;->b(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {p3, p1, p2}, Lcom/explorestack/iab/utils/IabElementStyle;->applyPadding(Landroid/content/Context;Landroid/view/View;)V

    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p3, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/explorestack/iab/utils/g;->a(Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V

    iget-object p2, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent should be instance of FrameLayout or RelativeLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/iab/utils/IabElementStyle;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/explorestack/iab/utils/IabElement;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/explorestack/iab/utils/IabElement;

    invoke-interface {p1, p2}, Lcom/explorestack/iab/utils/IabElement;->setStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;Lcom/explorestack/iab/utils/IabElementStyle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/iab/utils/IabElementStyle;",
            "Lcom/explorestack/iab/utils/IabElementStyle;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract b(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/explorestack/iab/utils/IabElementStyle;",
            ")TT;"
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/g;->d:Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/IabElementStyle;->getOpacity()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract c(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/g;->b()V

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 5

    iget-boolean v0, p0, Lcom/explorestack/iab/utils/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getHideAfter()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/explorestack/iab/utils/g;->d:Z

    iget-object v1, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/explorestack/iab/utils/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/utils/g;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/g;->b()V

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/g;->f()V

    :cond_1
    :goto_0
    return-void
.end method
