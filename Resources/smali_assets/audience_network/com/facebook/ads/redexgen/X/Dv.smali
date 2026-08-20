.class public final Lcom/facebook/ads/redexgen/X/Dv;
.super Lcom/facebook/ads/redexgen/X/Xc;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0U;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/0U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29362
    if-nez p3, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/FG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FG;-><init>()V

    .line 29363
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7P;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 29364
    return-void

    .line 29365
    :cond_0
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/0U;->A9e()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0E()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 29366
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/aT;
    .locals 1

    .line 29367
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aT;

    return-object v0
.end method
