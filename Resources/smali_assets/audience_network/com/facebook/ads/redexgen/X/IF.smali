.class public final Lcom/facebook/ads/redexgen/X/IF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/IG;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/IG;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/IG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37988
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    .line 37989
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    .line 37990
    return-void

    .line 37991
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IF;)Lcom/facebook/ads/redexgen/X/IG;
    .locals 0

    .line 37992
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    return-object p0
.end method


# virtual methods
.method public final A01(IIIF)V
    .locals 7

    .line 37993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 37994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/IC;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/IC;-><init>(Lcom/facebook/ads/redexgen/X/IF;IIIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37995
    :cond_0
    return-void
.end method

.method public final A02(IJ)V
    .locals 2

    .line 37996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 37997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/IB;-><init>(Lcom/facebook/ads/redexgen/X/IF;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37998
    :cond_0
    return-void
.end method

.method public final A03(Landroid/view/Surface;)V
    .locals 2

    .line 37999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 38000
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ID;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ID;-><init>(Lcom/facebook/ads/redexgen/X/IF;Landroid/view/Surface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38001
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 2

    .line 38002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 38003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IA;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/IA;-><init>(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38004
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 2

    .line 38005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 38006
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IE;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/IE;-><init>(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/redexgen/X/Ap;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38007
    :cond_0
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 2

    .line 38008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 38009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/I8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/I8;-><init>(Lcom/facebook/ads/redexgen/X/IF;Lcom/facebook/ads/redexgen/X/Ap;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38010
    :cond_0
    return-void
.end method

.method public final A07(Ljava/lang/String;JJ)V
    .locals 8

    .line 38011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A01:Lcom/facebook/ads/redexgen/X/IG;

    if-eqz v0, :cond_0

    .line 38012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IF;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/I9;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/I9;-><init>(Lcom/facebook/ads/redexgen/X/IF;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38013
    :cond_0
    return-void
.end method
