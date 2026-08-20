.class public Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;
.super Lorg/apache/commons/collections/primitives/RandomAccessLongList;
.source "ArrayUnsignedIntList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongList;
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_VALUE:J = 0xffffffffL

.field public static final MIN_VALUE:J


# instance fields
.field private transient _data:[I

.field private _size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 51
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 59
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    if-ltz p1, :cond_0

    .line 63
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    .line 64
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "capacity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/collections/primitives/LongCollection;)V
    .locals 1

    .line 77
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/LongCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;-><init>(I)V

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->addAll(Lorg/apache/commons/collections/primitives/LongCollection;)Z

    return-void
.end method

.method private final assertValidUnsignedInt(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " < 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " > 4294967295"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 255
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Should be at least 0 and less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkRangeIncludingEndpoint(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 261
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    if-gt p1, v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Should be at least 0 and at most "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final fromLong(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 248
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final toLong(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    .line 241
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(IJ)V
    .locals 3

    .line 172
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->assertValidUnsignedInt(J)V

    .line 173
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->checkRangeIncludingEndpoint(I)V

    .line 174
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->incrModCount()V

    .line 175
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->ensureCapacity(I)V

    .line 176
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    sub-int/2addr v0, p1

    .line 177
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->fromLong(J)I

    move-result p2

    aput p2, v0, p1

    .line 179
    iget p1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->incrModCount()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->incrModCount()V

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 198
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 200
    :goto_0
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    .line 201
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public get(I)J
    .locals 2

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->checkRange(I)V

    .line 96
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    aget p1, v0, p1

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeElementAt(I)J
    .locals 5

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->checkRange(I)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->incrModCount()V

    .line 121
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->toLong(I)J

    move-result-wide v0

    .line 122
    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    .line 124
    iget-object v3, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_0
    iget p1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    return-wide v0
.end method

.method public set(IJ)J
    .locals 3

    .line 146
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->assertValidUnsignedInt(J)V

    .line 147
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->checkRange(I)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->incrModCount()V

    .line 149
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->toLong(I)J

    move-result-wide v0

    .line 150
    iget-object v2, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->fromLong(J)I

    move-result p2

    aput p2, v2, p1

    return-wide v0
.end method

.method public size()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    return v0
.end method

.method public trimToSize()V
    .locals 4

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->incrModCount()V

    .line 211
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_size:I

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 213
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/apache/commons/collections/primitives/ArrayUnsignedIntList;->_data:[I

    const/4 v3, 0x0

    .line 214
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
