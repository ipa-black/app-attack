.class final Ljdbm/recman/PageManager;
.super Ljava/lang/Object;
.source "PageManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private header:Ljdbm/recman/FileHeader;

.field private headerBuf:Ljdbm/recman/BlockIo;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const-wide/16 v0, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object p1

    iput-object p1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result p1

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljdbm/recman/FileHeader;

    iget-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object p1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljdbm/recman/FileHeader;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-direct {p1, v1, v0}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object p1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    :goto_0
    return-void
.end method


# virtual methods
.method allocate(S)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 87
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/recman/FileHeader;->getFirstOf(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {p0, v2, v3}, Ljdbm/recman/PageManager;->getNext(J)J

    move-result-wide v7

    invoke-virtual {v0, v1, v7, v8}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    move v0, v1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v0, v1}, Ljdbm/recman/FileHeader;->getLastOf(I)J

    move-result-wide v2

    cmp-long v0, v2, v4

    const-wide/16 v7, 0x1

    if-nez v0, :cond_1

    move-wide v2, v7

    .line 100
    :cond_1
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    add-long/2addr v7, v2

    invoke-virtual {v0, v1, v7, v8}, Ljdbm/recman/FileHeader;->setLastOf(IJ)V

    move v0, v6

    .line 105
    :goto_0
    iget-object v7, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v7, v2, v3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v7

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Ljdbm/recman/PageHeader;

    invoke-direct {v0, v7, p1}, Ljdbm/recman/PageHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    goto :goto_1

    :cond_2
    invoke-static {v7}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v0

    .line 108
    :goto_1
    iget-object v8, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v8, p1}, Ljdbm/recman/FileHeader;->getLastOf(I)J

    move-result-wide v8

    .line 111
    sget-object v10, Ljdbm/recman/RecordFile;->cleanData:[B

    invoke-virtual {v7}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v11

    const/16 v12, 0x2000

    invoke-static {v10, v1, v11, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {v0, p1}, Ljdbm/recman/PageHeader;->setType(S)V

    .line 115
    invoke-virtual {v0, v8, v9}, Ljdbm/recman/PageHeader;->setPrev(J)V

    .line 116
    invoke-virtual {v0, v4, v5}, Ljdbm/recman/PageHeader;->setNext(J)V

    cmp-long v0, v8, v4

    if-nez v0, :cond_3

    .line 121
    iget-object v1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v1, p1, v2, v3}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    .line 122
    :cond_3
    iget-object v1, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v1, p1, v2, v3}, Ljdbm/recman/FileHeader;->setLastOf(IJ)V

    .line 123
    iget-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, v2, v3, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    if-eqz v0, :cond_4

    .line 127
    iget-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, v8, v9}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v7

    .line 128
    invoke-static {v7}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v2, v3}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 130
    iget-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, v8, v9, v6}, Ljdbm/recman/RecordFile;->release(JZ)V

    :cond_4
    const/4 p1, 0x0

    .line 134
    invoke-virtual {v7, p1}, Ljdbm/recman/BlockIo;->setView(Ljdbm/recman/BlockView;)V

    return-wide v2

    .line 84
    :cond_5
    new-instance p1, Ljava/lang/Error;

    const-string v0, "allocate of free page?"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-virtual {v0, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 259
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->commit()V

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    .line 261
    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    .line 262
    iput-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    return-void
.end method

.method commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-virtual {v0, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 230
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->commit()V

    .line 233
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    .line 234
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    return-void
.end method

.method free(SJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 150
    invoke-static {v2}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljdbm/recman/PageHeader;->getPrev()J

    move-result-wide v3

    .line 152
    invoke-virtual {v2}, Ljdbm/recman/PageHeader;->getNext()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 155
    invoke-virtual {v2, v7}, Ljdbm/recman/PageHeader;->setType(S)V

    .line 156
    iget-object v8, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v8, v7}, Ljdbm/recman/FileHeader;->getFirstOf(I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 157
    invoke-virtual {v2, v0, v1}, Ljdbm/recman/PageHeader;->setPrev(J)V

    .line 159
    iget-object v2, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v2, v7, p2, p3}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    .line 160
    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const/4 v7, 0x1

    invoke-virtual {v2, p2, p3, v7}, Ljdbm/recman/RecordFile;->release(JZ)V

    cmp-long p2, v3, v0

    if-eqz p2, :cond_0

    .line 164
    iget-object p2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p2, v3, v4}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object p2

    .line 165
    invoke-static {p2}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object p2

    .line 166
    invoke-virtual {p2, v5, v6}, Ljdbm/recman/PageHeader;->setNext(J)V

    .line 167
    iget-object p2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p2, v3, v4, v7}, Ljdbm/recman/RecordFile;->release(JZ)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p2, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {p2, p1, v5, v6}, Ljdbm/recman/FileHeader;->setFirstOf(IJ)V

    :goto_0
    cmp-long p2, v5, v0

    if-eqz p2, :cond_1

    .line 173
    iget-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, v5, v6}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object p1

    .line 174
    invoke-static {p1}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object p1

    .line 175
    invoke-virtual {p1, v3, v4}, Ljdbm/recman/PageHeader;->setPrev(J)V

    .line 176
    iget-object p1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, v5, v6, v7}, Ljdbm/recman/RecordFile;->release(JZ)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object p2, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {p2, p1, v3, v4}, Ljdbm/recman/FileHeader;->setLastOf(IJ)V

    :goto_1
    return-void

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "free header page?"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/Error;

    const-string p2, "free free page?"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getFileHeader()Ljdbm/recman/FileHeader;
    .locals 1

    .line 269
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    return-object v0
.end method

.method getFirst(S)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v0, p1}, Ljdbm/recman/FileHeader;->getFirstOf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getLast(S)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    invoke-virtual {v0, p1}, Ljdbm/recman/FileHeader;->getLastOf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getNext(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p1, p2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    invoke-static {v1}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v1

    invoke-virtual {v1}, Ljdbm/recman/PageHeader;->getNext()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v3, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-wide v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    throw v1
.end method

.method getPrev(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    :try_start_0
    iget-object v1, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p1, p2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    invoke-static {v1}, Ljdbm/recman/PageHeader;->getView(Ljdbm/recman/BlockIo;)Ljdbm/recman/PageHeader;

    move-result-object v1

    invoke-virtual {v1}, Ljdbm/recman/PageHeader;->getPrev()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v3, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v3, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-wide v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p1, p2, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    throw v1
.end method

.method rollback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-virtual {v0, v1}, Ljdbm/recman/RecordFile;->discard(Ljdbm/recman/BlockIo;)V

    .line 244
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->rollback()V

    .line 246
    iget-object v0, p0, Ljdbm/recman/PageManager;->file:Ljdbm/recman/RecordFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    iput-object v0, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->readShort(I)S

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v1, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljdbm/recman/FileHeader;

    iget-object v2, p0, Ljdbm/recman/PageManager;->headerBuf:Ljdbm/recman/BlockIo;

    invoke-direct {v0, v2, v1}, Ljdbm/recman/FileHeader;-><init>(Ljdbm/recman/BlockIo;Z)V

    iput-object v0, p0, Ljdbm/recman/PageManager;->header:Ljdbm/recman/FileHeader;

    :goto_0
    return-void
.end method
