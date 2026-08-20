.class public final Lcom/facebook/ads/redexgen/X/Wh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AE;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Ljava/nio/ByteBuffer;

.field public A07:Ljava/nio/ByteBuffer;

.field public A08:Z

.field public A09:Z

.field public A0A:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64258
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    .line 64259
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A07:Ljava/nio/ByteBuffer;

    .line 64260
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A00:I

    .line 64261
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:I

    .line 64262
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    .line 64263
    return-void
.end method


# virtual methods
.method public final A00(II)V
    .locals 0

    .line 64264
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A05:I

    .line 64265
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wh;->A04:I

    .line 64266
    return-void
.end method

.method public final A4A(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 64267
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 64268
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wh;->A00:I

    .line 64269
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:I

    .line 64270
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Wh;->A04:I

    mul-int v0, v4, p2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    .line 64271
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    .line 64272
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wh;->A05:I

    mul-int v0, v2, p2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:I

    .line 64273
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A09:Z

    .line 64274
    .local v0, "wasActive":Z
    if-nez v2, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A09:Z

    .line 64275
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A09:Z

    if-eq v1, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 64276
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 64277
    .end local v0    # "wasActive":Z
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AD;-><init>(III)V

    throw v0
.end method

.method public final A7D()Ljava/nio/ByteBuffer;
    .locals 2

    .line 64278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A07:Ljava/nio/ByteBuffer;

    .line 64279
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A07:Ljava/nio/ByteBuffer;

    .line 64280
    return-object v1
.end method

.method public final A7E()I
    .locals 1

    .line 64281
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A00:I

    return v0
.end method

.method public final A7F()I
    .locals 1

    .line 64282
    const/4 v0, 0x2

    return v0
.end method

.method public final A7G()I
    .locals 1

    .line 64283
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:I

    return v0
.end method

.method public final A8c()Z
    .locals 1

    .line 64284
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A09:Z

    return v0
.end method

.method public final A8h()Z
    .locals 2

    .line 64285
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A08:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A07:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADm()V
    .locals 1

    .line 64286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A08:Z

    .line 64287
    return-void
.end method

.method public final ADn(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 64288
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 64289
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 64290
    .local v1, "limit":I
    sub-int v3, v5, v2

    .line 64291
    .local v2, "remaining":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64292
    .local v3, "trimBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:I

    .line 64293
    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64294
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:I

    if-lez v0, :cond_0

    .line 64295
    return-void

    .line 64296
    :cond_0
    sub-int/2addr v3, v1

    .line 64297
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    add-int/2addr v6, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    array-length v0, v0

    sub-int/2addr v6, v0

    .line 64298
    .local v4, "remainingBytesToOutput":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 64299
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    .line 64300
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    const/4 v4, 0x0

    invoke-static {v6, v4, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v2

    .line 64301
    .local v5, "endBufferBytesToOutput":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 64302
    sub-int/2addr v6, v2

    .line 64303
    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Hs;->A06(III)I

    move-result v1

    .line 64304
    .local p0, "inputBufferBytesToOutput":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 64306
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64307
    sub-int/2addr v3, v1

    .line 64308
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    .line 64309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    invoke-static {v1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64310
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    invoke-virtual {p1, v1, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 64311
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    .line 64312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A07:Ljava/nio/ByteBuffer;

    .line 64314
    return-void

    .line 64315
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 64316
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A07:Ljava/nio/ByteBuffer;

    .line 64317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A08:Z

    .line 64318
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A02:I

    .line 64319
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A01:I

    .line 64320
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 64321
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wh;->flush()V

    .line 64322
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A06:Ljava/nio/ByteBuffer;

    .line 64323
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A00:I

    .line 64324
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A03:I

    .line 64325
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wh;->A0A:[B

    .line 64326
    return-void
.end method
