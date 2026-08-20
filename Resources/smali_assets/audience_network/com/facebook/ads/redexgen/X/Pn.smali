.class public final Lcom/facebook/ads/redexgen/X/Pn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JQ;->A06(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/JQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JQ;II)V
    .locals 0

    .line 49009
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Pn;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 49010
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A08(Lcom/facebook/ads/redexgen/X/JQ;IIZ)V

    .line 49011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A01(Lcom/facebook/ads/redexgen/X/JQ;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A01(Lcom/facebook/ads/redexgen/X/JQ;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 49013
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A02(Lcom/facebook/ads/redexgen/X/JQ;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49014
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 49015
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    .line 49016
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A01:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/JQ;->A00(Lcom/facebook/ads/redexgen/X/JQ;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 49017
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    .line 49018
    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A03(Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/redexgen/X/Pg;)Lcom/facebook/ads/redexgen/X/Pg;

    .line 49019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A01(Lcom/facebook/ads/redexgen/X/JQ;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A01(Lcom/facebook/ads/redexgen/X/JQ;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 49021
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A02:Lcom/facebook/ads/redexgen/X/JQ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;->A02(Lcom/facebook/ads/redexgen/X/JQ;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 49022
    :cond_0
    return-void

    .line 49023
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49024
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 49025
    return-void
.end method
