.class public final Lcom/facebook/ads/redexgen/X/UZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GX;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/GX;

.field public final A02:Lcom/facebook/ads/redexgen/X/Hg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/Hg;I)V
    .locals 1

    .line 57480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57481
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A01:Lcom/facebook/ads/redexgen/X/GX;

    .line 57482
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hg;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    .line 57483
    iput p3, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:I

    .line 57484
    return-void
.end method


# virtual methods
.method public final A7w()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 57485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A01:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->A7w()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ADF(Lcom/facebook/ads/redexgen/X/Gb;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UZ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A02(I)V

    .line 57487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A01:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GX;->ADF(Lcom/facebook/ads/redexgen/X/Gb;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A01:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->close()V

    .line 57489
    return-void
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UZ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A02(I)V

    .line 57491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A01:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GX;->read([BII)I

    move-result v0

    return v0
.end method
