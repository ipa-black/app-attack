.class final Ljdbm/recman/LogicalRowIdManager;
.super Ljava/lang/Object;
.source "LogicalRowIdManager.java"


# instance fields
.field private file:Ljdbm/recman/RecordFile;

.field private freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

.field private pageman:Ljdbm/recman/PageManager;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    .line 68
    iput-object p2, p0, Ljdbm/recman/LogicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    .line 69
    new-instance v0, Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-direct {v0, p1, p2}, Ljdbm/recman/FreeLogicalRowIdPageManager;-><init>(Ljdbm/recman/RecordFile;Ljdbm/recman/PageManager;)V

    iput-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    return-void
.end method


# virtual methods
.method delete(Ljdbm/recman/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-virtual {v0, p1}, Ljdbm/recman/FreeLogicalRowIdPageManager;->put(Ljdbm/recman/Location;)V

    return-void
.end method

.method fetch(Ljdbm/recman/Location;)Ljdbm/recman/Location;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    invoke-static {v0}, Ljdbm/recman/TranslationPage;->getTranslationPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/TranslationPage;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    :try_start_0
    new-instance v2, Ljdbm/recman/Location;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v3

    invoke-virtual {v0, v3}, Ljdbm/recman/TranslationPage;->get(S)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    invoke-direct {v2, v0}, Ljdbm/recman/Location;-><init>(Ljdbm/recman/PhysicalRowId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v1}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-object v2

    :catchall_0
    move-exception v0

    iget-object v2, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljdbm/recman/RecordFile;->release(JZ)V

    throw v0
.end method

.method insert(Ljdbm/recman/Location;)Ljdbm/recman/Location;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-virtual {v0}, Ljdbm/recman/FreeLogicalRowIdPageManager;->get()Ljdbm/recman/Location;

    move-result-object v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->pageman:Ljdbm/recman/PageManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljdbm/recman/PageManager;->allocate(S)J

    move-result-wide v0

    const/16 v2, 0x12

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x331

    if-ge v3, v4, :cond_0

    .line 87
    iget-object v4, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    new-instance v5, Ljdbm/recman/Location;

    invoke-direct {v5, v0, v1, v2}, Ljdbm/recman/Location;-><init>(JS)V

    invoke-virtual {v4, v5}, Ljdbm/recman/FreeLogicalRowIdPageManager;->put(Ljdbm/recman/Location;)V

    add-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->freeman:Ljdbm/recman/FreeLogicalRowIdPageManager;

    invoke-virtual {v0}, Ljdbm/recman/FreeLogicalRowIdPageManager;->get()Ljdbm/recman/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string v0, "couldn\'t obtain free translation"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, p1}, Ljdbm/recman/LogicalRowIdManager;->update(Ljdbm/recman/Location;Ljdbm/recman/Location;)V

    return-object v0
.end method

.method update(Ljdbm/recman/Location;Ljdbm/recman/Location;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/RecordFile;->get(J)Ljdbm/recman/BlockIo;

    move-result-object v0

    invoke-static {v0}, Ljdbm/recman/TranslationPage;->getTranslationPageView(Ljdbm/recman/BlockIo;)Ljdbm/recman/TranslationPage;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Ljdbm/recman/Location;->getOffset()S

    move-result v1

    invoke-virtual {v0, v1}, Ljdbm/recman/TranslationPage;->get(S)Ljdbm/recman/PhysicalRowId;

    move-result-object v0

    .line 121
    invoke-virtual {p2}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljdbm/recman/PhysicalRowId;->setBlock(J)V

    .line 122
    invoke-virtual {p2}, Ljdbm/recman/Location;->getOffset()S

    move-result p2

    invoke-virtual {v0, p2}, Ljdbm/recman/PhysicalRowId;->setOffset(S)V

    .line 123
    iget-object p2, p0, Ljdbm/recman/LogicalRowIdManager;->file:Ljdbm/recman/RecordFile;

    invoke-virtual {p1}, Ljdbm/recman/Location;->getBlock()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Ljdbm/recman/RecordFile;->release(JZ)V

    return-void
.end method
