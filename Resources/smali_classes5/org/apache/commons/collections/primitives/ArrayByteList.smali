.class public Lorg/apache/commons/collections/primitives/ArrayByteList;
.super Lorg/apache/commons/collections/primitives/RandomAccessByteList;
.source "ArrayByteList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteList;
.implements Ljava/io/Serializable;


# instance fields
.field private transient _data:[B

.field private _size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 42
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayByteList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    if-ltz p1, :cond_0

    .line 54
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    .line 55
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    return-void

    .line 52
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

.method public constructor <init>(Lorg/apache/commons/collections/primitives/ByteCollection;)V
    .locals 1

    .line 68
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayByteList;-><init>(I)V

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayByteList;->addAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z

    return-void
.end method

.method private final checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 211
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Should be at least 0 and less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

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

    .line 217
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    if-gt p1, v0, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Should be at least 0 and at most "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    const/4 v0, 0x0

    .line 205
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 196
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    .line 197
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(IB)V
    .locals 3

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayByteList;->checkRangeIncludingEndpoint(I)V

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->incrModCount()V

    .line 148
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->ensureCapacity(I)V

    .line 149
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    sub-int/2addr v0, p1

    .line 150
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    aput-byte p2, v0, p1

    .line 152
    iget p1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->incrModCount()V

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->incrModCount()V

    .line 170
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 171
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 173
    :goto_0
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    .line 174
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public get(I)B
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayByteList;->checkRange(I)V

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public removeElementAt(I)B
    .locals 4

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayByteList;->checkRange(I)V

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->incrModCount()V

    .line 100
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    aget-byte v1, v0, p1

    .line 101
    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 103
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_0
    iget p1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    return v1
.end method

.method public set(IB)B
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayByteList;->checkRange(I)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->incrModCount()V

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    aget-byte v1, v0, p1

    .line 126
    aput-byte p2, v0, p1

    return v1
.end method

.method public size()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    return v0
.end method

.method public trimToSize()V
    .locals 4

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayByteList;->incrModCount()V

    .line 184
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_size:I

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 186
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/commons/collections/primitives/ArrayByteList;->_data:[B

    const/4 v3, 0x0

    .line 187
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
