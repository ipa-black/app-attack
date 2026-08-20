.class public final Lcom/facebook/ads/redexgen/X/YW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 68100
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A65(I)Landroid/view/View;
    .locals 1

    .line 68101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A67(Landroid/view/View;)I
    .locals 3

    .line 68102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68103
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0n(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A68(Landroid/view/View;)I
    .locals 3

    .line 68104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68105
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0k(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A7H()I
    .locals 2

    .line 68106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0h()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A7I()I
    .locals 1

    .line 68107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YW;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e()I

    move-result v0

    return v0
.end method
