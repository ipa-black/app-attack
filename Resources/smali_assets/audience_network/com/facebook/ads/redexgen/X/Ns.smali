.class public final Lcom/facebook/ads/redexgen/X/Ns;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SG;->A0P(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SG;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SG;Z)V
    .locals 0

    .line 46702
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/SG;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 46703
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 46704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A09(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O0;->setTranslationY(F)V

    .line 46705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A0L(Lcom/facebook/ads/redexgen/X/SG;)V

    .line 46706
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A07(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Sq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/SG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A07(Lcom/facebook/ads/redexgen/X/SG;)Lcom/facebook/ads/redexgen/X/Sq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sq;->destroy()V

    .line 46708
    :cond_0
    return-void
.end method
