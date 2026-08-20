.class public Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;
.super Ljava/lang/Object;
.source "BooleanIteratorIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private _iterator:Lorg/apache/commons/collections/primitives/BooleanIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/BooleanIterator;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/BooleanIterator;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/BooleanIterator;)Ljava/util/Iterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;-><init>(Lorg/apache/commons/collections/primitives/BooleanIterator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/BooleanIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/BooleanIterator;

    invoke-interface {v1}, Lorg/apache/commons/collections/primitives/BooleanIterator;->next()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/BooleanIteratorIterator;->_iterator:Lorg/apache/commons/collections/primitives/BooleanIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/primitives/BooleanIterator;->remove()V

    return-void
.end method
