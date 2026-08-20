.class public Ljdbm/recman/CacheRecordManager;
.super Ljava/lang/Object;
.source "CacheRecordManager.java"

# interfaces
.implements Ljdbm/RecordManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/recman/CacheRecordManager$CacheListener;,
        Ljdbm/recman/CacheRecordManager$CacheEntry;
    }
.end annotation


# instance fields
.field protected _cache:Ljdbm/helper/CachePolicy;

.field protected _recman:Ljdbm/RecordManager;


# direct methods
.method public constructor <init>(Ljdbm/RecordManager;Ljdbm/helper/CachePolicy;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 100
    iput-object p1, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    .line 101
    iput-object p2, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    .line 103
    new-instance p1, Ljdbm/recman/CacheRecordManager$CacheListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljdbm/recman/CacheRecordManager$CacheListener;-><init>(Ljdbm/recman/CacheRecordManager;Ljdbm/recman/CacheRecordManager$1;)V

    invoke-interface {p2, p1}, Ljdbm/helper/CachePolicy;->addListener(Ljdbm/helper/CachePolicyListener;)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'cache\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'recman\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    if-eqz v0, :cond_0

    return-void

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 285
    invoke-virtual {p0}, Ljdbm/recman/CacheRecordManager;->updateCacheEntries()V

    .line 286
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->close()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    .line 288
    iput-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
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

    .line 340
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 341
    invoke-virtual {p0}, Ljdbm/recman/CacheRecordManager;->updateCacheEntries()V

    .line 342
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 179
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2}, Ljdbm/RecordManager;->delete(J)V

    .line 180
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljdbm/helper/CachePolicy;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public fetch(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, v0}, Ljdbm/recman/CacheRecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 260
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 261
    iget-object v1, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v1, v0}, Ljdbm/helper/CachePolicy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Ljdbm/recman/CacheRecordManager$CacheEntry;-><init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V

    .line 264
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v2, p1, p2, p3}, Ljdbm/RecordManager;->fetch(JLjdbm/helper/Serializer;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    iget-object p1, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {p1, v0, v1}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    :try_start_2
    new-instance p2, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {p2, p1}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 271
    :cond_0
    :goto_0
    iget-object p1, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCachePolicy()Ljdbm/helper/CachePolicy;
    .locals 1

    .line 127
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    return-object v0
.end method

.method public declared-synchronized getNamedObject(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 369
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 371
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1}, Ljdbm/RecordManager;->getNamedObject(Ljava/lang/String;)J

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

.method public getRecordManager()Ljdbm/RecordManager;
    .locals 1

    .line 115
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    return-object v0
.end method

.method public declared-synchronized getRoot(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 314
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 316
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1}, Ljdbm/RecordManager;->getRoot(I)J

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

.method public declared-synchronized getRootCount()I
    .locals 1

    monitor-enter p0

    .line 300
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 302
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->getRootCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

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

    .line 141
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, v0}, Ljdbm/recman/CacheRecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 158
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;Ljdbm/helper/Serializer;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v8, v9}, Ljava/lang/Long;-><init>(J)V

    new-instance v11, Ljdbm/recman/CacheRecordManager$CacheEntry;

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, p0

    move-wide v3, v8

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Ljdbm/recman/CacheRecordManager$CacheEntry;-><init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V

    invoke-interface {v0, v10, v11}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-wide v8

    :catch_0
    move-exception p1

    .line 162
    :try_start_2
    new-instance p2, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {p2, p1}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    .line 352
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 354
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0}, Ljdbm/RecordManager;->rollback()V

    .line 358
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNamedObject(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 381
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 383
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2, p3}, Ljdbm/RecordManager;->setNamedObject(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoot(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 330
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, p1, p2, p3}, Ljdbm/RecordManager;->setRoot(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
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

    .line 194
    sget-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljdbm/recman/CacheRecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    return-void
.end method

.method public declared-synchronized update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-direct {p0}, Ljdbm/recman/CacheRecordManager;->checkIfClosed()V

    .line 215
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    iget-object v1, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v1, v0}, Ljdbm/helper/CachePolicy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    if-eqz v1, :cond_0

    .line 220
    iput-object p3, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    .line 221
    iput-object p4, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    new-instance v9, Ljdbm/recman/CacheRecordManager$CacheEntry;

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Ljdbm/recman/CacheRecordManager$CacheEntry;-><init>(Ljdbm/recman/CacheRecordManager;JLjava/lang/Object;Ljdbm/helper/Serializer;Z)V

    invoke-interface {v1, v0, v9}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 227
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljdbm/helper/CacheEvictionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateCacheEntries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Ljdbm/recman/CacheRecordManager;->_cache:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 407
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/CacheRecordManager$CacheEntry;

    .line 409
    iget-boolean v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Ljdbm/recman/CacheRecordManager;->_recman:Ljdbm/RecordManager;

    iget-wide v3, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_recid:J

    iget-object v5, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_obj:Ljava/lang/Object;

    iget-object v6, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_serializer:Ljdbm/helper/Serializer;

    invoke-interface {v2, v3, v4, v5, v6}, Ljdbm/RecordManager;->update(JLjava/lang/Object;Ljdbm/helper/Serializer;)V

    const/4 v2, 0x0

    .line 411
    iput-boolean v2, v1, Ljdbm/recman/CacheRecordManager$CacheEntry;->_isDirty:Z

    goto :goto_0

    :cond_1
    return-void
.end method
