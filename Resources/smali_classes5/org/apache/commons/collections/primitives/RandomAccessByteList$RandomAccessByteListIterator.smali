.class public Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;
.super Lorg/apache/commons/collections/primitives/RandomAccessByteList$ComodChecker;
.source "RandomAccessByteList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/ByteListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessByteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessByteListIterator"
.end annotation


# instance fields
.field private _lastReturnedIndex:I

.field private _nextIndex:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessByteList;I)V
    .locals 2

    .line 223
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessByteList;)V

    const/4 p1, 0x0

    .line 306
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    const/4 p1, -0x1

    .line 307
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    if-ltz p2, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->size()I

    move-result p1

    if-gt p2, p1, :cond_0

    .line 227
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->resyncModCount()V

    return-void

    .line 225
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->size()I

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
.method public add(B)V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 278
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->add(IB)V

    .line 279
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    const/4 p1, -0x1

    .line 280
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->resyncModCount()V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 233
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 234
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->size()I

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

    .line 238
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 239
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()B
    .locals 2

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->get(I)B

    move-result v0

    .line 258
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 259
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    return v0

    .line 255
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 243
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 244
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    return v0
.end method

.method public previous()B
    .locals 3

    .line 265
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 266
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->get(I)B

    move-result v0

    .line 270
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 271
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    return v0

    .line 267
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 249
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    .line 286
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->removeElementAt(I)B

    .line 290
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    .line 291
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_nextIndex:I

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->resyncModCount()V

    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(B)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->assertNotComodified()V

    const/4 v0, -0x1

    .line 298
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    if-eq v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessByteList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->_lastReturnedIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/primitives/RandomAccessByteList;->set(IB)B

    .line 302
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessByteList$RandomAccessByteListIterator;->resyncModCount()V

    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
