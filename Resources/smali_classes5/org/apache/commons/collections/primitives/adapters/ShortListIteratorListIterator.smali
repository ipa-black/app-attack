.class public Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;
.super Ljava/lang/Object;
.source "ShortListIteratorListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private _iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ShortListIterator;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/ShortListIterator;)Ljava/util/ListIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;-><init>(Lorg/apache/commons/collections/primitives/ShortListIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortListIterator;->add(S)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ShortListIterator;->next()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/ShortListIterator;->previous()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/ShortListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/ShortListIterator;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/ShortListIterator;->set(S)V

    return-void
.end method
