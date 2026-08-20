.class public Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;
.super Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$ComodChecker;
.source "RandomAccessDoubleList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/DoubleListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessDoubleListIterator"
.end annotation


# instance fields
.field private _lastReturnedIndex:I

.field private _nextIndex:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;I)V
    .locals 2

    .line 224
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;)V

    const/4 p1, 0x0

    .line 307
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    const/4 p1, -0x1

    .line 308
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    if-ltz p2, :cond_0

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->size()I

    move-result p1

    if-gt p2, p1, :cond_0

    .line 228
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->resyncModCount()V

    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " not in [0,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(D)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 279
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->add(ID)V

    .line 280
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    const/4 p1, -0x1

    .line 281
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    .line 282
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->resyncModCount()V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 234
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 235
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 240
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()D
    .locals 3

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->get(I)D

    move-result-wide v0

    .line 259
    iget v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    iput v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 260
    iput v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    return-wide v0

    .line 256
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 244
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 245
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    return v0
.end method

.method public previous()D
    .locals 4

    .line 266
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 267
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->get(I)D

    move-result-wide v0

    .line 271
    iget v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    add-int/lit8 v2, v2, -0x1

    .line 272
    iput v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    return-wide v0

    .line 268
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 250
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    .line 287
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->removeElementAt(I)D

    .line 291
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    .line 292
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_nextIndex:I

    .line 293
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->resyncModCount()V

    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(D)V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->assertNotComodified()V

    const/4 v0, -0x1

    .line 299
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    if-eq v0, v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->_lastReturnedIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList;->set(ID)D

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessDoubleList$RandomAccessDoubleListIterator;->resyncModCount()V

    return-void

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
