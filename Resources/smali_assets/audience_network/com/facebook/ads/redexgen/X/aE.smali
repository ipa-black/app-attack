.class public final Lcom/facebook/ads/redexgen/X/aE;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aD;->AAs(Lcom/facebook/ads/redexgen/X/8v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aD;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aD;Lcom/facebook/ads/redexgen/X/8v;)V
    .locals 0

    .line 71956
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aE;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aE;->A01:Lcom/facebook/ads/redexgen/X/8v;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 71957
    .local p0, "this":Lcom/facebook/ads/redexgen/X/aE;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A0C(Lcom/facebook/ads/redexgen/X/aA;)V

    .line 71958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71959
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aE;->A01:Lcom/facebook/ads/redexgen/X/8v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 71960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aE;->A00:Lcom/facebook/ads/redexgen/X/aD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aD;->A00:Lcom/facebook/ads/redexgen/X/aA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(Lcom/facebook/ads/redexgen/X/aA;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A0U()V

    .line 71961
    :cond_0
    return-void
.end method
