.class public final Lcom/facebook/ads/redexgen/X/WW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 0

    .line 63655
    return-void
.end method

.method public final AEW(Lcom/facebook/ads/redexgen/X/BW;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63656
    invoke-interface {p1, p2}, Lcom/facebook/ads/redexgen/X/BW;->AFG(I)I

    move-result v1

    .line 63657
    .local v0, "bytesSkipped":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 63658
    if-eqz p3, :cond_0

    .line 63659
    return v0

    .line 63660
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 63661
    :cond_1
    return v1
.end method

.method public final AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V
    .locals 0

    .line 63662
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 63663
    return-void
.end method

.method public final AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V
    .locals 0

    .line 63664
    return-void
.end method
