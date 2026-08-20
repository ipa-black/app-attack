.class public Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;
.super Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;
.source "RandomAccessBooleanList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/BooleanList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessBooleanSubList"
.end annotation


# instance fields
.field private _comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

.field private _limit:I

.field private _list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

.field private _offset:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;II)V
    .locals 1

    .line 313
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;-><init>()V

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_offset:I

    .line 385
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

    .line 387
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    if-ltz p2, :cond_1

    .line 314
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_0

    .line 319
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

    .line 320
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_offset:I

    sub-int/2addr p3, p2

    .line 321
    iput p3, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    .line 322
    new-instance p2, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;)V

    iput-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    .line 323
    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->resyncModCount()V

    return-void

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 315
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 368
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->size()I

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

    .line 374
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 375
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->size()I

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

    .line 381
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_offset:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(IZ)V
    .locals 1

    .line 353
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->checkRangeIncludingEndpoint(I)V

    .line 354
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->assertNotComodified()V

    .line 355
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->add(IZ)V

    .line 356
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    .line 357
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->resyncModCount()V

    .line 358
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->incrModCount()V

    return-void
.end method

.method public get(I)Z
    .locals 1

    .line 328
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->checkRange(I)V

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->assertNotComodified()V

    .line 330
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->get(I)Z

    move-result p1

    return p1
.end method

.method public removeElementAt(I)Z
    .locals 1

    .line 334
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->checkRange(I)V

    .line 335
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->assertNotComodified()V

    .line 336
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->removeElementAt(I)Z

    move-result p1

    .line 337
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    .line 338
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->resyncModCount()V

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->incrModCount()V

    return p1
.end method

.method public set(IZ)Z
    .locals 1

    .line 344
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->checkRange(I)V

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->assertNotComodified()V

    .line 346
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList;->set(IZ)Z

    move-result p1

    .line 347
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->incrModCount()V

    .line 348
    iget-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->resyncModCount()V

    return p1
.end method

.method public size()I
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$ComodChecker;->assertNotComodified()V

    .line 363
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessBooleanList$RandomAccessBooleanSubList;->_limit:I

    return v0
.end method
