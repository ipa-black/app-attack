.class public final Lcom/facebook/ads/redexgen/X/UJ;
.super Lcom/facebook/ads/redexgen/X/b7;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final A00:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56704
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b7;-><init>()V

    .line 56705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:Landroid/view/View;

    .line 56706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56707
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UJ;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56708
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b7;->A00()V

    .line 56709
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 0

    .line 56710
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b7;->A00()V

    .line 56711
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 56712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UJ;->A00:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3E;->A0H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 56713
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b7;->A00()V

    .line 56714
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 56715
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/b7;->A01()V

    .line 56716
    return-void
.end method
