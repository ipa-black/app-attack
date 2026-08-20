.class public final Lcom/facebook/ads/redexgen/X/Dy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/GU;

.field public final A01:Lcom/facebook/ads/redexgen/X/GW;

.field public final A02:Lcom/facebook/ads/redexgen/X/GW;

.field public final A03:Lcom/facebook/ads/redexgen/X/Gx;

.field public final A04:Lcom/facebook/ads/redexgen/X/Hg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GW;)V
    .locals 6

    .line 29387
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Dy;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/GU;Lcom/facebook/ads/redexgen/X/Hg;)V

    .line 29388
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/GW;Lcom/facebook/ads/redexgen/X/GU;Lcom/facebook/ads/redexgen/X/Hg;)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/GW;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/GU;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/redexgen/X/Hg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29390
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29391
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Lcom/facebook/ads/redexgen/X/Gx;

    .line 29392
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dy;->A02:Lcom/facebook/ads/redexgen/X/GW;

    .line 29393
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Dy;->A01:Lcom/facebook/ads/redexgen/X/GW;

    .line 29394
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Dy;->A00:Lcom/facebook/ads/redexgen/X/GU;

    .line 29395
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Dy;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    .line 29396
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Gx;
    .locals 1

    .line 29397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Lcom/facebook/ads/redexgen/X/Gx;

    return-object v0
.end method

.method public final A01(Z)Lcom/facebook/ads/redexgen/X/UU;
    .locals 11

    .line 29398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dy;->A01:Lcom/facebook/ads/redexgen/X/GW;

    if-eqz v0, :cond_0

    .line 29399
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v3

    .line 29400
    .local v4, "cacheReadDataSource":Lcom/facebook/ads/redexgen/X/GX;
    :goto_0
    if-eqz p1, :cond_1

    .line 29401
    new-instance v0, Lcom/facebook/ads/redexgen/X/UU;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Lcom/facebook/ads/redexgen/X/Gx;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ui;->A02:Lcom/facebook/ads/redexgen/X/Ui;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/UU;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GV;ILcom/facebook/ads/redexgen/X/Gz;)V

    return-object v0

    .line 29402
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Uh;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Uh;-><init>()V

    goto :goto_0

    .line 29403
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dy;->A00:Lcom/facebook/ads/redexgen/X/GU;

    if-eqz v0, :cond_3

    .line 29404
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GU;->createDataSink()Lcom/facebook/ads/redexgen/X/GV;

    move-result-object v8

    .line 29405
    .local v9, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/GV;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dy;->A02:Lcom/facebook/ads/redexgen/X/GW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GW;->A4H()Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v6

    .line 29406
    .local v0, "upstream":Lcom/facebook/ads/redexgen/X/GX;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dy;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    if-nez v2, :cond_2

    .line 29407
    .end local v0    # "upstream":Lcom/facebook/ads/redexgen/X/GX;
    .local v7, "upstream":Lcom/facebook/ads/redexgen/X/GX;
    :goto_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/UU;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Lcom/facebook/ads/redexgen/X/Gx;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/UU;-><init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/GV;ILcom/facebook/ads/redexgen/X/Gz;)V

    return-object v4

    .line 29408
    :cond_2
    const/16 v1, -0x3e8

    new-instance v0, Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/UZ;-><init>(Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/Hg;I)V

    move-object v6, v0

    goto :goto_2

    .line 29409
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dy;->A03:Lcom/facebook/ads/redexgen/X/Gx;

    const-wide/32 v0, 0x200000

    new-instance v8, Lcom/facebook/ads/redexgen/X/UV;

    invoke-direct {v8, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/UV;-><init>(Lcom/facebook/ads/redexgen/X/Gx;J)V

    goto :goto_1
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/Hg;
    .locals 1

    .line 29410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dy;->A04:Lcom/facebook/ads/redexgen/X/Hg;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hg;-><init>()V

    goto :goto_0
.end method
