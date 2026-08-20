.class public Lorg/apache/commons/collections/iterators/ListIteratorWrapper;
.super Ljava/lang/Object;
.source "ListIteratorWrapper.java"

# interfaces
.implements Ljava/util/ListIterator;


# static fields
.field private static final UNSUPPORTED_OPERATION_MESSAGE:Ljava/lang/String; = "ListIteratorWrapper does not support optional operations of ListIterator."


# instance fields
.field private currentIndex:I

.field private final iterator:Ljava/util/Iterator;

.field private final list:Ljava/util/LinkedList;

.field private wrappedIteratorIndex:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 82
    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 115
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 125
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 138
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 153
    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 154
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 159
    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 160
    iget v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->wrappedIteratorIndex:I

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 180
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 184
    iput v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    .line 185
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 213
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
