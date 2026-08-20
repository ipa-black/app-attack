.class abstract Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;
.source "AbstractListBooleanList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/BooleanList;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(IZ)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILorg/apache/commons/collections/primitives/BooleanCollection;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->wrap(Lorg/apache/commons/collections/primitives/BooleanCollection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 89
    instance-of v0, p1, Lorg/apache/commons/collections/primitives/BooleanList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 90
    check-cast p1, Lorg/apache/commons/collections/primitives/BooleanList;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->size()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object v2

    .line 97
    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanList;->iterator()Lorg/apache/commons/collections/primitives/BooleanIterator;

    move-result-object p1

    .line 98
    :cond_2
    invoke-interface {v2}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    invoke-interface {v2}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v3

    invoke-interface {p1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v4

    if-eq v3, v4, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public get(I)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected final getCollection()Ljava/util/Collection;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getList()Ljava/util/List;
.end method

.method public hashCode()I
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Z)I
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Z)I
    .locals 2

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Lorg/apache/commons/collections/primitives/BooleanListIterator;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorBooleanListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/BooleanListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/apache/commons/collections/primitives/BooleanListIterator;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorBooleanListIterator;->wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/BooleanListIterator;

    move-result-object p1

    return-object p1
.end method

.method public removeElementAt(I)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public set(IZ)Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public subList(II)Lorg/apache/commons/collections/primitives/BooleanList;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListBooleanList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections/primitives/adapters/ListBooleanList;->wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/BooleanList;

    move-result-object p1

    return-object p1
.end method
