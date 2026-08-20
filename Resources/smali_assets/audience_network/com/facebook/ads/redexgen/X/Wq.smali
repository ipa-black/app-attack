.class public final Lcom/facebook/ads/redexgen/X/Wq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AE;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public A05:Z

.field public A06:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65267
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    .line 65268
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/nio/ByteBuffer;

    .line 65269
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    .line 65270
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:I

    .line 65271
    return-void
.end method


# virtual methods
.method public final A00([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65272
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A07:[I

    .line 65273
    return-void
.end method

.method public final A4A(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 65274
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A07:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 65275
    .local v0, "outputChannelsChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A07:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    .line 65276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65277
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Z

    .line 65278
    return v2

    .line 65279
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    .line 65280
    if-nez v2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    if-ne v0, p2, :cond_1

    .line 65281
    return v1

    .line 65282
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:I

    .line 65283
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    .line 65284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    array-length v0, v0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Z

    .line 65285
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    array-length v0, v1

    if-ge v2, v0, :cond_5

    .line 65286
    aget v0, v1, v2

    .line 65287
    .local p0, "channelIndex":I
    if-ge v0, p2, :cond_4

    .line 65288
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Z

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Z

    .line 65289
    .end local p0    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65290
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 65291
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 65292
    .restart local p0    # "channelIndex":I
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AD;-><init>(III)V

    throw v0

    .line 65293
    .end local v2    # "i":I
    .end local p0    # "channelIndex":I
    :cond_5
    return v3

    .line 65294
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AD;-><init>(III)V

    throw v0
.end method

.method public final A7D()Ljava/nio/ByteBuffer;
    .locals 2

    .line 65295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/nio/ByteBuffer;

    .line 65296
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/nio/ByteBuffer;

    .line 65297
    return-object v1
.end method

.method public final A7E()I
    .locals 1

    .line 65298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public final A7F()I
    .locals 1

    .line 65299
    const/4 v0, 0x2

    return v0
.end method

.method public final A7G()I
    .locals 1

    .line 65300
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:I

    return v0
.end method

.method public final A8c()Z
    .locals 1

    .line 65301
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Z

    return v0
.end method

.method public final A8h()Z
    .locals 2

    .line 65302
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A05:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/nio/ByteBuffer;

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

    .line 65303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A05:Z

    .line 65304
    return-void
.end method

.method public final ADn(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 65305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 65306
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 65307
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 65308
    .local v2, "limit":I
    sub-int v1, v5, v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    .line 65309
    .local v3, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    array-length v0, v0

    mul-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x2

    .line 65310
    .local v4, "outputSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 65311
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    .line 65312
    :goto_1
    if-ge v6, v5, :cond_3

    .line 65313
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    array-length v3, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget v0, v4, v2

    .line 65314
    .local p1, "channelIndex":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 65315
    .end local p1    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65316
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    goto :goto_1

    .line 65317
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 65318
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 65319
    :cond_3
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 65321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/nio/ByteBuffer;

    .line 65322
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 65323
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A03:Ljava/nio/ByteBuffer;

    .line 65324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A05:Z

    .line 65325
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 65326
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wq;->flush()V

    .line 65327
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A02:Ljava/nio/ByteBuffer;

    .line 65328
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A00:I

    .line 65329
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A01:I

    .line 65330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A06:[I

    .line 65331
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A07:[I

    .line 65332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wq;->A04:Z

    .line 65333
    return-void
.end method
