.class public abstract Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;
.super Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;
.source "RandomAccessBooleanList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/BooleanList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;,
        Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanListIterator;,
        Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;
    }
.end annotation


# instance fields
.field private _modCount:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/AbstractBooleanCollection;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->_modCount:I

    return-void
.end method


# virtual methods
.method public add(IZ)V
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Z)Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->add(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 3

    .line 89
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/BooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 90
    invoke-interface {p2}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->add(IZ)V

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

    .line 136
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/primitives/BooleanList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 137
    check-cast p1, Lorg/apache/commons/collections/primitives/BooleanList;

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanList;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 141
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public abstract get(I)Z
.end method

.method protected getModCount()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->_modCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_0
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected incrModCount()V
    .locals 1

    .line 184
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->_modCount:I

    return-void
.end method

.method public indexOf(Z)I
    .locals 3

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

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

.method public iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->listIterator()Lorg/apache/commons/collections/primitives/BooleanListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Z)I
    .locals 2

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->listIterator(I)Lorg/apache/commons/collections/primitives/BooleanListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanListIterator;->previous()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/BooleanListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->listIterator(I)Lorg/apache/commons/collections/primitives/BooleanListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/BooleanListIterator;
    .locals 1

    .line 126
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanListIterator;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;I)V

    return-object v0
.end method

.method public removeElementAt(I)Z
    .locals 0

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(IZ)Z
    .locals 0

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract size()I
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/BooleanList;
    .locals 1

    .line 130
    new-instance v0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 166
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 170
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
