.class public Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;
.super Lorg/apache/commons/collections/primitives/RandomAccessIntList;
.source "RandomAccessIntList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/IntList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessIntSubList"
.end annotation


# instance fields
.field private _comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

.field private _limit:I

.field private _list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

.field private _offset:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessIntList;II)V
    .locals 1

    .line 311
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList;-><init>()V

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_offset:I

    .line 381
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

    .line 383
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    if-ltz p2, :cond_1

    .line 312
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_0

    .line 317
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

    .line 318
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_offset:I

    sub-int/2addr p3, p2

    .line 319
    iput p3, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    .line 320
    new-instance p2, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessIntList;)V

    iput-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    .line 321
    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->resyncModCount()V

    return-void

    .line 315
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 365
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 366
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->size()I

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

    .line 371
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 372
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->size()I

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

    .line 377
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_offset:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(II)V
    .locals 1

    .line 351
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->checkRangeIncludingEndpoint(I)V

    .line 352
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->assertNotComodified()V

    .line 353
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessIntList;->add(II)V

    .line 354
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    .line 355
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->resyncModCount()V

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->incrModCount()V

    return-void
.end method

.method public get(I)I
    .locals 1

    .line 326
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->checkRange(I)V

    .line 327
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->assertNotComodified()V

    .line 328
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList;->get(I)I

    move-result p1

    return p1
.end method

.method public removeElementAt(I)I
    .locals 1

    .line 332
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->checkRange(I)V

    .line 333
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->assertNotComodified()V

    .line 334
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList;->removeElementAt(I)I

    move-result p1

    .line 335
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    .line 336
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->resyncModCount()V

    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->incrModCount()V

    return p1
.end method

.method public set(II)I
    .locals 1

    .line 342
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->checkRange(I)V

    .line 343
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->assertNotComodified()V

    .line 344
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessIntList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessIntList;->set(II)I

    move-result p1

    .line 345
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->incrModCount()V

    .line 346
    iget-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->resyncModCount()V

    return p1
.end method

.method public size()I
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessIntList$ComodChecker;->assertNotComodified()V

    .line 361
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessIntList$RandomAccessIntSubList;->_limit:I

    return v0
.end method
