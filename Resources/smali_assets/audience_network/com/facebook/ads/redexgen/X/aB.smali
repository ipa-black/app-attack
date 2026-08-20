.class public final Lcom/facebook/ads/redexgen/X/aB;
.super Lcom/facebook/ads/redexgen/X/0q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aA;->A0E(Lcom/facebook/ads/redexgen/X/8B;Lcom/facebook/ads/redexgen/X/1q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aA;)V
    .locals 0

    .line 71919
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aB;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$5;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0q;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 71920
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aB;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$5;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A03(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dv;->A0J()Lcom/facebook/ads/redexgen/X/aT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/aT;->A3b(Z)V

    .line 71921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A00(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->AAQ(Lcom/facebook/ads/redexgen/X/aA;)V

    .line 71923
    :cond_0
    return-void

    .line 71924
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
