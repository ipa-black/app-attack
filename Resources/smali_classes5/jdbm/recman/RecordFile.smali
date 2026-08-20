.class public final Ljdbm/recman/RecordFile;
.super Ljava/lang/Object;
.source "RecordFile.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x2000

.field static final cleanData:[B

.field static final extension:Ljava/lang/String; = ".db"


# instance fields
.field private final dirty:Ljava/util/HashMap;

.field private file:Ljava/io/RandomAccessFile;

.field private final fileName:Ljava/lang/String;

.field private final free:Ljava/util/LinkedList;

.field private final inTxn:Ljava/util/HashMap;

.field private final inUse:Ljava/util/HashMap;

.field private transactionsDisabled:Z

.field final txnMgr:Ljdbm/recman/TransactionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    .line 82
    new-array v0, v0, [B

    sput-object v0, Ljdbm/recman/RecordFile;->cleanData:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    .line 97
    iput-object p1, p0, Ljdbm/recman/RecordFile;->fileName:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, ".db"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    .line 99
    new-instance p1, Ljdbm/recman/TransactionManager;

    invoke-direct {p1, p0}, Ljdbm/recman/TransactionManager;-><init>(Ljdbm/recman/RecordFile;)V

    iput-object p1, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    return-void
.end method

.method private getNewNode(J)Ljdbm/recman/BlockIo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 351
    new-instance v0, Ljdbm/recman/BlockIo;

    const/16 v2, 0x2000

    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v2}, Ljdbm/recman/BlockIo;-><init>(J[B)V

    .line 353
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljdbm/recman/BlockIo;->setBlockId(J)V

    .line 354
    invoke-virtual {v0, v1}, Ljdbm/recman/BlockIo;->setView(Ljdbm/recman/BlockView;)V

    return-object v0
.end method

.method private static read(Ljava/io/RandomAccessFile;J[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-lez p4, :cond_1

    .line 402
    invoke-virtual {p0, p3, p2, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 404
    sget-object p0, Ljdbm/recman/RecordFile;->cleanData:[B

    invoke-static {p0, p1, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    sub-int/2addr p4, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private showList(Ljava/util/Iterator;)V
    .locals 4

    const/4 v0, 0x0

    .line 332
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "elem "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Ljdbm/recman/RecordFile;->commit()V

    .line 292
    :cond_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->shutdown()V

    .line 294
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    return-void

    .line 306
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: inUse blocks at close time"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 308
    new-instance v0, Ljava/lang/Error;

    const-string v1, "inUse blocks at close time"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: dirty blocks at close time"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 303
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Dirty blocks at close time"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_3
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 296
    new-instance v0, Ljava/lang/Error;

    const-string v1, "In transaction not empty"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method commit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 227
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "in use list not empty at commit time ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 238
    :cond_2
    iget-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->start()V

    .line 242
    :cond_3
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 246
    iget-boolean v2, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    mul-long/2addr v2, v4

    .line 248
    iget-object v4, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 249
    iget-object v2, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 250
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->setClean()V

    .line 251
    iget-object v2, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_4
    iget-object v2, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v2, v1}, Ljdbm/recman/TransactionManager;->add(Ljdbm/recman/BlockIo;)V

    .line 255
    iget-object v2, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    :cond_5
    iget-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-nez v0, :cond_6

    .line 259
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->commit()V

    :cond_6
    return-void
.end method

.method disableTransactions()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    return-void
.end method

.method discard(Ljdbm/recman/BlockIo;)V
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 213
    iget-object p1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method forceClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->forceClose()V

    .line 324
    iget-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method get(J)Ljdbm/recman/BlockIo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 129
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    if-eqz v1, :cond_0

    .line 131
    iget-object p1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 135
    :cond_0
    iget-object v1, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/recman/BlockIo;

    if-eqz v1, :cond_1

    .line 137
    iget-object p1, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 141
    :cond_1
    iget-object v1, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdbm/recman/BlockIo;

    .line 143
    invoke-virtual {v2}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 146
    iget-object p1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 152
    :cond_3
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 157
    invoke-direct {p0, p1, p2}, Ljdbm/recman/RecordFile;->getNewNode(J)Ljdbm/recman/BlockIo;

    move-result-object v1

    const-wide/16 v2, 0x2000

    mul-long/2addr p1, v2

    .line 159
    iget-object v2, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/16 v3, 0x2000

    if-lez v2, :cond_4

    iget-object v2, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-gtz v2, :cond_4

    .line 160
    iget-object v2, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v4

    invoke-static {v2, p1, p2, v4, v3}, Ljdbm/recman/RecordFile;->read(Ljava/io/RandomAccessFile;J[BI)V

    goto :goto_0

    .line 162
    :cond_4
    sget-object p1, Ljdbm/recman/RecordFile;->cleanData:[B

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :goto_0
    iget-object p1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->setClean()V

    return-object v1

    .line 153
    :cond_5
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "double get for block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFileName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Ljdbm/recman/RecordFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method release(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->isDirty()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 182
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->setDirty()V

    .line 183
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/recman/RecordFile;->release(Ljdbm/recman/BlockIo;)V

    return-void

    .line 180
    :cond_1
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "bad blockid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, " on release"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method release(Ljdbm/recman/BlockIo;)V
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 193
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_0
    iget-boolean v1, p0, Ljdbm/recman/RecordFile;->transactionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method releaseFromTransaction(Ljdbm/recman/BlockIo;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 380
    iget-object v1, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 381
    iget-object p2, p0, Ljdbm/recman/RecordFile;->free:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method rollback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Ljdbm/recman/RecordFile;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 276
    iget-object v0, p0, Ljdbm/recman/RecordFile;->txnMgr:Ljdbm/recman/TransactionManager;

    invoke-virtual {v0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromDisk()V

    .line 278
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 280
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "in txn list not empty at rollback time ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljdbm/recman/RecordFile;->inTxn:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdbm/recman/RecordFile;->showList(Ljava/util/Iterator;)V

    .line 270
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "in use list not empty at rollback time ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljdbm/recman/RecordFile;->inUse:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method synch(Ljdbm/recman/BlockIo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v1

    const-wide/16 v3, 0x2000

    mul-long/2addr v1, v3

    .line 366
    iget-object p1, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 367
    iget-object p1, p0, Ljdbm/recman/RecordFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_0
    return-void
.end method
