.class public Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;
.super Lorg/apache/commons/collections/primitives/RandomAccessCharList;
.source "RandomAccessCharList.java"

# interfaces
.implements Lorg/apache/commons/collections/primitives/CharList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessCharList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RandomAccessCharSubList"
.end annotation


# instance fields
.field private _comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

.field private _limit:I

.field private _list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

.field private _offset:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;II)V
    .locals 1

    .line 303
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;-><init>()V

    const/4 v0, 0x0

    .line 372
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_offset:I

    .line 373
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    .line 375
    iput-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    if-ltz p2, :cond_1

    .line 304
    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_0

    .line 309
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    .line 310
    iput p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_offset:I

    sub-int/2addr p3, p2

    .line 311
    iput p3, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    .line 312
    new-instance p2, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;-><init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;)V

    iput-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    .line 313
    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->resyncModCount()V

    return-void

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 305
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private checkRange(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 358
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->size()I

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

    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 364
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

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->size()I

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

    .line 369
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_offset:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public add(IC)V
    .locals 1

    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->checkRangeIncludingEndpoint(I)V

    .line 344
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->assertNotComodified()V

    .line 345
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->add(IC)V

    .line 346
    iget p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    .line 347
    iget-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->resyncModCount()V

    .line 348
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->incrModCount()V

    return-void
.end method

.method public get(I)C
    .locals 1

    .line 318
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->checkRange(I)V

    .line 319
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->assertNotComodified()V

    .line 320
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->get(I)C

    move-result p1

    return p1
.end method

.method public removeElementAt(I)C
    .locals 1

    .line 324
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->checkRange(I)V

    .line 325
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->assertNotComodified()V

    .line 326
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->removeElementAt(I)C

    move-result p1

    .line 327
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    .line 328
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->resyncModCount()V

    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->incrModCount()V

    return p1
.end method

.method public set(IC)C
    .locals 1

    .line 334
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->checkRange(I)V

    .line 335
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->assertNotComodified()V

    .line 336
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_list:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->toUnderlyingIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->set(IC)C

    move-result p1

    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->incrModCount()V

    .line 338
    iget-object p2, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {p2}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->resyncModCount()V

    return p1
.end method

.method public size()I
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_comod:Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->assertNotComodified()V

    .line 353
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$RandomAccessCharSubList;->_limit:I

    return v0
.end method
