.class public final Lcom/facebook/ads/redexgen/X/6x;
.super Lcom/facebook/ads/redexgen/X/NY;
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

    .line 16145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NY;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/6z;)V
    .locals 3

    .line 16146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A01(Lcom/facebook/ads/redexgen/X/Jx;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16147
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pg;->A05:Lcom/facebook/ads/redexgen/X/Pg;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A0A(Lcom/facebook/ads/redexgen/X/Jx;Lcom/facebook/ads/redexgen/X/Pg;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 16148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A04(Lcom/facebook/ads/redexgen/X/Jx;)V

    .line 16149
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A05(Lcom/facebook/ads/redexgen/X/Jx;ZZ)V

    .line 16150
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6x;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Jx;->A0B(Lcom/facebook/ads/redexgen/X/Jx;Z)Z

    .line 16151
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 16152
    check-cast p1, Lcom/facebook/ads/redexgen/X/6z;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6x;->A00(Lcom/facebook/ads/redexgen/X/6z;)V

    return-void
.end method
