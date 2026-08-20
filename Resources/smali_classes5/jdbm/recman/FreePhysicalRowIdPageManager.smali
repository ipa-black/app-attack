.class final Ljdbm/recman/FreePhysicalRowIdPageManager;
.super Ljava/lang/Object;
.source "FreePhysicalRowIdPageManager.java"


# instance fields
.field protected _file:Ljdbm/recman/RecordFile;

.field protected _pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    .line 72
    iput-object p2, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    return-void
.end method


# virtual methods
.method get(I)Ljdbm/recman/Location;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    .line 88
    :goto_0
    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    invoke-static {v1}, Ljdbm/recman/FreePhysicalRowIdPage;->getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p1}, Ljdbm/recman/FreePhysicalRowIdPage;->getFirstLargerThan(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 94
    new-instance p1, Ljdbm/recman/Location;

    invoke-virtual {v1, v3}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v4

    invoke-direct {p1, v4}, Ljdbm/recman/Location;-><init>(Ljdbm/recman/PhysicalRowId;)V

    .line 96
    invoke-virtual {v1, v3}, Ljdbm/recman/FreePhysicalRowIdPage;->get(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v4

    invoke-virtual {v4}, Ljdbm/recman/FreePhysicalRowId;->getSize()I

    .line 97
    invoke-virtual {v1, v3}, Ljdbm/recman/FreePhysicalRowIdPage;->free(I)V

    .line 98
    invoke-virtual {v1}, Ljdbm/recman/FreePhysicalRowIdPage;->getCount()S

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 101
    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljdbm/recman/PageManager;->free(SJ)V

    goto :goto_1

    .line 103
    :cond_0
    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    :goto_1
    return-object p1

    .line 109
    :cond_1
    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method put(Ljdbm/recman/Location;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v5

    .line 127
    iget-object v1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v5, v6}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 128
    invoke-static {v1}, Ljdbm/recman/FreePhysicalRowIdPage;->getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;

    move-result-object v7

    .line 130
    invoke-virtual {v7}, Ljdbm/recman/FreePhysicalRowIdPage;->getFirstFree()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 132
    invoke-virtual {v7, v8}, Ljdbm/recman/FreePhysicalRowIdPage;->alloc(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v7, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v7, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0, v2}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide v5

    .line 141
    iget-object v0, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0, v5, v6}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    .line 142
    invoke-static {v0}, Ljdbm/recman/FreePhysicalRowIdPage;->getFreePhysicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreePhysicalRowIdPage;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Ljdbm/recman/FreePhysicalRowIdPage;->alloc(I)Ljdbm/recman/FreePhysicalRowId;

    move-result-object v0

    .line 147
    :cond_2
    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/FreePhysicalRowId;->setBlock(J)V

    .line 148
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result p1

    invoke-virtual {v0, p1}, Ljdbm/recman/FreePhysicalRowId;->setOffset(S)V

    .line 149
    invoke-virtual {v0, p2}, Ljdbm/recman/FreePhysicalRowId;->setSize(I)V

    .line 150
    iget-object p1, p0, Ljdbm/recman/FreePhysicalRowIdPageManager;->_file:Ljdbm/recman/RecordFile;

    const/4 p2, 0x1

    invoke-virtual {p1, v5, v6, p2}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-void
.end method
