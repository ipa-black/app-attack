.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;
.super Ljava/lang/Object;
.source "ProxyFloatIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/FloatIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIterator()Lorg/apache/commons/collections/primitives/FloatIterator;
.end method

.method public hasNext()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;->getIterator()Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()F
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;->getIterator()Lorg/apache/commons/collections/primitives/FloatIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/FloatIterator;->next()F

    move-result v0

    return v0
.end method
