.class public Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;
.super Ljava/lang/Object;
.source "ListIteratorLongListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongListIterator;


# instance fields
.field private _iterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public static wrap(Ljava/util/ListIterator;)Lorg/apache/commons/collections/primitives/LongListIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;-><init>(Ljava/util/ListIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()J
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextIndex()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()J
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public previousIndex()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(J)V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListIteratorLongListIterator;->_iterator:Ljava/util/ListIterator;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
