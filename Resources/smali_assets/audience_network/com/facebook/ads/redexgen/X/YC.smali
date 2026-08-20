.class public final Lcom/facebook/ads/redexgen/X/YC;
.super Lcom/facebook/ads/redexgen/X/K1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YB;->AAs(Lcom/facebook/ads/redexgen/X/8v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YB;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/8v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YB;Lcom/facebook/ads/redexgen/X/8v;)V
    .locals 0

    .line 67737
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/YC;->A01:Lcom/facebook/ads/redexgen/X/8v;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 67738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YC;->A01:Lcom/facebook/ads/redexgen/X/8v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    .line 67739
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1A()Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    .line 67740
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/QA;)V

    .line 67741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YC;->A00:Lcom/facebook/ads/redexgen/X/YB;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/Tp;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1c(ZZ)V

    .line 67742
    return-void
.end method
