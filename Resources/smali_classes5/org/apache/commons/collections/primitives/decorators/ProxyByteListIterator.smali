.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyByteIterator;
.source "ProxyByteListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteListIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getIterator()Lorg/apache/commons/collections/primitives/ByteIterator;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;
.end method

.method public hasPrevious()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()B
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->previous()B

    move-result v0

    return v0
.end method

.method public previousIndex()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteListIterator;->previousIndex()I

    move-result v0

    return v0
.end method
