.class public final Lcom/facebook/ads/redexgen/X/Ya;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/E9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/E9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 0

    .line 68204
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADd(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 1

    .line 68205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/E9;->A1o(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    .line 68206
    return-void
.end method

.method public final ADf(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4h;->A0c(Lcom/facebook/ads/redexgen/X/4r;)V

    .line 68208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/E9;->A1p(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V

    .line 68209
    return-void
.end method

.method public final ADh(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4U;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68210
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A0Z(Z)V

    .line 68211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0C:Z

    if-eqz v0, :cond_1

    .line 68212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A05:Lcom/facebook/ads/redexgen/X/4V;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4V;->A0H(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1N()V

    .line 68214
    :cond_0
    :goto_0
    return-void

    .line 68215
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A05:Lcom/facebook/ads/redexgen/X/4V;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4V;->A0G(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/4U;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E9;->A1N()V

    goto :goto_0
.end method

.method public final AFi(Lcom/facebook/ads/redexgen/X/4r;)V
    .locals 3

    .line 68217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/E9;->A06:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4r;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/E9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/E9;->A0r:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4h;)V

    .line 68218
    return-void
.end method
