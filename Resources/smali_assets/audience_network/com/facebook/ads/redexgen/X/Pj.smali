.class public final Lcom/facebook/ads/redexgen/X/Pj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JS;->A07(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JS;)V
    .locals 0

    .line 48958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A06(Lcom/facebook/ads/redexgen/X/JS;Z)V

    .line 48960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A01(Lcom/facebook/ads/redexgen/X/JS;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A01(Lcom/facebook/ads/redexgen/X/JS;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48962
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A02(Lcom/facebook/ads/redexgen/X/JS;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48963
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 48964
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A04(Lcom/facebook/ads/redexgen/X/JS;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;

    .line 48965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A03(Lcom/facebook/ads/redexgen/X/JS;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0H(Landroid/view/View;)V

    .line 48966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A01(Lcom/facebook/ads/redexgen/X/JS;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A01(Lcom/facebook/ads/redexgen/X/JS;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48968
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pj;->A00:Lcom/facebook/ads/redexgen/X/JS;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JS;->A02(Lcom/facebook/ads/redexgen/X/JS;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48969
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48970
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48971
    return-void
.end method
