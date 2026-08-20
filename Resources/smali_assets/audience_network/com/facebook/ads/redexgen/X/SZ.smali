.class public final Lcom/facebook/ads/redexgen/X/SZ;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NM;)V
    .locals 0

    .line 52559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/NM;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 52560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/NM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NM;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52561
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/NM;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/NM;->A00(Lcom/facebook/ads/redexgen/X/NM;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/NM;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52562
    return-void

    .line 52563
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/NM;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NM;->setPressed(Z)V

    .line 52564
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Lcom/facebook/ads/redexgen/X/NM;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/NM;->A01(Lcom/facebook/ads/redexgen/X/NM;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NM;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 52565
    return-void
.end method
