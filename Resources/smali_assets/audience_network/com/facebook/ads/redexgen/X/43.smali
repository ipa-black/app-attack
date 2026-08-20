.class public final Lcom/facebook/ads/redexgen/X/43;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/EC;->A0Y(Lcom/facebook/ads/redexgen/X/4r;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Landroid/view/View;

.field public final synthetic A03:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/EC;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/4r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EC;Lcom/facebook/ads/redexgen/X/4r;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 10986
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/43;->A04:Lcom/facebook/ads/redexgen/X/EC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/43;->A05:Lcom/facebook/ads/redexgen/X/4r;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/43;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Landroid/view/View;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/43;->A01:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/43;->A03:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 10987
    iget v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 10989
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/43;->A01:I

    if-eqz v0, :cond_1

    .line 10990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10991
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/43;->A03:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 10993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/43;->A04:Lcom/facebook/ads/redexgen/X/EC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A05:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0O(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 10994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A04:Lcom/facebook/ads/redexgen/X/EC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EC;->A04:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A05:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A04:Lcom/facebook/ads/redexgen/X/EC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EC;->A0V()V

    .line 10996
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 10997
    return-void
.end method
