.class public final Lcom/facebook/ads/redexgen/X/Et;
.super Lcom/facebook/ads/redexgen/X/Za;
.source ""


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Dv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 0

    .line 32326
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1p;)V

    .line 32327
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    .line 32328
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Et;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 32329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Et;->A00:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Et;)Lcom/facebook/ads/redexgen/X/Dv;
    .locals 0

    .line 32330
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    return-object p0
.end method


# virtual methods
.method public final A0L()V
    .locals 2

    .line 32331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3o()V

    .line 32333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Landroid/view/View;)V

    .line 32334
    :goto_0
    return-void

    .line 32335
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3p()V

    goto :goto_0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V
    .locals 10

    .line 32336
    move-object v4, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aT;->A3i()V

    .line 32337
    check-cast v4, Lcom/facebook/ads/redexgen/X/aA;

    .line 32338
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/aA;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Zd;

    move-object v9, p4

    invoke-direct {v3, p0, v9, v4}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/Et;Lcom/facebook/ads/redexgen/X/1q;Lcom/facebook/ads/redexgen/X/aA;)V

    .line 32339
    .local v7, "bannerTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Za;->A0E()Landroid/os/Handler;

    move-result-object v2

    .line 32340
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32341
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Za;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/1p;->A07:Lcom/facebook/ads/redexgen/X/JD;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-direct {v8, p0, v3}, Lcom/facebook/ads/redexgen/X/Zc;-><init>(Lcom/facebook/ads/redexgen/X/Et;Ljava/lang/Runnable;)V

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/aA;->A0I(Lcom/facebook/ads/redexgen/X/Dv;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/JD;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1q;)V

    .line 32342
    return-void
.end method

.method public final A0Q(Ljava/lang/String;)V
    .locals 2

    .line 32343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A01:Lcom/facebook/ads/redexgen/X/Dv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3n(Z)V

    .line 32344
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Za;->A0Q(Ljava/lang/String;)V

    .line 32345
    return-void

    .line 32346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0T(Z)V
    .locals 1

    .line 32347
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Za;->A0T(Z)V

    .line 32348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Et;->A00:Landroid/view/View;

    .line 32349
    return-void
.end method
