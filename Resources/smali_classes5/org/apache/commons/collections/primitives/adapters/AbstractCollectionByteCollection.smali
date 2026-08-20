.class abstract Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;
.super Ljava/lang/Object;
.source "AbstractCollectionByteCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(B)Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(B)Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected abstract getCollection()Ljava/util/Collection;
.end method

.method public isEmpty()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/adapters/IteratorByteIterator;->wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeElement(B)Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[B
    .locals 4

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 89
    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 90
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 91
    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArray([B)[B
    .locals 3

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 98
    array-length v1, p1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 99
    array-length p1, v0

    new-array p1, p1, [B

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 102
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionByteCollection;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
