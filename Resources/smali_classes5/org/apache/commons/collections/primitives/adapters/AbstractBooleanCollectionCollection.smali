.class abstract Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;
.super Ljava/lang/Object;
.source "AbstractBooleanCollectionCollection.java"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->add(Z)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->addAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanCollection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->contains(Z)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->containsAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z

    move-result p1

    return p1
.end method

.method protected abstract getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;
.end method

.method public isEmpty()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanCollection;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;->wrap(Lorg/apache/commons/collections/primitives/BooleanIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->removeElement(Z)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->removeAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/BooleanCollection;->retainAll(Lorg/apache/commons/collections/primitives/BooleanCollection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanCollection;->toArray()[Z

    move-result-object v0

    .line 93
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 94
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 95
    new-instance v3, Ljava/lang/Boolean;

    aget-boolean v4, v0, v2

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanCollection;->toArray()[Z

    move-result-object v0

    .line 102
    array-length v1, p1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
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

    .line 105
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 106
    new-instance v2, Ljava/lang/Boolean;

    aget-boolean v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_2

    .line 109
    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;->getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
