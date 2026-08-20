.class public final Lcom/facebook/ads/redexgen/X/AL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AM;
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

.field public final A01:Lcom/facebook/ads/redexgen/X/AM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/AM;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/AM;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21655
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    .line 21656
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    .line 21657
    return-void

    .line 21658
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AM;
    .locals 0

    .line 21659
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    return-object p0
.end method


# virtual methods
.method public final A01(I)V
    .locals 2

    .line 21660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    if-eqz v0, :cond_0

    .line 21661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AK;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/AL;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21662
    :cond_0
    return-void
.end method

.method public final A02(IJJ)V
    .locals 8

    .line 21663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    if-eqz v0, :cond_0

    .line 21664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/AI;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/AI;-><init>(Lcom/facebook/ads/redexgen/X/AL;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21665
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 2

    .line 21666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    if-eqz v0, :cond_0

    .line 21667
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AH;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AH;-><init>(Lcom/facebook/ads/redexgen/X/AL;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21668
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 2

    .line 21669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    if-eqz v0, :cond_0

    .line 21670
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Lcom/facebook/ads/redexgen/X/AL;Lcom/facebook/ads/redexgen/X/Ap;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21671
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Ap;)V
    .locals 2

    .line 21672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    if-eqz v0, :cond_0

    .line 21673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AF;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AF;-><init>(Lcom/facebook/ads/redexgen/X/AL;Lcom/facebook/ads/redexgen/X/Ap;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21674
    :cond_0
    return-void
.end method

.method public final A06(Ljava/lang/String;JJ)V
    .locals 8

    .line 21675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A01:Lcom/facebook/ads/redexgen/X/AM;

    if-eqz v0, :cond_0

    .line 21676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AL;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/AG;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/AG;-><init>(Lcom/facebook/ads/redexgen/X/AL;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21677
    :cond_0
    return-void
.end method
