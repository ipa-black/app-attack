.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;
.source "BaseProxyIntList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/IntList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/IntList;->add(II)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/IntCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/IntList;->addAll(ILorg/apache/commons/collections/primitives/IntCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/IntCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/IntList;
.end method

.method public indexOf(I)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntList;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(I)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntList;->lastIndexOf(I)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/IntListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntList;->listIterator()Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/IntListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntList;->listIterator(I)Lorg/apache/commons/collections/primitives/IntListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntList;->removeElementAt(I)I

    move-result p1

    return p1
.end method

.method public set(II)I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/IntList;->set(II)I

    move-result p1

    return p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/IntList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyIntList;->getProxiedList()Lorg/apache/commons/collections/primitives/IntList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/IntList;->subList(II)Lorg/apache/commons/collections/primitives/IntList;

    move-result-object p1

    return-object p1
.end method
