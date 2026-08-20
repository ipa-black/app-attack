.class public final Lcom/facebook/ads/redexgen/X/Po;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JP;->A09(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JP;)V
    .locals 0

    .line 49026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 49027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/JP;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Lcom/facebook/ads/redexgen/X/JP;Z)V

    .line 49028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/JP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JP;->A05(Lcom/facebook/ads/redexgen/X/JP;)V

    .line 49029
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 49030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/JP;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JP;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/JP;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Lcom/facebook/ads/redexgen/X/JP;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;

    .line 49032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Lcom/facebook/ads/redexgen/X/JP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JP;->A05(Lcom/facebook/ads/redexgen/X/JP;)V

    .line 49033
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49034
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49035
    return-void
.end method
