.class public Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;
.super Ljava/lang/Object;
.source "IteratorLongIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongIterator;


# instance fields
.field private _iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;->_iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static wrap(Ljava/util/Iterator;)Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;->_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()J
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;->_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove()V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IteratorLongIterator;->_iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
