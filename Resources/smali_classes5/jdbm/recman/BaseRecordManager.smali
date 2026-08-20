.class public final Ljdbm/recman/BaseRecordManager;
.super Ljava/lang/Object;
.source "BaseRecordManager.java"

# interfaces
.implements Ljdbm/RecordManager;


# static fields
.field public static final DEBUG:Z = false

.field public static final NAME_DIRECTORY_ROOT:I


# instance fields
.field private _file:Ljdbm/recman/RecordFile;

.field private _logMgr:Ljdbm/recman/LogicalRowIdManager;

.field private _nameDirectory:Ljava/util/Map;

.field private _pageman:Ljdbm/recman/PageManager;

.field private _physMgr:Ljdbm/recman/PhysicalRowIdManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljdbm/recman/RecordFile;

    invoke-direct {v0, p1}, Ljdbm/recman/RecordFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    .line 141
    new-instance p1, Ljdbm/recman/PageManager;

    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    invoke-direct {p1, v0}, Ljdbm/recman/PageManager;-><init>(Ljdbm/recman/RecordFile;)V

    iput-object p1, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    .line 142
    new-instance p1, Ljdbm/recman/PhysicalRowIdManager;

    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-direct {p1, v0, v1}, Ljdbm/recman/PhysicalRowIdManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object p1, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    .line 143
    new-instance p1, Ljdbm/recman/LogicalRowIdManager;

    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-direct {p1, v0, v1}, Ljdbm/recman/LogicalRowIdManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object p1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    return-void
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    if-eqz v0, :cond_0

    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNameDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0}, Ljdbm/recman/BaseRecordManager;->getRoot(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 453
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    .line 454
    invoke-virtual {p0, v1}, Ljdbm/recman/BaseRecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 455
    invoke-virtual {p0, v0, v1, v2}, Ljdbm/recman/BaseRecordManager;->setRoot(IJ)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p0, v1, v2}, Ljdbm/recman/BaseRecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    .line 459
    :goto_0
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    return-object v0
.end method

.method private saveNameDirectory(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 466
    invoke-virtual {p0, p1}, Ljdbm/recman/BaseRecordManager;->getRoot(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p0, Ljdbm/recman/BaseRecordManager;->_nameDirectory:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, p1}, Ljdbm/recman/BaseRecordManager;->update(JLjava/lang/Object;)V

    return-void

    .line 468
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Name directory must exist"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 185
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->close()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    .line 188
    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/RecordFile;->close()V

    .line 189
    iput-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 428
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Argument \'recid\' is invalid: "

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 252
    new-instance v0, Ljdbm/recman/Location;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/Location;-><init>(J)V

    .line 253
    iget-object p1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {p1, v0}, Ljdbm/recman/LogicalRowIdManager;->fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object p1

    .line 254
    iget-object p2, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    invoke-virtual {p2, p1}, Ljdbm/recman/PhysicalRowIdManager;->delete(Ljdbm/recman/Location;)V

    .line 255
    iget-object p1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {p1, v0}, Ljdbm/recman/LogicalRowIdManager;->delete(Ljdbm/recman/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableTransactions()V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 171
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->disableTransactions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fetch(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, v0}, Ljdbm/recman/BaseRecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Argument \'recid\' is invalid: "

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 337
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    iget-object v1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    new-instance v2, Ljdbm/recman/Location;

    invoke-direct {v2, p1, p2}, Ljdbm/recman/Location;-><init>(J)V

    invoke-virtual {v1, v2}, Ljdbm/recman/LogicalRowIdManager;->fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljdbm/recman/PhysicalRowIdManager;->fetch(Ljdbm/recman/Location;)[B

    move-result-object p1

    .line 341
    invoke-interface {p3, p1}, Ljdbm/helper/Serializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 334
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNamedObject(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 393
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->getNameDirectory()Ljava/util/Map;

    move-result-object v0

    .line 394
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 398
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getRoot(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 366
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->getFileHeader()Ljdbm/recman/FileHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljdbm/recman/FileHeader;->getRoot(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRootCount()I
    .locals 1

    const/16 v0, 0x3f5

    return v0
.end method

.method public declared-synchronized getTransactionManager()Ljdbm/recman/TransactionManager;
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 154
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_file:Ljdbm/recman/RecordFile;

    iget-object v0, v0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, v0}, Ljdbm/recman/BaseRecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 224
    invoke-interface {p2, p1}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1

    .line 225
    iget-object p2, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Ljdbm/recman/PhysicalRowIdManager;->insert([BII)Ljdbm/recman/Location;

    move-result-object p1

    .line 226
    iget-object p2, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {p2, p1}, Ljdbm/recman/LogicalRowIdManager;->insert(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object p1

    invoke-virtual {p1}, Ljdbm/recman/Location;->toLong()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rollback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 440
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->rollback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNamedObject(Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 409
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->getNameDirectory()Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 412
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :goto_0
    invoke-direct {p0, v0}, Ljdbm/recman/BaseRecordManager;->saveNameDirectory(Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized setRoot(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    .line 380
    iget-object v0, p0, Ljdbm/recman/BaseRecordManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageManager;->getFileHeader()Ljdbm/recman/FileHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljdbm/recman/FileHeader;->setRoot(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public update(JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljdbm/recman/BaseRecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    return-void
.end method

.method public declared-synchronized update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Argument \'recid\' is invalid: "

    monitor-enter p0

    .line 284
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/BaseRecordManager;->checkIfClosed()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 290
    new-instance v0, Ljdbm/recman/Location;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/Location;-><init>(J)V

    .line 291
    iget-object p1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {p1, v0}, Ljdbm/recman/LogicalRowIdManager;->fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;

    move-result-object p1

    .line 293
    invoke-interface {p4, p3}, Ljdbm/helper/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p2

    .line 298
    iget-object p3, p0, Ljdbm/recman/BaseRecordManager;->_physMgr:Ljdbm/recman/PhysicalRowIdManager;

    array-length p4, p2

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v1, p4}, Ljdbm/recman/PhysicalRowIdManager;->update(Ljdbm/recman/Location;[BII)Ljdbm/recman/Location;

    move-result-object p2

    .line 299
    invoke-virtual {p2, p1}, Ljdbm/recman/Location;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Ljdbm/recman/BaseRecordManager;->_logMgr:Ljdbm/recman/LogicalRowIdManager;

    invoke-virtual {p1, v0, p2}, Ljdbm/recman/LogicalRowIdManager;->update(Ljdbm/recman/Location;Ljdbm/recman/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    :cond_1
    :try_start_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
