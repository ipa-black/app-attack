.class abstract Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;
.super Ljava/lang/Object;
.source "ProxyLongIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongIterator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIterator()Lorg/apache/commons/collections/primitives/LongIterator;
.end method

.method public hasNext()Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;->getIterator()Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()J
    .locals 2

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;->getIterator()Lorg/apache/commons/collections/primitives/LongIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/LongIterator;->next()J

    move-result-wide v0

    return-wide v0
.end method
