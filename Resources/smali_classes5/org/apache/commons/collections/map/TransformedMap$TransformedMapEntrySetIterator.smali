.class Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntrySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "TransformedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/TransformedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedMapEntrySetIterator"
.end annotation


# instance fields
.field private final valueTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 248
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 249
    iput-object p2, p0, Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntrySetIterator;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    new-instance v1, Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntrySetIterator;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method
