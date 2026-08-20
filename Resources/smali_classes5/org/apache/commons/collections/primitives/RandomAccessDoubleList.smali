.class public abstract Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;
.super Lorg/apache/commons/collections/primitives/AbstractDoubleCollection;
.source "RandomAccessDoubleList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/DoubleList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleSubList;,
        Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;,
        Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$ComodChecker;
    }
.end annotation


# instance fields
.field private _modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/AbstractDoubleCollection;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->_modCount:I

    return-void
.end method


# virtual methods
.method public add(ID)V
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(D)Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->add(ID)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/DoubleCollection;)Z
    .locals 4

    .line 92
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/DoubleCollection;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/DoubleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 93
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/DoubleIterator;->next()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->add(ID)V

    const/4 p1, 0x1

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 139
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/primitives/DoubleList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 140
    check-cast p1, Lorg/apache/commons/collections/primitives/DoubleList;

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/DoubleList;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 144
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/DoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/DoubleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/DoubleIterator;->next()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/DoubleIterator;->next()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public abstract get(I)D
.end method

.method protected getModCount()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->_modCount:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleIterator;->next()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected incrModCount()V
    .locals 1

    .line 187
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->_modCount:I

    return-void
.end method

.method public indexOf(D)I
    .locals 4

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleIterator;->next()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(D)I
    .locals 3

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleListIterator;->previous()D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    .line 129
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;I)V

    return-object v0
.end method

.method public removeElementAt(I)D
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(ID)D
    .locals 0

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract size()I
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    .line 133
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleSubList;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->iterator()Lorg/apache/commons/collections/primitives/DoubleIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/DoubleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/DoubleIterator;->next()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 169
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/DoubleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 173
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
