.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyShortListIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyShortIterator;
.source "ProxyShortListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ShortListIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getIterator()Lorg/apache/commons/collections/primitives/ShortIterator;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;
.end method

.method public hasPrevious()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()S
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->previous()S

    move-result v0

    return v0
.end method

.method public previousIndex()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->previousIndex()I

    move-result v0

    return v0
.end method
