.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortCollection;
.source "BaseProxyShortList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ShortList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(IS)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->add(IS)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/ShortCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->addAll(ILorg/apache/commons/collections/primitives/ShortCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)S
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->get(I)S

    move-result p1

    return p1
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/ShortCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;
.end method

.method public indexOf(S)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->indexOf(S)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(S)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->lastIndexOf(S)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortList;->listIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/ShortListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->listIterator(I)Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)S
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->removeElementAt(I)S

    move-result p1

    return p1
.end method

.method public set(IS)S
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->set(IS)S

    move-result p1

    return p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/ShortList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyShortList;->getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->subList(II)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p1

    return-object p1
.end method
