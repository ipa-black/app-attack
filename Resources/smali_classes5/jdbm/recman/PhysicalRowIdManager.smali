.class final Ljdbm/recman/PhysicalRowIdManager;
.super Ljava/lang/Object;
.source "PhysicalRowIdManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

.field private pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    .line 71
    iput-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    .line 72
    new-instance p2, Ljdbm/recman/FreePhysicalRowIdPageManager;

    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-direct {p2, p1, v0}, Ljdbm/recman/FreePhysicalRowIdPageManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

    return-void
.end method

.method private alloc(I)Ljdbm/recman/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

    invoke-virtual {v0, p1}, Ljdbm/recman/FreePhysicalRowIdPageManager;->get(I)Ljdbm/recman/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljdbm/recman/PageManager;->getLast(S)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Ljdbm/recman/PhysicalRowIdManager;->allocNew(IJ)Ljdbm/recman/Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private allocNew(IJ)Ljdbm/recman/Location;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 192
    iget-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p2, v5}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide p2

    .line 193
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 194
    invoke-static {v2}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v6

    .line 195
    invoke-virtual {v6, v4}, Ljdbm/recman/DataPage;->setFirst(S)V

    .line 196
    new-instance v7, Ljdbm/recman/RecordHeader;

    invoke-direct {v7, v2, v4}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 197
    invoke-virtual {v7, v3}, Ljdbm/recman/RecordHeader;->setAvailableSize(I)V

    .line 198
    invoke-virtual {v7, v3}, Ljdbm/recman/RecordHeader;->setCurrentSize(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v2

    .line 201
    invoke-static {v2}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v6

    .line 206
    :goto_0
    invoke-virtual {v6}, Ljdbm/recman/DataPage;->getFirst()S

    move-result v6

    if-nez v6, :cond_1

    .line 209
    iget-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p2, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 210
    invoke-direct {p0, p1, v0, v1}, Ljdbm/recman/PhysicalRowIdManager;->allocNew(IJ)Ljdbm/recman/Location;

    move-result-object p1

    return-object p1

    .line 213
    :cond_1
    new-instance v7, Ljdbm/recman/RecordHeader;

    invoke-direct {v7, v2, v6}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 214
    :goto_1
    invoke-virtual {v7}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_3

    const/16 v8, 0x2000

    if-ge v6, v8, :cond_3

    .line 215
    invoke-virtual {v7}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v7

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    int-to-short v6, v6

    if-ne v6, v8, :cond_2

    .line 218
    iget-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p2, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 219
    invoke-direct {p0, p1, v0, v1}, Ljdbm/recman/PhysicalRowIdManager;->allocNew(IJ)Ljdbm/recman/Location;

    move-result-object p1

    return-object p1

    .line 222
    :cond_2
    new-instance v7, Ljdbm/recman/RecordHeader;

    invoke-direct {v7, v2, v6}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    goto :goto_1

    :cond_3
    if-ne v6, v9, :cond_4

    .line 228
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0, v2}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 233
    :cond_4
    new-instance v0, Ljdbm/recman/Location;

    invoke-direct {v0, p2, p3, v6}, Ljdbm/recman/Location;-><init>(JS)V

    rsub-int v1, v6, 0x1ff8

    const/16 v2, 0x18

    if-ge v1, p1, :cond_7

    sub-int v6, p1, v1

    const/16 v8, 0x1fec

    .line 239
    rem-int/2addr v6, v8

    rsub-int v6, v6, 0x1fec

    if-ge v6, v2, :cond_5

    add-int/2addr p1, v6

    .line 245
    :cond_5
    invoke-virtual {v7, p1}, Ljdbm/recman/RecordHeader;->setAvailableSize(I)V

    .line 246
    iget-object v2, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v2, p2, p3, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    sub-int/2addr p1, v1

    :goto_2
    if-lt p1, v8, :cond_6

    .line 251
    iget-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p2, v5}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide p2

    .line 252
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 253
    invoke-static {v1}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v3}, Ljdbm/recman/DataPage;->setFirst(S)V

    .line 255
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p2, p3, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    add-int/lit16 p1, p1, -0x1fec

    goto :goto_2

    :cond_6
    if-lez p1, :cond_9

    .line 260
    iget-object p2, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p2, v5}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide p2

    .line 261
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, p2, p3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 262
    invoke-static {v1}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    move-result-object v1

    add-int/2addr p1, v4

    int-to-short p1, p1

    .line 263
    invoke-virtual {v1, p1}, Ljdbm/recman/DataPage;->setFirst(S)V

    .line 264
    iget-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, p2, p3, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    goto :goto_3

    :cond_7
    sub-int v3, v1, p1

    if-gt v3, v2, :cond_8

    move p1, v1

    .line 273
    :cond_8
    invoke-virtual {v7, p1}, Ljdbm/recman/RecordHeader;->setAvailableSize(I)V

    .line 274
    iget-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1, p2, p3, v5}, Ljdbm/recman/RecordFile;->release(JZ)V

    :cond_9
    :goto_3
    return-object v0
