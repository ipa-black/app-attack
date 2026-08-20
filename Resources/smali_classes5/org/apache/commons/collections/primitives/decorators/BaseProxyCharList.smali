.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;
.source "BaseProxyCharList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(IC)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/CharList;->add(IC)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/CharCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/CharList;->addAll(ILorg/apache/commons/collections/primitives/CharCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)C
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharList;->get(I)C

    move-result p1

    return p1
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/CharCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/CharList;
.end method

.method public indexOf(C)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharList;->indexOf(C)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(C)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharList;->lastIndexOf(C)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharList;->listIterator()Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/CharListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharList;->listIterator(I)Lorg/apache/commons/collections/primitives/CharListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)C
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/CharList;->removeElementAt(I)C

    move-result p1

    return p1
.end method

.method public set(IC)C
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/CharList;->set(IC)C

    move-result p1

    return p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyCharList;->getProxiedList()Lorg/apache/commons/collections/primitives/CharList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/CharList;->subList(II)Lorg/apache/commons/collections/primitives/CharList;

    move-result-object p1

    return-object p1
.end method
