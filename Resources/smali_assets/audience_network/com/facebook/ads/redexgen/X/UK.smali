.class public final Lcom/facebook/ads/redexgen/X/UK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/bC<",
        "Lcom/facebook/ads/redexgen/X/IQ;",
        "Lcom/facebook/ads/redexgen/X/IV;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UH;)V
    .locals 0

    .line 56717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56718
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/UH;

    .line 56719
    return-void
.end method


# virtual methods
.method public final A5L(Lcom/facebook/ads/redexgen/X/b9;Lcom/facebook/ads/redexgen/X/ay;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/b9<",
            "Lcom/facebook/ads/redexgen/X/IQ;",
            "Lcom/facebook/ads/redexgen/X/IV;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/ay;",
            ")V"
        }
    .end annotation

    .line 56720
    .local p1, "viewpointData":Lcom/facebook/ads/redexgen/X/b9;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/IO;->A00:[I

    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/ay;->A81(Lcom/facebook/ads/redexgen/X/b9;)Lcom/facebook/ads/redexgen/X/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/az;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 56721
    :goto_0
    return-void

    .line 56722
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/UH;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UH;->A02(Lcom/facebook/ads/redexgen/X/b9;Lcom/facebook/ads/redexgen/X/ay;)V

    .line 56723
    goto :goto_0
.end method
