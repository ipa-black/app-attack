.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatCollection;
.source "BaseProxyFloatList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/FloatList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(IF)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/FloatList;->add(IF)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/FloatCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/FloatList;->addAll(ILorg/apache/commons/collections/primitives/FloatCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)F
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/FloatList;->get(I)F

    move-result p1

    return p1
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/FloatCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;
.end method

.method public indexOf(F)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/FloatList;->indexOf(F)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(F)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/FloatList;->lastIndexOf(F)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatList;->listIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/FloatList;->listIterator(I)Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)F
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/FloatList;->removeElementAt(I)F

    move-result p1

    return p1
.end method

.method public set(IF)F
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/FloatList;->set(IF)F

    move-result p1

    return p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/FloatList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyFloatList;->getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/FloatList;->subList(II)Lorg/apache/commons/collections/primitives/FloatList;

    move-result-object p1

    return-object p1
.end method
