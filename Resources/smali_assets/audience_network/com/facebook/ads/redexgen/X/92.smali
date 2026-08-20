.class public final Lcom/facebook/ads/redexgen/X/92;
.super Lcom/facebook/ads/redexgen/X/Kr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8x;)V
    .locals 0

    .line 19903
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/92;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kr;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ks;)V
    .locals 2

    .line 19904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8x;->A02(Lcom/facebook/ads/redexgen/X/8x;)Lcom/facebook/ads/redexgen/X/Rd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A0P()Lcom/facebook/ads/redexgen/X/O5;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/92;->A00:Lcom/facebook/ads/redexgen/X/8x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->getVideoView()Lcom/facebook/ads/redexgen/X/Op;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Op;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O5;->setVolume(F)V

    .line 19905
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8T;)V
    .locals 0

    .line 19906
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ks;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/92;->A00(Lcom/facebook/ads/redexgen/X/Ks;)V

    return-void
.end method
