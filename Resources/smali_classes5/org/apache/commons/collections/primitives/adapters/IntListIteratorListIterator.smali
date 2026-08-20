.class public Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;
.super Ljava/lang/Object;
.source "IntListIteratorListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private _iterator:Lorg/apache/commons/collections/primitives/IntListIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/IntListIterator;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/IntListIterator;)Ljava/util/ListIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;-><init>(Lorg/apache/commons/collections/primitives/IntListIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntListIterator;->add(I)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/IntListIterator;->next()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/IntListIterator;->previous()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/IntListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListIteratorListIterator;->_iterator:Lorg/apache/commons/collections/primitives/IntListIterator;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/primitives/IntListIterator;->set(I)V

    return-void
.end method
