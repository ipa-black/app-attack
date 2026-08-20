.class public Lorg/apache/commons/collections/set/TransformedSortedSet;
.super Lorg/apache/commons/collections/set/TransformedSet;
.source "TransformedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)V

    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedSet;
    .locals 1

    .line 87
    new-instance v0, Lorg/apache/commons/collections/set/TransformedSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 135
    new-instance v0, Lorg/apache/commons/collections/set/TransformedSortedSet;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 130
    new-instance p2, Lorg/apache/commons/collections/set/TransformedSortedSet;

    iget-object v0, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object p2
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/TransformedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 140
    new-instance v0, Lorg/apache/commons/collections/set/TransformedSortedSet;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections/set/TransformedSortedSet;-><init>(Ljava/util/SortedSet;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method
