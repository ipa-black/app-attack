.class public final Lcom/facebook/ads/redexgen/X/YH;
.super Lcom/facebook/ads/redexgen/X/Jo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YF;->A0C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YF;)V
    .locals 0

    .line 67813
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YH;->A00:Lcom/facebook/ads/redexgen/X/YF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jo;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 67814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A00:Lcom/facebook/ads/redexgen/X/YF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YF;->A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A00:Lcom/facebook/ads/redexgen/X/YF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YF;->A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YH;->A00:Lcom/facebook/ads/redexgen/X/YF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YF;->A01(Lcom/facebook/ads/redexgen/X/YF;)Lcom/facebook/ads/redexgen/X/5A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5A;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 67816
    :cond_0
    return-void
.end method
