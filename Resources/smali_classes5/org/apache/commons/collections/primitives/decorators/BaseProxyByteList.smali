.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;
.source "BaseProxyByteList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(IB)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ByteList;->add(IB)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/ByteCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ByteList;->addAll(ILorg/apache/commons/collections/primitives/ByteCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)B
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteList;->get(I)B

    move-result p1

    return p1
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/ByteCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;
.end method

.method public indexOf(B)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteList;->indexOf(B)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(B)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteList;->lastIndexOf(B)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteList;->listIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteList;->listIterator(I)Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)B
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ByteList;->removeElementAt(I)B

    move-result p1

    return p1
.end method

.method public set(IB)B
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ByteList;->set(IB)B

    move-result p1

    return p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyByteList;->getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ByteList;->subList(II)Lorg/apache/commons/collections/primitives/ByteList;

    move-result-object p1

    return-object p1
.end method
