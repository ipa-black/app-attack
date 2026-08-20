.class public Lorg/apache/commons/collections/primitives/ArrayBooleanList;
.super Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;
.source "ArrayBooleanList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/BooleanList;
.implements Ljava/io/Serializable;


# instance fields
.field private transient _data:[Z

.field private _size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 41
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    if-ltz p1, :cond_0

    .line 53
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    .line 54
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    return-void

    .line 51
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

.method public constructor <init>(Lorg/apache/commons/collections/primitives/BooleanCollection;)V
    .locals 1

    .line 67
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;-><init>(I)V

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->addAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z

    return-void
.end method

.method private final checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 208
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Should be at least 0 and less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

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

    .line 216
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    if-gt p1, v0, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Should be at least 0 and at most "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

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

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    const/4 v0, 0x0

    .line 202
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    aput-boolean v2, v1, v0

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

    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 193
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    .line 194
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(IZ)V
    .locals 3

    .line 143
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->checkRangeIncludingEndpoint(I)V

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->incrModCount()V

    .line 145
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->ensureCapacity(I)V

    .line 146
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    sub-int/2addr v0, p1

    .line 147
    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    aput-boolean p2, v0, p1

    .line 149
    iget p1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->incrModCount()V

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->incrModCount()V

    .line 167
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 168
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 170
    :goto_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    .line 171
    iget v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public get(I)Z
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->checkRange(I)V

    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public removeElementAt(I)Z
    .locals 4

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->checkRange(I)V

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->incrModCount()V

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    aget-boolean v1, v0, p1

    .line 99
    iget v2, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 101
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_0
    iget p1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    return v1
.end method

.method public set(IZ)Z
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->checkRange(I)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->incrModCount()V

    .line 122
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    aget-boolean v1, v0, p1

    .line 123
    aput-boolean p2, v0, p1

    return v1
.end method

.method public size()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    return v0
.end method

.method public trimToSize()V
    .locals 4

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->incrModCount()V

    .line 181
    iget v0, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_size:I

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 183
    new-array v2, v0, [Z

    iput-object v2, p0, Lorg/apache/commons/collections/primitives/ArrayBooleanList;->_data:[Z

    const/4 v3, 0x0

    .line 184
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method
