.class abstract Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;
.source "AbstractShortListList.java"

# interfaces
.implements Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->add(IS)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/collections/primitives/adapters/CollectionShortCollection;->wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/ShortCollection;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->addAll(ILorg/apache/commons/collections/primitives/ShortCollection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 88
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 89
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 97
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/primitives/ShortList;->get(I)S

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method protected final getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getShortList()Lorg/apache/commons/collections/primitives/ShortList;
.end method

.method public hashCode()I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->indexOf(S)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->lastIndexOf(S)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortList;->listIterator()Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortList;->listIterator(I)Lorg/apache/commons/collections/primitives/ShortListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->wrap(Lorg/apache/commons/collections/primitives/ShortListIterator;)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/primitives/ShortList;->removeElementAt(I)S

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->set(IS)S

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;->getShortList()Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/primitives/ShortList;->subList(II)Lorg/apache/commons/collections/primitives/ShortList;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ShortListList;->wrap(Lorg/apache/commons/collections/primitives/ShortList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
