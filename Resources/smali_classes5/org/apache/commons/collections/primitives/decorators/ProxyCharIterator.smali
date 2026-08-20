.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyCharIterator;
.super Ljava/lang/Object;
.source "ProxyCharIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIterator()Lorg/apache/commons/collections/primitives/CharIterator;
.end method

.method public hasNext()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyCharIterator;->getIterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()C
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyCharIterator;->getIterator()Lorg/apache/commons/collections/primitives/CharIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/CharIterator;->next()C

    move-result v0

    return v0
.end method
