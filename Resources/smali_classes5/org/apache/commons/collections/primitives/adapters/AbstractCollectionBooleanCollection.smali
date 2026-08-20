.class abstract Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;
.super Ljava/lang/Object;
.source "AbstractCollectionBooleanCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/BooleanCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Z)Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/BooleanCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Z)Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/BooleanCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected abstract getCollection()Ljava/util/Collection;
.end method

.method public isEmpty()Z
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/adapters/IteratorBooleanIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/BooleanCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeElement(Z)Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/BooleanCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Z
    .locals 4

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 90
    array-length v1, v0

    new-array v1, v1, [Z

    const/4 v2, 0x0

    .line 91
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 92
    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArray([Z)[Z
    .locals 3

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 99
    array-length v1, p1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 100
    array-length p1, v0

    new-array p1, p1, [Z

    :cond_0
    const/4 v1, 0x0

    .line 102
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 103
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
