.class public Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractOrderedMapIteratorDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;


# instance fields
.field protected final iterator:Lorg/apache/commons/collections/OrderedMapIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/OrderedMapIterator;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OrderedMapIterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractOrderedMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/MapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
