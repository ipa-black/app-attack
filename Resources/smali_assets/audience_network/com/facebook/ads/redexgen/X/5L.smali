.class public final Lcom/facebook/ads/redexgen/X/5L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14117
    new-instance v0, Lcom/facebook/ads/redexgen/X/6D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6D;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5L;->A00:Lcom/facebook/ads/redexgen/X/6D;

    .line 14118
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/6D;
    .locals 1

    .line 14119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5L;->A00:Lcom/facebook/ads/redexgen/X/6D;

    return-object v0
.end method

.method public final getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 14120
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5L;->A00:Lcom/facebook/ads/redexgen/X/6D;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5M;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6D;->A06(Lcom/facebook/ads/redexgen/X/Xb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
