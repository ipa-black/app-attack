.class abstract Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;
.super Ljava/lang/Object;
.source "AbstractShortCollectionCollection.java"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->add(S)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionShortCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->addAll(Lorg/apache/commons/collections/primitives/ShortCollection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortCollection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->contains(S)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionShortCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->containsAll(Lorg/apache/commons/collections/primitives/ShortCollection;)Z

    move-result p1

    return p1
.end method

.method protected abstract getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;
.end method

.method public isEmpty()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortCollection;->iterator()Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/adapters/ShortIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->removeElement(S)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionShortCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->removeAll(Lorg/apache/commons/collections/primitives/ShortCollection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionShortCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortCollection;->retainAll(Lorg/apache/commons/collections/primitives/ShortCollection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortCollection;->toArray()[S

    move-result-object v0

    .line 89
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 90
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 91
    new-instance v3, Ljava/lang/Short;

    aget-short v4, v0, v2

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortCollection;->toArray()[S

    move-result-object v0

    .line 98
    array-length v1, p1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 102
    new-instance v2, Ljava/lang/Short;

    aget-short v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_2

    .line 105
    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;->getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
