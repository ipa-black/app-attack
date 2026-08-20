.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;
.super Ljava/lang/Object;
.source "BaseProxyCharCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(C)Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->add(C)Z

    move-result p1

    return p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->addAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharCollection;->clear()V

    return-void
.end method

.method public contains(C)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->contains(C)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->containsAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;
.end method

.method public hashCode()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/CharIterator;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharCollection;->iterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->removeAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z

    move-result p1

    return p1
.end method

.method public removeElement(C)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->removeElement(C)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->retainAll(Lorg/apache/commons/collections/primitives/CharCollection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[C
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharCollection;->toArray()[C

    move-result-object v0

    return-object v0
.end method

.method public toArray([C)[C
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharCollection;->toArray([C)[C

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
