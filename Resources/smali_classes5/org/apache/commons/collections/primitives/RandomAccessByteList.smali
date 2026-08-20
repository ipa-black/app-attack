.class public abstract Lorg/apache/commons/collections/primitives/RandomAccessByteList;
.super Lorg/apache/commons/collections/primitives/AbstractByteCollection;
.source "RandomAccessByteList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteSubList;,
        Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;,
        Lorg/apache/commons/collections/primitives/RandomAccessByteList$ComodChecker;
    }
.end annotation


# instance fields
.field private _modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/AbstractByteCollection;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->_modCount:I

    return-void
.end method


# virtual methods
.method public add(IB)V
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(B)Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->add(IB)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 3

    .line 92
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/ByteCollection;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 93
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->add(IB)V

    const/4 p1, 0x1

    move v2, v0

    move v0, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 139
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/primitives/ByteList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 140
    check-cast p1, Lorg/apache/commons/collections/primitives/ByteList;

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/ByteList;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 144
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/ByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public abstract get(I)B
.end method

.method protected getModCount()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->_modCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected incrModCount()V
    .locals 1

    .line 186
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->_modCount:I

    return-void
.end method

.method public indexOf(B)I
    .locals 3

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->listIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(B)I
    .locals 2

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->listIterator(I)Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->previous()B

    move-result v1

    if-ne v1, p1, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->listIterator(I)Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    .line 129
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessByteList;I)V

    return-object v0
.end method

.method public removeElementAt(I)B
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(IB)B
    .locals 0

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract size()I
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    .line 133
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteSubList;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessByteList;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 172
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
