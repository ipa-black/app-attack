.class public final Lcom/facebook/ads/redexgen/X/Pm;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JR;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JR;)V
    .locals 0

    .line 48993
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A06(Lcom/facebook/ads/redexgen/X/JR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A00(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0L(Landroid/view/View;)V

    .line 48996
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A00(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A03(Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;

    .line 48998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A01(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A01(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 49000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/JR;->A02(Lcom/facebook/ads/redexgen/X/JR;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 49001
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A06(Lcom/facebook/ads/redexgen/X/JR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A00(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 49004
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A03(Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;

    .line 49005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A01(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A01(Lcom/facebook/ads/redexgen/X/JR;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 49007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/JR;->A02(Lcom/facebook/ads/redexgen/X/JR;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 49008
    :cond_1
    return-void
.end method
