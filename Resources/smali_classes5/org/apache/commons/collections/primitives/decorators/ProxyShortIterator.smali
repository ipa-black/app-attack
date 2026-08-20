.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyShortIterator;
.super Ljava/lang/Object;
.source "ProxyShortIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ShortIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIterator()Lorg/apache/commons/collections/primitives/ShortIterator;
.end method

.method public hasNext()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortIterator;->getIterator()Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()S
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyShortIterator;->getIterator()Lorg/apache/commons/collections/primitives/ShortIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortIterator;->next()S

    move-result v0

    return v0
.end method
