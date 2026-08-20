.class public Ljdbm/btree/BTree;
.super Ljava/lang/Object;
.source "BTree.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/btree/BTree$EmptyBrowser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SIZE:I = 0x10

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private transient _bpageSerializer:Ljdbm/btree/BPage;

.field protected _comparator:Ljava/util/Comparator;

.field protected _entries:I

.field private _height:I

.field protected _keySerializer:Ljdbm/helper/Serializer;

.field protected _pageSize:I

.field private transient _recid:J

.field protected transient _recman:Ljdbm/RecordManager;

.field private transient _root:J

.field protected _valueSerializer:Ljdbm/helper/Serializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;)Ljdbm/btree/BTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 188
    invoke-static {p0, p1, v0, v0, v1}, Ljdbm/btree/BTree;->createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;I)Ljdbm/btree/BTree;

    move-result-object p0

    return-object p0
.end method

.method public static createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;)Ljdbm/btree/BTree;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 206
    invoke-static {p0, p1, p2, p3, v0}, Ljdbm/btree/BTree;->createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;I)Ljdbm/btree/BTree;

    move-result-object p0

    return-object p0
.end method

.method public static createInstance(Ljdbm/RecordManager;Ljava/util/Comparator;Ljdbm/helper/Serializer;Ljdbm/helper/Serializer;I)Ljdbm/btree/BTree;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 236
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_1

    .line 240
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \'keySerializer\' must be serializable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 244
    instance-of v0, p3, Ljava/io/Serializable;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \'valueSerializer\' must be serializable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_4

    .line 253
    new-instance v0, Ljdbm/btree/BTree;

    invoke-direct {v0}, Ljdbm/btree/BTree;-><init>()V

    .line 254
    iput-object p0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    .line 255
    iput-object p1, v0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    .line 256
    iput-object p2, v0, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    .line 257
    iput-object p3, v0, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    .line 258
    iput p4, v0, Ljdbm/btree/BTree;->_pageSize:I

    .line 259
    new-instance p1, Ljdbm/btree/BPage;

    invoke-direct {p1}, Ljdbm/btree/BPage;-><init>()V

    iput-object p1, v0, Ljdbm/btree/BTree;->_bpageSerializer:Ljdbm/btree/BPage;

    .line 260
    iput-object v0, p1, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    .line 261
    invoke-interface {p0, v0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide p0

    iput-wide p0, v0, Ljdbm/btree/BTree;->_recid:J

    return-object v0

    .line 250
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \'pageSize\' must be even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \'comparator\' must be serializable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \'comparator\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \'recman\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getRoot()Ljdbm/btree/BPage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_0
    iget-object v2, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-object v3, p0, Ljdbm/btree/BTree;->_bpageSerializer:Ljdbm/btree/BPage;

    invoke-interface {v2, v0, v1, v3}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/btree/BPage;

    .line 525
    iget-wide v1, p0, Ljdbm/btree/BTree;->_root:J

    iput-wide v1, v0, Ljdbm/btree/BPage;->_recid:J

    .line 526
    iput-object p0, v0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    return-object v0
.end method

.method public static load(Ljdbm/RecordManager;J)Ljdbm/btree/BTree;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-interface {p0, p1, p2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/btree/BTree;

    .line 276
    iput-wide p1, v0, Ljdbm/btree/BTree;->_recid:J

    .line 277
    iput-object p0, v0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    .line 278
    new-instance p0, Ljdbm/btree/BPage;

    invoke-direct {p0}, Ljdbm/btree/BPage;-><init>()V

    iput-object p0, v0, Ljdbm/btree/BTree;->_bpageSerializer:Ljdbm/btree/BPage;

    .line 279
    iput-object v0, p0, Ljdbm/btree/BPage;->_btree:Ljdbm/btree/BTree;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized browse()Ljdbm/helper/TupleBrowser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 464
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Ljdbm/btree/BTree$EmptyBrowser;->INSTANCE:Ljdbm/helper/TupleBrowser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 468
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljdbm/btree/BPage;->findFirst()Ljdbm/helper/TupleBrowser;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 488
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 490
    sget-object p1, Ljdbm/btree/BTree$EmptyBrowser;->INSTANCE:Ljdbm/helper/TupleBrowser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 492
    :cond_0
    :try_start_1
    iget v1, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v1, p1}, Ljdbm/btree/BPage;->find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized find(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 400
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    monitor-exit p0

    return-object v1

    .line 405
    :cond_0
    :try_start_1
    new-instance v2, Ljdbm/helper/Tuple;

    invoke-direct {v2, v1, v1}, Ljdbm/helper/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    iget v3, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v3, p1}, Ljdbm/btree/BPage;->find(ILjava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v2}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 412
    monitor-exit p0

    return-object v1

    .line 414
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljdbm/helper/Tuple;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 417
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 398
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \'key\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findGreaterOrEqual(Ljava/lang/Object;)Ljdbm/helper/Tuple;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 439
    monitor-exit p0

    return-object v0

    .line 442
    :cond_0
    :try_start_0
    new-instance v1, Ljdbm/helper/Tuple;

    invoke-direct {v1, v0, v0}, Ljdbm/helper/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p0, p1}, Ljdbm/btree/BTree;->browse(Ljava/lang/Object;)Ljdbm/helper/TupleBrowser;

    move-result-object p1

    .line 444
    invoke-virtual {p1, v1}, Ljdbm/helper/TupleBrowser;->getNext(Ljdbm/helper/Tuple;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 445
    monitor-exit p0

    return-object v1

    .line 447
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRecid()J
    .locals 2

    .line 511
    iget-wide v0, p0, Ljdbm/btree/BTree;->_recid:J

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 307
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 314
    new-instance p3, Ljdbm/btree/BPage;

    invoke-direct {p3, p0, p1, p2}, Ljdbm/btree/BPage;-><init>(Ljdbm/btree/BTree;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    iget-wide p1, p3, Ljdbm/btree/BPage;->_recid:J

    iput-wide p1, p0, Ljdbm/btree/BTree;->_root:J

    .line 316
    iput v1, p0, Ljdbm/btree/BTree;->_height:I

    .line 317
    iput v1, p0, Ljdbm/btree/BTree;->_entries:I

    .line 318
    iget-object p1, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide p2, p0, Ljdbm/btree/BTree;->_recid:J

    invoke-interface {p1, p2, p3, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 321
    :cond_0
    :try_start_1
    iget v2, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v2, p1, p2, p3}, Ljdbm/btree/BPage;->insert(ILjava/lang/Object;Ljava/lang/Object;Z)Ljdbm/btree/BPage$InsertResult;

    move-result-object p1

    .line 323
    iget-object p2, p1, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    if-eqz p2, :cond_1

    .line 328
    new-instance p2, Ljdbm/btree/BPage;

    iget-object p3, p1, Ljdbm/btree/BPage$InsertResult;->_overflow:Ljdbm/btree/BPage;

    invoke-direct {p2, p0, v0, p3}, Ljdbm/btree/BPage;-><init>(Ljdbm/btree/BTree;Ljdbm/btree/BPage;Ljdbm/btree/BPage;)V

    .line 329
    iget-wide p2, p2, Ljdbm/btree/BPage;->_recid:J

    iput-wide p2, p0, Ljdbm/btree/BTree;->_root:J

    .line 330
    iget p2, p0, Ljdbm/btree/BTree;->_height:I

    add-int/2addr p2, v1

    iput p2, p0, Ljdbm/btree/BTree;->_height:I

    move p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 333
    :goto_0
    iget-object p3, p1, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;

    if-nez p3, :cond_2

    .line 334
    iget p2, p0, Ljdbm/btree/BTree;->_entries:I

    add-int/2addr p2, v1

    iput p2, p0, Ljdbm/btree/BTree;->_entries:I

    goto :goto_1

    :cond_2
    move v1, p2

    :goto_1
    if-eqz v1, :cond_3

    .line 338
    iget-object p2, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v0, p0, Ljdbm/btree/BTree;->_recid:J

    invoke-interface {p2, v0, v1, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 341
    :cond_3
    iget-object p1, p1, Ljdbm/btree/BPage$InsertResult;->_existing:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 304
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'value\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'key\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 536
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    .line 537
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/Serializer;

    iput-object v0, p0, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    .line 538
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/Serializer;

    iput-object v0, p0, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    .line 539
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Ljdbm/btree/BTree;->_height:I

    .line 540
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    .line 541
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Ljdbm/btree/BTree;->_pageSize:I

    .line 542
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Ljdbm/btree/BTree;->_entries:I

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 360
    :try_start_0
    invoke-direct {p0}, Ljdbm/btree/BTree;->getRoot()Ljdbm/btree/BPage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 362
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 365
    :cond_0
    :try_start_1
    iget v1, p0, Ljdbm/btree/BTree;->_height:I

    invoke-virtual {v0, v1, p1}, Ljdbm/btree/BPage;->remove(ILjava/lang/Object;)Ljdbm/btree/BPage$RemoveResult;

    move-result-object p1

    .line 366
    iget-boolean v1, p1, Ljdbm/btree/BPage$RemoveResult;->_underflow:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljdbm/btree/BPage;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    iget v1, p0, Ljdbm/btree/BTree;->_height:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljdbm/btree/BTree;->_height:I

    if-nez v1, :cond_1

    const-wide/16 v0, 0x0

    .line 372
    iput-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    goto :goto_0

    .line 374
    :cond_1
    iget v1, p0, Ljdbm/btree/BTree;->_pageSize:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljdbm/btree/BPage;->childBPage(I)Ljdbm/btree/BPage;

    move-result-object v0

    iget-wide v0, v0, Ljdbm/btree/BPage;->_recid:J

    iput-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 377
    :goto_1
    iget-object v1, p1, Ljdbm/btree/BPage$RemoveResult;->_value:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 378
    iget v0, p0, Ljdbm/btree/BTree;->_entries:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljdbm/btree/BTree;->_entries:I

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 382
    iget-object v0, p0, Ljdbm/btree/BTree;->_recman:Ljdbm/RecordManager;

    iget-wide v1, p0, Ljdbm/btree/BTree;->_recid:J

    invoke-interface {v0, v1, v2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 384
    :cond_4
    iget-object p1, p1, Ljdbm/btree/BPage$RemoveResult;->_value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 357
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \'key\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 502
    :try_start_0
    iget v0, p0, Ljdbm/btree/BTree;->_entries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Ljdbm/btree/BTree;->_comparator:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Ljdbm/btree/BTree;->_keySerializer:Ljdbm/helper/Serializer;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Ljdbm/btree/BTree;->_valueSerializer:Ljdbm/helper/Serializer;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 555
    iget v0, p0, Ljdbm/btree/BTree;->_height:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 556
    iget-wide v0, p0, Ljdbm/btree/BTree;->_root:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 557
    iget v0, p0, Ljdbm/btree/BTree;->_pageSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 558
    iget v0, p0, Ljdbm/btree/BTree;->_entries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
