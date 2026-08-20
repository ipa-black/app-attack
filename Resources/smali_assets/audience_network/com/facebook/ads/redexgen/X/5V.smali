.class public final Lcom/facebook/ads/redexgen/X/5V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/J1;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 14499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14500
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J1;->A00(I)Lcom/facebook/ads/redexgen/X/J1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/J1;

    .line 14501
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 14502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/J1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J1;->A03()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 14503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/J1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J1;->A04()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 14504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5V;->A00:Lcom/facebook/ads/redexgen/X/J1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J1;->A05()I

    move-result v0

    return v0
.end method
