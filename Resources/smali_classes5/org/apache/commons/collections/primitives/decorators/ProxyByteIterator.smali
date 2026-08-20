.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyByteIterator;
.super Ljava/lang/Object;
.source "ProxyByteIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIterator()Lorg/apache/commons/collections/primitives/ByteIterator;
.end method

.method public hasNext()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteIterator;->getIterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()B
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteIterator;->getIterator()Lorg/apache/commons/collections/primitives/ByteIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v0

    return v0
.end method
