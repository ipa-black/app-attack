.class public Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;
.super Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;
.source "RandomAccessCharList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessCharList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessCharListIterator"
.end annotation


# instance fields
.field private _lastReturnedIndex:I

.field private _nextIndex:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;I)V
    .locals 2

    .line 215
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;)V

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    const/4 p1, -0x1

    .line 299
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    if-ltz p2, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

    move-result p1

    if-gt p2, p1, :cond_0

    .line 219
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->resyncModCount()V

    return-void

    .line 217
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

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
.method public add(C)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->add(IC)V

    .line 271
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    const/4 p1, -0x1

    .line 272
    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    .line 273
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->resyncModCount()V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 226
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

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

    .line 230
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 231
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()C
    .locals 2

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->get(I)C

    move-result v0

    .line 250
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 251
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    return v0

    .line 247
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 236
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    return v0
.end method

.method public previous()C
    .locals 3

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->get(I)C

    move-result v0

    .line 262
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 263
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    return v0

    .line 259
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 241
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    .line 278
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->removeElementAt(I)C

    .line 282
    iput v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    .line 283
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_nextIndex:I

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->resyncModCount()V

    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(C)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->assertNotComodified()V

    const/4 v0, -0x1

    .line 290
    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->_lastReturnedIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->set(IC)C

    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharListIterator;->resyncModCount()V

    return-void

    .line 291
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
