.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyLongListIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;
.source "ProxyLongListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongListIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getIterator()Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;
.end method

.method public hasPrevious()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()J
    .locals 2

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongListIterator;->previous()J

    move-result-wide v0

    return-wide v0
.end method

.method public previousIndex()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/LongListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongListIterator;->previousIndex()I

    move-result v0

    return v0
.end method
