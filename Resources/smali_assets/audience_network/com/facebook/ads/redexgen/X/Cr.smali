.class public final Lcom/facebook/ads/redexgen/X/Cr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 26665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26666
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cr;->A00:I

    .line 26667
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Cr;->A01:J

    .line 26668
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Cr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26669
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-interface {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 26670
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 26671
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result p0

    .line 26672
    .local v0, "id":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0K()J

    move-result-wide v1

    .line 26673
    .local v1, "size":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cr;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/Cr;-><init>(IJ)V

    return-object v0
.end method
