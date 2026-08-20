.class public final Lcom/facebook/ads/redexgen/X/YV;
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

    .line 68090
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A65(I)Landroid/view/View;
    .locals 1

    .line 68091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A67(Landroid/view/View;)I
    .locals 3

    .line 68092
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68093
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0j(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A68(Landroid/view/View;)I
    .locals 3

    .line 68094
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4a;

    .line 68095
    .local v0, "params":Lcom/facebook/ads/redexgen/X/4a;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4Z;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4a;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A7H()I
    .locals 2

    .line 68096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    .line 68097
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68098
    return v1
.end method

.method public final A7I()I
    .locals 1

    .line 68099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YV;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0g()I

    move-result v0

    return v0
.end method
