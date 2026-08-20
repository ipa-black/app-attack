.class public Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;
.super Lorg/apache/commons/collections/primitives/RandomAccessLongList;
.source "RandomAccessLongList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/LongList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessLongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessLongSubList"
.end annotation


# instance fields
.field private _comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

.field private _limit:I

.field private _list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

.field private _offset:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessLongList;II)V
    .locals 1

    .line 312
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_offset:I

    .line 382
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

    .line 384
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    if-ltz p2, :cond_1

    .line 313
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_0

    .line 318
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

    .line 319
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_offset:I

    sub-int/2addr p3, p2

    .line 320
    iput p3, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    .line 321
    new-instance p2, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessLongList;)V

    iput-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    .line 322
    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->resyncModCount()V

    return-void

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 314
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 366
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " not in [0,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRangeIncludingEndpoint(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " not in [0,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toUnderlyingIndex(I)I
    .locals 1

    .line 378
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_offset:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(IJ)V
    .locals 1

    .line 352
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->checkRangeIncludingEndpoint(I)V

    .line 353
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->assertNotComodified()V

    .line 354
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;->add(IJ)V

    .line 355
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    .line 356
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->resyncModCount()V

    .line 357
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->incrModCount()V

    return-void
.end method

.method public get(I)J
    .locals 2

    .line 327
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->checkRange(I)V

    .line 328
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->assertNotComodified()V

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeElementAt(I)J
    .locals 2

    .line 333
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->checkRange(I)V

    .line 334
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->assertNotComodified()V

    .line 335
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;->removeElementAt(I)J

    move-result-wide v0

    .line 336
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    .line 337
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->resyncModCount()V

    .line 338
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->incrModCount()V

    return-wide v0
.end method

.method public set(IJ)J
    .locals 1

    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->checkRange(I)V

    .line 344
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->assertNotComodified()V

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessLongList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/collections/primitives/RandomAccessLongList;->set(IJ)J

    move-result-wide p1

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->incrModCount()V

    .line 347
    iget-object p3, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {p3}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->resyncModCount()V

    return-wide p1
.end method

.method public size()I
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessLongList$ComodChecker;->assertNotComodified()V

    .line 362
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessLongList$RandomAccessLongSubList;->_limit:I

    return v0
.end method
