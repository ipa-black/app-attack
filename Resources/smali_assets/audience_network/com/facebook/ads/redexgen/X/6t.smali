.class public final Lcom/facebook/ads/redexgen/X/6t;
.super Lcom/facebook/ads/redexgen/X/LE;
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

    .line 16104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LE;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/LJ;)V
    .locals 4

    .line 16105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A02(Lcom/facebook/ads/redexgen/X/Jx;)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A07(Lcom/facebook/ads/redexgen/X/Jx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16106
    :cond_0
    return-void

    .line 16107
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/LJ;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 16108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A01(Lcom/facebook/ads/redexgen/X/Jx;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0A(Lcom/facebook/ads/redexgen/X/Jx;Lcom/facebook/ads/redexgen/X/Pg;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A04(Lcom/facebook/ads/redexgen/X/Jx;)V

    .line 16111
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A05(Lcom/facebook/ads/redexgen/X/Jx;ZZ)V

    .line 16112
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A08(Lcom/facebook/ads/redexgen/X/Jx;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A01(Lcom/facebook/ads/redexgen/X/Jx;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/K9;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/K9;-><init>(Lcom/facebook/ads/redexgen/X/6t;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    .line 16114
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A00(Lcom/facebook/ads/redexgen/X/Jx;)I

    move-result v0

    int-to-long v0, v0

    .line 16115
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16116
    :cond_3
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16117
    check-cast p1, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6t;->A00(Lcom/facebook/ads/redexgen/X/LJ;)V

    return-void
.end method
