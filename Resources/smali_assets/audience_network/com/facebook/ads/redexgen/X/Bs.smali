.class public final Lcom/facebook/ads/redexgen/X/Bs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Z

.field public final A05:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24252
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:[B

    .line 24253
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 24254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:Z

    .line 24255
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/BW;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24256
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 24257
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 24258
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 24259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A05:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A3;->A06([B)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 24260
    return-void

    .line 24261
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:Z

    .line 24262
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    .line 24263
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    if-nez v0, :cond_2

    .line 24264
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:I

    .line 24265
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:I

    .line 24266
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:I

    .line 24267
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Br;)V
    .locals 7

    .line 24268
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    if-lez v0, :cond_0

    .line 24269
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Br;->A0W:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Br;->A0V:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 24270
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    .line 24271
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Br;J)V
    .locals 7

    .line 24272
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A04:Z

    if-nez v0, :cond_0

    .line 24273
    return-void

    .line 24274
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    if-nez v1, :cond_1

    .line 24275
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Bs;->A03:J

    .line 24276
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_2

    .line 24277
    return-void

    .line 24278
    :cond_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Br;->A0W:Lcom/facebook/ads/redexgen/X/Bh;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Bs;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Bs;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Bs;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Br;->A0V:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 24279
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bs;->A02:I

    .line 24280
    return-void
.end method
