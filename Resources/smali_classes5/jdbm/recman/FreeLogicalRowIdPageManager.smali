.class final Ljdbm/recman/FreeLogicalRowIdPageManager;
.super Ljava/lang/Object;
.source "FreeLogicalRowIdPageManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    .line 69
    iput-object p2, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    return-void
.end method


# virtual methods
.method get()Ljdbm/recman/Location;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    .line 82
    :goto_0
    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    invoke-static {v1}, Ljdbm/recman/FreeLogicalRowIdPage;->getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljdbm/recman/FreeLogicalRowIdPage;->getFirstAllocated()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 88
    new-instance v4, Ljdbm/recman/Location;

    invoke-virtual {v1, v3}, Ljdbm/recman/FreeLogicalRowIdPage;->get(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v6

    invoke-direct {v4, v6}, Ljdbm/recman/Location;-><init>(Ljdbm/recman/PhysicalRowId;)V

    .line 90
    invoke-virtual {v1, v3}, Ljdbm/recman/FreeLogicalRowIdPage;->free(I)V

    .line 91
    invoke-virtual {v1}, Ljdbm/recman/FreeLogicalRowIdPage;->getCount()S

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 94
    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Ljdbm/recman/PageManager;->free(SJ)V

    goto :goto_1

    .line 97
    :cond_0
    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    :goto_1
    return-object v4

    .line 103
    :cond_1
    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method put(Ljdbm/recman/Location;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;S)V

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v5

    .line 120
    iget-object v1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v5, v6}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 121
    invoke-static {v1}, Ljdbm/recman/FreeLogicalRowIdPage;->getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Ljdbm/recman/FreeLogicalRowIdPage;->getFirstFree()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 125
    invoke-virtual {v7, v8}, Ljdbm/recman/FreeLogicalRowIdPage;->alloc(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_0
    iget-object v7, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v7, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {v0, v2}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide v5

    .line 134
    iget-object v0, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0, v5, v6}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljdbm/recman/FreeLogicalRowIdPage;->getFreeLogicalRowIdPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/FreeLogicalRowIdPage;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Ljdbm/recman/FreeLogicalRowIdPage;->alloc(I)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    .line 139
    :cond_2
    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/PhysicalRowId;->setBlock(J)V

    .line 140
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result p1

    invoke-virtual {v0, p1}, Ljdbm/recman/PhysicalRowId;->setOffset(S)V

    .line 141
    iget-object p1, p0, Ljdbm/recman/FreeLogicalRowIdPageManager;->file:Ljdbm/recman/RecordFile;

    const/4 v0, 0x1

    invoke-virtual {p1, v5, v6, v0}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-void
.end method
