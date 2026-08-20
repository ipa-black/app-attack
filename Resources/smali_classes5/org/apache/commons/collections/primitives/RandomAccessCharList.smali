.class public abstract Lorg/apache/commons/collections/primitives/RandomAccessCharList;
.super Lorg/apache/commons/collections/primitives/AbstractCharCollection;
.source "RandomAccessCharList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;,
        Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;,
        Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;
    }
.end annotation


# instance fields
.field private _modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/AbstractCharCollection;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->_modCount:I

    return-void
.end method


# virtual methods
.method public add(IC)V
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(C)Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->add(IC)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/CharCollection;)Z
    .locals 3

    .line 92
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/CharCollection;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 93
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->add(IC)V

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
    instance-of v1, p1, Lorg/apache/commons/collections/primitives/CharList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 140
    check-cast p1, Lorg/apache/commons/collections/primitives/CharList;

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/CharList;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 144
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/CharList;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public abstract get(I)C
.end method

.method protected getModCount()I
    .locals 1

    .line 173
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->_modCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 157
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected incrModCount()V
    .locals 1

    .line 178
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->_modCount:I

    return-void
.end method

.method public indexOf(C)I
    .locals 3

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

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

.method public iterator()Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->listIterator()Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(C)I
    .locals 2

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->listIterator(I)Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharListIterator;->previous()C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->listIterator(I)Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 1

    .line 129
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;I)V

    return-object v0
.end method

.method public removeElementAt(I)C
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(IC)C
    .locals 0

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract size()I
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    .line 133
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->toArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
