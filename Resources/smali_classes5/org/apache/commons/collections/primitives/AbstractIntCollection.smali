.class public abstract Lorg/apache/commons/collections/primitives/AbstractIntCollection;
.super Ljava/lang/Object;
.source "AbstractIntCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/IntCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 1

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add(int) is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 2

    .line 47
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->add(I)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    .line 56
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 1

    .line 70
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract iterator()Lorg/apache/commons/collections/primitives/IntIterator;
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 2

    .line 94
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->removeElement(I)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public removeElement(I)Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 85
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 3

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/primitives/IntCollection;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public abstract size()I
.end method

.method public toArray()[I
    .locals 4

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([I)[I
    .locals 3

    .line 122
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->toArray()[I

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/AbstractIntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntIterator;->next()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
