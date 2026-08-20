.class Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;
.super Lorg/apache/mina/common/ByteBuffer;
.source "ByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/common/ByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultByteBuffer"
.end annotation


# instance fields
.field private autoExpand:Z

.field private buf:Ljava/nio/ByteBuffer;

.field private refCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 531
    invoke-direct {p0}, Lorg/apache/mina/common/ByteBuffer;-><init>()V

    const/4 v0, 0x1

    .line 527
    iput v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->init(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private autoExpand(I)V
    .locals 2

    .line 1397
    iget-boolean v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand:Z

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1400
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, p1

    if-le v0, v1, :cond_0

    .line 1403
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->ensureCapacity(I)V

    .line 1404
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private autoExpand(II)V
    .locals 1

    .line 1411
    iget-boolean v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand:Z

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/2addr p1, p2

    if-le p1, v0, :cond_0

    .line 1416
    invoke-direct {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->ensureCapacity(I)V

    .line 1417
    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private static checkFieldSize(I)V
    .locals 3

    if-ltz p0, :cond_0

    return-void

    .line 1454
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "fieldSize cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 4

    .line 1424
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 1436
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1439
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1441
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1442
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 1443
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1444
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1445
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1446
    iput-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    .line 1447
    invoke-static {p1}, Lorg/apache/mina/common/ByteBuffer;->access$100(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private declared-synchronized init(Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    .line 536
    :try_start_0
    iput-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 537
    iput-boolean p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand:Z

    const/4 p1, 0x1

    .line 538
    iput p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 2

    monitor-enter p0

    .line 543
    :try_start_0
    iget v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 548
    iput v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 545
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 948
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .line 890
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    .line 919
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 851
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public buf()Ljava/nio/ByteBuffer;
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 604
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public compact()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 747
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public compareTo(Lorg/apache/mina/common/ByteBuffer;)I
    .locals 1

    .line 772
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 763
    instance-of v0, p1, Lorg/apache/mina/common/ByteBuffer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 766
    :cond_0
    check-cast p1, Lorg/apache/mina/common/ByteBuffer;

    .line 767
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fill(BI)Lorg/apache/mina/common/ByteBuffer;
    .locals 6

    .line 1284
    invoke-direct {p0, p2}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    ushr-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, p2, 0x7

    if-lez v0, :cond_0

    shl-int/lit8 v2, p1, 0x8

    or-int/2addr v2, p1

    shl-int/lit8 v3, p1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x18

    or-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v4, v2, v4

    or-long/2addr v2, v4

    :goto_0
    if-lez v0, :cond_0

    .line 1298
    iget-object v4, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x2

    and-int/lit8 v1, p2, 0x3

    if-lez v0, :cond_1

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p1

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v0, v2

    .line 1309
    iget-object v2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    and-int/lit8 p2, p2, 0x1

    if-lez v0, :cond_2

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p1

    int-to-short v0, v0

    .line 1318
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_2
    if-lez p2, :cond_3

    .line 1323
    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_3
    return-object p0
.end method

.method public fill(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 5

    .line 1346
    invoke-direct {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    :goto_0
    if-lez v0, :cond_0

    .line 1352
    iget-object v2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x2

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1360
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_1
    shr-int/lit8 v0, v1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-lez v0, :cond_2

    .line 1368
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_2
    if-lez p1, :cond_3

    .line 1373
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_3
    return-object p0
.end method

.method public fillAndReset(BI)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 1331
    invoke-direct {p0, p2}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 1332
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1335
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->fill(BI)Lorg/apache/mina/common/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1340
    throw p1
.end method

.method public fillAndReset(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 2

    .line 1381
    invoke-direct {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 1382
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1385
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->fill(I)Lorg/apache/mina/common/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1390
    throw p1
.end method

.method public flip()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method public get()B
    .locals 1

    .line 673
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public get(I)B
    .locals 1

    .line 690
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public get([B)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public get([BII)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getChar()C
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public getChar(I)C
    .locals 1

    .line 800
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    return p1
.end method

.method public getDouble()D
    .locals 2

    .line 953
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 965
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 936
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getHexDump()Ljava/lang/String;
    .locals 1

    .line 982
    invoke-static {p0}, Lorg/apache/mina/common/ByteBufferHexDumper;->getHexdump(Lorg/apache/mina/common/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt()I
    .locals 1

    .line 856
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .line 873
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong()J
    .locals 2

    .line 895
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2

    .line 907
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .line 817
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    .line 834
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(ILjava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1075
    invoke-static {p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->checkFieldSize(I)V

    if-nez p1, :cond_0

    .line 1079
    const-string p1, ""

    return-object p1

    .line 1082
    :cond_0
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1086
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldSize is not even."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1090
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1091
    iget-object v2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1092
    iget-object v3, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p1

    if-lt v2, v3, :cond_d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_6

    :goto_1
    if-ge v4, p1, :cond_4

    .line 1103
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v4, p1, :cond_5

    .line 1111
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 1115
    :cond_5
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_5

    :cond_6
    :goto_3
    if-ge v4, p1, :cond_8

    .line 1122
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_8
    :goto_4
    if-ne v4, p1, :cond_9

    .line 1130
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 1134
    :cond_9
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1138
    :goto_5
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1139
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1141
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1142
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1146
    :goto_6
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1148
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1, v0, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_7

    .line 1152
    :cond_a
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 1155
    :goto_7
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1172
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1173
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1174
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1160
    :cond_b
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1162
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1163
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1164
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v0, v1

    goto :goto_6

    .line 1169
    :cond_c
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_6

    .line 1096
    :cond_d
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1
.end method

.method public getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 987
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 989
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 990
    iget-object v2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-nez v0, :cond_3

    .line 995
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1006
    iget-object v3, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 1010
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 1015
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    .line 1017
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_3

    .line 1023
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eq v0, v2, :cond_6

    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_5

    goto :goto_0

    .line 1030
    :cond_5
    iget-object v3, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 1026
    :cond_6
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1034
    :goto_1
    iget-object v3, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1035
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1037
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 1038
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 1042
    :goto_2
    iget-object v4, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1044
    iget-object v4, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    goto :goto_3

    .line 1048
    :cond_7
    invoke-virtual {p1, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 1051
    :goto_3
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1068
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1069
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1070
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1056
    :cond_8
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1058
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1059
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1060
    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v3, v4

    goto :goto_2

    .line 1065
    :cond_9
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_2
.end method

.method public getUnsigned()S
    .locals 1

    .line 678
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsigned(I)S
    .locals 0

    .line 695
    invoke-virtual {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method

.method public getUnsignedInt()J
    .locals 4

    .line 861
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedInt(I)J
    .locals 4

    .line 878
    invoke-virtual {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedShort()I
    .locals 2

    .line 822
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 839
    invoke-virtual {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public hasRemaining()Z
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoExpand()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand:Z

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public limit()I
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 627
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public mark()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public position()I
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 615
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public put(B)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 683
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 684
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(IB)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 700
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 701
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(Ljava/nio/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 719
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 720
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put(Lorg/apache/mina/common/ByteBuffer;)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 726
    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 727
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([B)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 740
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 741
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public put([BII)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 733
    invoke-direct {p0, p3}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 734
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putChar(C)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 793
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 794
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putChar(IC)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 805
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 806
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putDouble(D)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 958
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 959
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putDouble(ID)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 970
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 971
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putFloat(F)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 929
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 930
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putFloat(IF)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 941
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 942
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 866
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 867
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putInt(II)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x4

    .line 883
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 884
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(IJ)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 912
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 913
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putLong(J)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/16 v0, 0x8

    .line 900
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 901
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(IS)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 844
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(II)V

    .line 845
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putShort(S)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    const/4 v0, 0x2

    .line 827
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 828
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1180
    invoke-static {p2}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->checkFieldSize(I)V

    if-nez p2, :cond_0

    return-object p0

    .line 1185
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 1187
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 1188
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1192
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldSize is not even."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1195
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1196
    iget-object v2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_8

    .line 1203
    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1204
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1208
    :goto_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1210
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v3, 0x1

    invoke-virtual {p3, p1, p2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_2

    .line 1214
    :cond_3
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    .line 1217
    :goto_2
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 1221
    :cond_4
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    .line 1224
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1226
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-ge p1, v2, :cond_7

    const/4 p1, 0x0

    if-nez v0, :cond_6

    .line 1230
    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 1234
    :cond_6
    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1235
    iget-object p2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1239
    :cond_7
    :goto_4
    iget-object p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0

    .line 1200
    :cond_8
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/common/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1246
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 1247
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1249
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1253
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 1262
    :goto_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    .line 1266
    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand:Z

    if-eqz v2, :cond_2

    .line 1268
    invoke-direct {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    goto :goto_0

    .line 1271
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .line 553
    monitor-enter p0

    .line 555
    :try_start_0
    iget v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 562
    iput v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I

    if-lez v0, :cond_0

    .line 565
    monitor-exit p0

    return-void

    .line 567
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 569
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/mina/common/ByteBuffer;->access$100(Ljava/nio/ByteBuffer;)V

    .line 570
    invoke-static {}, Lorg/apache/mina/common/ByteBuffer;->access$200()Lorg/apache/mina/util/Stack;

    move-result-object v0

    monitor-enter v0

    .line 572
    :try_start_1
    invoke-static {}, Lorg/apache/mina/common/ByteBuffer;->access$200()Lorg/apache/mina/util/Stack;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/mina/util/Stack;->push(Ljava/lang/Object;)V

    .line 573
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 557
    :try_start_2
    iput v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->refCount:I

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released buffer.  You released the buffer too many times."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 567
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public remaining()I
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public reset()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object p0
.end method

.method public rewind()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0
.end method

.method public setAutoExpand(Z)Lorg/apache/mina/common/ByteBuffer;
    .locals 0

    .line 598
    iput-boolean p1, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand:Z

    return-object p0
.end method

.method public skip(I)Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 1278
    invoke-direct {p0, p1}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->autoExpand(I)V

    .line 1279
    invoke-virtual {p0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->position(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/apache/mina/common/ByteBuffer$DefaultByteBuffer;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
