.class abstract Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongCollection;
.source "BaseProxyLongList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongList;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(IJ)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/collections/primitives/LongList;->add(IJ)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/LongCollection;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/LongList;->addAll(ILorg/apache/commons/collections/primitives/LongCollection;)Z

    move-result p1

    return p1
.end method

.method public get(I)J
    .locals 2

    .line 48
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/LongList;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getProxiedCollection()Lorg/apache/commons/collections/primitives/LongCollection;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getProxiedList()Lorg/apache/commons/collections/primitives/LongList;
.end method

.method public indexOf(J)I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/LongList;->indexOf(J)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(J)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/LongList;->lastIndexOf(J)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongList;->listIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/LongList;->listIterator(I)Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)J
    .locals 2

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/LongList;->removeElementAt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(IJ)J
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/collections/primitives/LongList;->set(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/LongList;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseProxyLongList;->getProxiedList()Lorg/apache/commons/collections/primitives/LongList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/LongList;->subList(II)Lorg/apache/commons/collections/primitives/LongList;

    move-result-object p1

    return-object p1
.end method
