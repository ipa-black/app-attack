.class public final Lcom/facebook/ads/redexgen/X/S5;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lk;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/Lj;

.field public final A02:Lcom/facebook/ads/redexgen/X/OM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/OM;Ljava/lang/String;)V
    .locals 0

    .line 51649
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51650
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    .line 51651
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S5;->A01:Lcom/facebook/ads/redexgen/X/Lj;

    .line 51652
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Ljava/lang/String;

    .line 51653
    return-void
.end method


# virtual methods
.method public final A92(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51654
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OM;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 51655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0V()V

    .line 51656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LL;->A0J(Landroid/view/View;)V

    .line 51657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    .line 51658
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51659
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/S5;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51660
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S5;->A01:Lcom/facebook/ads/redexgen/X/Lj;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3J(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 51661
    return-void
.end method

.method public final ABw(Z)V
    .locals 0

    .line 51662
    return-void
.end method

.method public final ACM(Z)V
    .locals 0

    .line 51663
    return-void
.end method

.method public final AEZ(Landroid/os/Bundle;)V
    .locals 0

    .line 51664
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 51665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 51666
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 51667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0U()V

    .line 51668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0N()Lcom/facebook/ads/redexgen/X/OB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S5;->A02:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0N()Lcom/facebook/ads/redexgen/X/OB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OB;->AB6()V

    .line 51670
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OM;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 51671
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 0

    .line 51672
    return-void
.end method
