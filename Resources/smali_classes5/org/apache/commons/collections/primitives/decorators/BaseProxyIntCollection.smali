.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;
.super Ljava/lang/Object;
.source "BaseProxyIntCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/IntCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->add(I)Z

    move-result p1

    return p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->addAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntCollection;->clear()V

    return-void
.end method

.method public contains(I)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->contains(I)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->containsAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;
.end method

.method public hashCode()I
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/IntIterator;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntCollection;->iterator()Lorg/apache/commons/collections/primitives/IntIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->removeAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z

    move-result p1

    return p1
.end method

.method public removeElement(I)Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->removeElement(I)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->retainAll(Lorg/apache/commons/collections/primitives/IntCollection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[I
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntCollection;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public toArray([I)[I
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntCollection;->toArray([I)[I

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
