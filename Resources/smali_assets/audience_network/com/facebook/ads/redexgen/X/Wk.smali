.class public final Lcom/facebook/ads/redexgen/X/Wk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AE;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Ljava/nio/ByteBuffer;

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 64570
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LkLK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "abA9PNMrvscgwbqokpbH2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wszIi3vfQywtet5OFqyTWUvoUYNS5ktb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "liexkOjxlVrdDutCVl0EvpIg3k3OXdWT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uDjcyehsvUvWAc8oFKsUcicvrdYrbu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Yx0xuqb7ConKzBOp6wI44fmqMUTcgjwu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2AEFdY1ASteFDfy1ihWDcuoiihyMOIox"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2HHuLOzdt0KrTaQRoJg3USXKVGpaMcoz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64572
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:I

    .line 64573
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:I

    .line 64574
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    .line 64575
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    .line 64576
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/nio/ByteBuffer;

    .line 64577
    return-void
.end method


# virtual methods
.method public final A4A(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 64578
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p3, v0, :cond_3

    .line 64579
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    if-ne v0, p3, :cond_2

    .line 64580
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const-string v1, "26RCfMYW5Do9ItFOuFHGepjFl0G7YQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64581
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:I

    .line 64582
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:I

    .line 64583
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    .line 64584
    const/4 v0, 0x1

    return v0

    .line 64585
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/AD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AD;-><init>(III)V

    throw v0
.end method

.method public final A7D()Ljava/nio/ByteBuffer;
    .locals 2

    .line 64586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/nio/ByteBuffer;

    .line 64587
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/nio/ByteBuffer;

    .line 64588
    return-object v1
.end method

.method public final A7E()I
    .locals 1

    .line 64589
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:I

    return v0
.end method

.method public final A7F()I
    .locals 1

    .line 64590
    const/4 v0, 0x2

    return v0
.end method

.method public final A7G()I
    .locals 1

    .line 64591
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:I

    return v0
.end method

.method public final A8c()Z
    .locals 2

    .line 64592
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A8h()Z
    .locals 2

    .line 64593
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A05:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/nio/ByteBuffer;

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

    .line 64594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A05:Z

    .line 64595
    return-void
.end method

.method public final ADn(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 64596
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 64597
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 64598
    .local v1, "limit":I
    sub-int v1, v3, v4

    .line 64599
    .local v2, "size":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/4 v5, 0x3

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v7, :cond_9

    .line 64600
    div-int/lit8 v1, v1, 0x2

    .line 64601
    .local v3, "resampledSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 64602
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    .line 64603
    :goto_1
    iget v8, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const-string v1, "hXv0xOe0fZxBP6BjMdwou1g9whaCh4Nv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rvzJSg8TnEJLrC3bKKMSDNtobyDED6VD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v8, v6, :cond_5

    if-eq v8, v5, :cond_4

    if-ne v8, v7, :cond_3

    .line 64604
    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_7

    .line 64605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v4, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v4, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64607
    add-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 64608
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 64609
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    .line 64610
    .restart local v3    # "resampledSize":I
    goto :goto_0

    .line 64611
    .end local v3    # "resampledSize":I
    :cond_2
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v1, v0, 0x2

    .line 64612
    .restart local v3    # "resampledSize":I
    goto :goto_0

    .line 64613
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64614
    .restart local v4    # "i":I
    :cond_4
    :goto_3
    if-ge v4, v3, :cond_7

    .line 64615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64617
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 64618
    .restart local v4    # "i":I
    :cond_5
    :goto_4
    if-ge v4, v3, :cond_7

    .line 64619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v4, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_6

    .line 64621
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const-string v1, "E4BL66fjyhULGxaexfiDPz3mapJFS3cG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "yfO0gWrxajAAEFBsdSj1hVUV9LiurAH3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wk;->A06:[Ljava/lang/String;

    const-string v1, "LF6WYMkflBQ3SrZEsSHTSTVRB3dg3WPN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v4, v4, 0x3

    goto :goto_4

    .line 64622
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 64624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/nio/ByteBuffer;

    .line 64625
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64626
    .end local v3    # "resampledSize":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final flush()V
    .locals 1

    .line 64627
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Ljava/nio/ByteBuffer;

    .line 64628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A05:Z

    .line 64629
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 64630
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wk;->flush()V

    .line 64631
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A02:I

    .line 64632
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A00:I

    .line 64633
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A01:I

    .line 64634
    sget-object v0, Lcom/facebook/ads/redexgen/X/AE;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Ljava/nio/ByteBuffer;

    .line 64635
    return-void
.end method
