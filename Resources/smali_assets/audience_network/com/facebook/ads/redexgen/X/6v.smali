.class public final Lcom/facebook/ads/redexgen/X/6v;
.super Lcom/facebook/ads/redexgen/X/Mt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jx;)V
    .locals 0

    .line 16125
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mt;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/NC;)V
    .locals 4

    .line 16126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A07(Lcom/facebook/ads/redexgen/X/Jx;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A08(Lcom/facebook/ads/redexgen/X/Jx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jx;->A0B(Lcom/facebook/ads/redexgen/X/Jx;Z)Z

    .line 16128
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A04:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0A(Lcom/facebook/ads/redexgen/X/Jx;Lcom/facebook/ads/redexgen/X/Pg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    .line 16129
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A09(Lcom/facebook/ads/redexgen/X/Jx;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16130
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jx;->A0C(Lcom/facebook/ads/redexgen/X/Jx;Z)Z

    .line 16131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A01(Lcom/facebook/ads/redexgen/X/Jx;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/KC;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/KC;-><init>(Lcom/facebook/ads/redexgen/X/6v;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    .line 16132
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A00(Lcom/facebook/ads/redexgen/X/Jx;)I

    move-result v0

    int-to-long v0, v0

    .line 16133
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16134
    :cond_1
    :goto_0
    return-void

    .line 16135
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A03:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0A(Lcom/facebook/ads/redexgen/X/Jx;Lcom/facebook/ads/redexgen/X/Pg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A04(Lcom/facebook/ads/redexgen/X/Jx;)V

    .line 16137
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6v;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A05(Lcom/facebook/ads/redexgen/X/Jx;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16138
    check-cast p1, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6v;->A00(Lcom/facebook/ads/redexgen/X/NC;)V

    return-void
.end method
