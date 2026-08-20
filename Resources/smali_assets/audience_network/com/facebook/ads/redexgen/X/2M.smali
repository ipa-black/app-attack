.class public Lcom/facebook/ads/redexgen/X/2M;
.super Lcom/facebook/ads/redexgen/X/E9;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lm;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 0

    .line 5335
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/E9;-><init>(Landroid/content/Context;)V

    .line 5336
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2M;->setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 5337
    return-void
.end method

.method private setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/Xc;)V
    .locals 3

    .line 5344
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ye;

    invoke-direct {v2, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Ye;-><init>(Landroid/content/Context;IZ)V

    .line 5345
    .local v0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/Ye;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 5346
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A1V(Z)V

    .line 5347
    :cond_0
    invoke-super {p0, v2}, Lcom/facebook/ads/redexgen/X/E9;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 5348
    return-void
.end method


# virtual methods
.method public getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/Rc;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5338
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Rc;

    if-eqz v0, :cond_0

    .line 5339
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/E9;->getAdapter()Lcom/facebook/ads/redexgen/X/4N;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Rc;

    return-object v0

    .line 5340
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;
    .locals 1

    .line 5341
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2M;->getLayoutManager()Lcom/facebook/ads/redexgen/X/Ye;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/facebook/ads/redexgen/X/Ye;
    .locals 1

    .line 5342
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/E9;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4Z;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ye;

    return-object v0
.end method

.method public getOnScrollListener()Lcom/facebook/ads/redexgen/X/4e;
    .locals 1

    .line 5343
    new-instance v0, Lcom/facebook/ads/redexgen/X/TG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TG;-><init>(Lcom/facebook/ads/redexgen/X/2M;)V

    return-object v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 5349
    return-void
.end method