.end method

.method private free(Ljdbm/recman/Location;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    .line 286
    invoke-static {v0}, Ljdbm/recman/DataPage;->getDataPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/DataPage;

    .line 287
    new-instance v1, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v2

    invoke-direct {v1, v0, v2}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    const/4 v0, 0x0

    .line 288
    invoke-virtual {v1, v0}, Ljdbm/recman/RecordHeader;->setCurrentSize(I)V

    .line 289
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Ljdbm/recman/RecordFile;->release(JZ)V

    .line 292
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->freeman:Ljdbm/recman/FreePhysicalRowIdPageManager;

    invoke-virtual {v1}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljdbm/recman/FreePhysicalRowIdPageManager;->put(Ljdbm/recman/Location;I)V

    return-void
.end method

.method private write(Ljdbm/recman/Location;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;J)V

    .line 303
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 304
    new-instance v2, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-direct {v2, v1, v3}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 305
    invoke-virtual {v2, p4}, Ljdbm/recman/RecordHeader;->setCurrentSize(I)V

    const/4 v2, 0x1

    if-nez p4, :cond_0

    .line 307
    iget-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v2}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result p1

    add-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    :cond_1
    :goto_0
    if-lez p4, :cond_3

    rsub-int v3, p1, 0x2000

    if-ge p4, v3, :cond_2

    move v3, p4

    .line 322
    :cond_2
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v4

    invoke-static {p2, p3, v4, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p4, v3

    add-int/2addr p3, v3

    .line 329
    iget-object v3, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Ljdbm/recman/RecordFile;->release(JZ)V

    if-lez p4, :cond_1

    .line 332
    iget-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object p1

    const/16 v1, 0x14

    move v6, v1

    move-object v1, p1

    move p1, v6

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method delete(Ljdbm/recman/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Ljdbm/recman/PhysicalRowIdManager;->free(Ljdbm/recman/Location;)V

    return-void
.end method

.method fetch(Ljdbm/recman/Location;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljdbm/recman/PageCursor;

    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ljdbm/recman/PageCursor;-><init>(Ljdbm/recman/PageManager;J)V

    .line 127
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    .line 128
    new-instance v2, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-direct {v2, v1, v3}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 131
    invoke-virtual {v2}, Ljdbm/recman/RecordHeader;->getCurrentSize()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 133
    iget-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->getCurrent()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v4}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-object v3

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result p1

    add-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    :cond_1
    :goto_0
    if-lez v2, :cond_3

    rsub-int v5, p1, 0x2000

    if-ge v2, v5, :cond_2

    move v5, v2

    .line 147
    :cond_2
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v6

    invoke-static {v6, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v5

    add-int/2addr v4, v5

    .line 155
    iget-object v5, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v5, v1}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    if-lez v2, :cond_1

    .line 158
    iget-object p1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/PageCursor;->next()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object p1

    const/16 v1, 0x14

    move v7, v1

    move-object v1, p1

    move p1, v7

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method insert([BII)Ljdbm/recman/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p3}, Ljdbm/recman/PhysicalRowIdManager;->alloc(I)Ljdbm/recman/Location;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0, p1, p2, p3}, Ljdbm/recman/PhysicalRowIdManager;->write(Ljdbm/recman/Location;[BII)V

    return-object v0
.end method

.method update(Ljdbm/recman/Location;[BII)Ljdbm/recman/Location;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    .line 95
    new-instance v1, Ljdbm/recman/RecordHeader;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v2

    invoke-direct {v1, v0, v2}, Ljdbm/recman/RecordHeader;-><init>(Ljdbm/recman/BlockIo;S)V

    .line 96
    invoke-virtual {v1}, Ljdbm/recman/RecordHeader;->getAvailableSize()I

    move-result v1

    if-le p4, v1, :cond_0

    .line 98
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v0}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 99
    invoke-direct {p0, p1}, Ljdbm/recman/PhysicalRowIdManager;->free(Ljdbm/recman/Location;)V

    .line 100
    invoke-direct {p0, p4}, Ljdbm/recman/PhysicalRowIdManager;->alloc(I)Ljdbm/recman/Location;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Ljdbm/recman/PhysicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v0}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    .line 106
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Ljdbm/recman/PhysicalRowIdManager;->write(Ljdbm/recman/Location;[BII)V

    return-object p1
.end method
