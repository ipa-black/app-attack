.class public final Lcom/facebook/ads/redexgen/X/45;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/EC;->A0W(Lcom/facebook/ads/redexgen/X/46;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/46;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/EC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EC;Lcom/facebook/ads/redexgen/X/46;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 11008
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/45;->A03:Lcom/facebook/ads/redexgen/X/EC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/45;->A02:Lcom/facebook/ads/redexgen/X/46;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/45;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 11009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/45;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 11010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 11011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 11012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 11013
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/45;->A03:Lcom/facebook/ads/redexgen/X/EC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A02:Lcom/facebook/ads/redexgen/X/46;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/46;->A04:Lcom/facebook/ads/redexgen/X/4r;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0Q(Lcom/facebook/ads/redexgen/X/4r;Z)V

    .line 11014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A03:Lcom/facebook/ads/redexgen/X/EC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EC;->A02:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A02:Lcom/facebook/ads/redexgen/X/46;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/46;->A04:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/45;->A03:Lcom/facebook/ads/redexgen/X/EC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EC;->A0V()V

    .line 11016
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 11017
    return-void
.end method
