.class public final Lcom/facebook/ads/redexgen/X/Re;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rd;)V
    .locals 0

    .line 51211
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AD4(Landroid/view/View;)V
    .locals 2

    .line 51212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Z

    if-eqz v0, :cond_0

    .line 51213
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Rd;->A07:Z

    .line 51214
    :cond_0
    return-void
.end method

.method public final AD6(Landroid/view/View;)V
    .locals 2

    .line 51215
    check-cast p1, Lcom/facebook/ads/redexgen/X/SF;

    .line 51216
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/SF;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SF;->A0i()V

    .line 51217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Rd;->A09:Z

    if-eqz v0, :cond_0

    .line 51218
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Rd;->A07:Z

    .line 51219
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/SF;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 51220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rd;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rd;->A04:Lcom/facebook/ads/redexgen/X/QA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 51221
    :cond_1
    return-void
.end method
