.class public final Lcom/facebook/ads/redexgen/X/MB;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/MA;)V
    .locals 2

    .line 44182
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44183
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Lcom/facebook/ads/redexgen/X/MA;

    .line 44184
    const/4 v1, 0x0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44185
    return-void
.end method


# virtual methods
.method public final onWindowVisibilityChanged(I)V
    .locals 1

    .line 44186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Lcom/facebook/ads/redexgen/X/MA;

    .line 44187
    return-void
.end method
