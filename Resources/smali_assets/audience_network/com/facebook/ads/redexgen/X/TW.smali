.class public final Lcom/facebook/ads/redexgen/X/TW;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ke;->A08()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ke;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 0

    .line 54730
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 54731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A03(Lcom/facebook/ads/redexgen/X/Ke;)V

    .line 54733
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A01(Lcom/facebook/ads/redexgen/X/Ke;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ke;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ke;->A00(Lcom/facebook/ads/redexgen/X/Ke;)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54734
    :cond_0
    return-void
.end method
