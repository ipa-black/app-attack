.class public Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;
.super Ljava/lang/Object;
.source "ByteIteratorIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private _iterator:Lorg/apache/commons/collections/primitives/ByteIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ByteIterator;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/ByteIterator;)Ljava/util/Iterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;-><init>(Lorg/apache/commons/collections/primitives/ByteIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ByteIterator;->next()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ByteIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/ByteIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ByteIterator;->remove()V

    return-void
.end method
