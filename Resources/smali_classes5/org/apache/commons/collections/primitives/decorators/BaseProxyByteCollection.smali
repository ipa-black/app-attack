.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;
.super Ljava/lang/Object;
.source "BaseProxyByteCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(B)Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->add(B)Z

    move-result p1

    return p1
.end method

.method public addAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->addAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteCollection;->clear()V

    return-void
.end method

.method public contains(B)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->contains(B)Z

    move-result p1

    return p1
.end method

.method public containsAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->containsAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;
.end method

.method public hashCode()I
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteCollection;->iterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->removeAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z

    move-result p1

    return p1
.end method

.method public removeElement(B)Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->removeElement(B)Z

    move-result p1

    return p1
.end method

.method public retainAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->retainAll(Lorg/apache/commons/collections/primitives/ByteCollection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[B
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteCollection;->toArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toArray([B)[B
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteCollection;->toArray([B)[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;->getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
