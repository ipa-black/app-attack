.class public final Lcom/facebook/ads/redexgen/X/Pa;
.super Lcom/facebook/ads/redexgen/X/2A;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PT;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/PI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PT;DDDZ)V
    .locals 8

    .line 48851
    move-object v0, p0

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PT;

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/2A;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method public final A00(ZZLcom/facebook/ads/redexgen/X/2C;)V
    .locals 4

    .line 48852
    if-eqz p2, :cond_0

    .line 48853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PT;->A0F(Lcom/facebook/ads/redexgen/X/PT;)Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PT;->A0H(Lcom/facebook/ads/redexgen/X/PT;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pa;->A00:Lcom/facebook/ads/redexgen/X/PT;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A03:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PT;->A0L(Lcom/facebook/ads/redexgen/X/PT;Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A9d(Ljava/lang/String;Ljava/util/Map;)V

    .line 48854
    :cond_0
    return-void
.end method
