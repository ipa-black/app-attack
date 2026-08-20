.class public final Lcom/facebook/ads/redexgen/X/Rv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ru;->A0N()Lcom/facebook/ads/redexgen/X/Li;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ru;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ru;)V
    .locals 0

    .line 51549
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAW()V
    .locals 3

    .line 51550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ru;->A05:Lcom/facebook/ads/redexgen/X/Ii;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A07:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 51551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ru;->A0T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51552
    return-void

    .line 51553
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ru;->A08:Lcom/facebook/ads/redexgen/X/Lj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Ru;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ru;->A09:Lcom/facebook/ads/redexgen/X/MC;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MC;->A6b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 51554
    return-void
.end method
