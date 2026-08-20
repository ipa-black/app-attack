.class Lorg/apache/commons/collections/map/PredicatedMap$PredicatedMapEntrySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "PredicatedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/PredicatedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PredicatedMapEntrySetIterator"
.end annotation


# instance fields
.field private final valuePredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 220
    iput-object p2, p0, Lorg/apache/commons/collections/map/PredicatedMap$PredicatedMapEntrySetIterator;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    new-instance v1, Lorg/apache/commons/collections/map/PredicatedMap$PredicatedMapEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/PredicatedMap$PredicatedMapEntrySetIterator;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/map/PredicatedMap$PredicatedMapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method
