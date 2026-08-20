.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;
.source "ProxyFloatListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/FloatListIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getIterator()Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;
.end method

.method public hasPrevious()Z
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()F
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatListIterator;->previous()F

    move-result v0

    return v0
.end method

.method public previousIndex()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;->getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatListIterator;->previousIndex()I

    move-result v0

    return v0
.end method
