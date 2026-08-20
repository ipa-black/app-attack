.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleCollection;
.source "BaseProxyDoubleList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/DoubleList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ID)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/collections/primitives/DoubleList;->add(ID)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/DoubleCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/DoubleList;->addAll(ILorg/apache/commons/collections/primitives/DoubleCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)D
    .locals 2

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/DoubleList;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/DoubleCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;
.end method

.method public indexOf(D)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/DoubleList;->indexOf(D)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(D)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/DoubleList;->lastIndexOf(D)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/DoubleList;->listIterator()Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/DoubleList;->listIterator(I)Lorg/apache/commons/collections/primitives/DoubleListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)D
    .locals 2

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/DoubleList;->removeElementAt(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public set(ID)D
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/collections/primitives/DoubleList;->set(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyDoubleList;->getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/DoubleList;->subList(II)Lorg/apache/commons/collections/primitives/DoubleList;

    move-result-object p1

    return-object p1
.end method
