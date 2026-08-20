.class public final Lcom/facebook/ads/redexgen/X/Ju;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PV;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PV;)V
    .locals 0

    .line 40906
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/PV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 40907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/PV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PV;->A00:Lcom/facebook/ads/redexgen/X/6i;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A0E(Lcom/facebook/ads/redexgen/X/Jq;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/PV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PV;->A00:Lcom/facebook/ads/redexgen/X/6i;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A0C(Lcom/facebook/ads/redexgen/X/Jq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/PV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PV;->A00:Lcom/facebook/ads/redexgen/X/6i;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6i;->A00:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jq;->A09(Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 40909
    :cond_0
    return-void
.end method
