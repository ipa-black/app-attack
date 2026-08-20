.class public final Lcom/facebook/ads/redexgen/X/41;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/EC;->A03(Lcom/facebook/ads/redexgen/X/4r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/EC;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/4r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EC;Lcom/facebook/ads/redexgen/X/4r;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 10969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/41;->A02:Lcom/facebook/ads/redexgen/X/EC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/4r;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 10971
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A02:Lcom/facebook/ads/redexgen/X/EC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YQ;->A0P(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 10973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A02:Lcom/facebook/ads/redexgen/X/EC;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EC;->A06:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A03:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A02:Lcom/facebook/ads/redexgen/X/EC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EC;->A0V()V

    .line 10975
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 10976
    return-void
.end method
