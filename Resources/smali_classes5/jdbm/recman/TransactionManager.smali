.class public final Ljdbm/recman/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/recman/TransactionManager$BlockIoComparator;
    }
.end annotation


# static fields
.field static final DEFAULT_TXNS_IN_LOG:I = 0xa

.field static final extension:Ljava/lang/String; = ".lg"


# instance fields
.field private _maxTxns:I

.field private curTxn:I

.field private fos:Ljava/io/FileOutputStream;

.field private oos:Ljava/io/ObjectOutputStream;

.field private owner:Ljdbm/recman/RecordFile;

.field private txns:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljdbm/recman/RecordFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 83
    iput v0, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    .line 89
    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 103
    iput-object p1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    .line 104
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->recover()V

    .line 105
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->open()V

    return-void
.end method

.method private close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->sync()V

    .line 341
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 342
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    .line 344
    iput-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    return-void
.end method

.method private discardBlocks(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 276
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->decrementTransactionCount()V

    .line 277
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljdbm/recman/RecordFile;->releaseFromTransaction(Ljdbm/recman/BlockIo;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeLogName()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v1}, Ljdbm/recman/RecordFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".lg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->makeLogName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    .line 191
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    const/16 v1, 0x1360

    .line 192
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 193
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    const/4 v0, -0x1

    .line 194
    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    return-void
.end method

.method private recover()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->makeLogName()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    .line 208
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 209
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v4, 0x1360

    if-ne v3, v4, :cond_2

    .line 223
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljdbm/recman/TransactionManager;->synchronizeBlocks(Ljava/util/Iterator;Z)V

    .line 235
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->sync()V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catch_1
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unexcepted exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Bad magic on log file"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 216
    :catch_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private setClean(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 267
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->setClean()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 323
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 324
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method private synchronizeBlocks(Ljava/util/Iterator;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 251
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v1, v0}, Ljdbm/recman/RecordFile;->synch(Ljdbm/recman/BlockIo;)V

    if-eqz p2, :cond_0

    .line 253
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->decrementTransactionCount()V

    .line 254
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->isInTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljdbm/recman/RecordFile;->releaseFromTransaction(Ljdbm/recman/BlockIo;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synchronizeLogFromMemory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->close()V

    .line 157
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Ljdbm/recman/TransactionManager$BlockIoComparator;

    invoke-direct {v1}, Ljdbm/recman/TransactionManager$BlockIoComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 161
    :goto_0
    iget v2, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    if-ge v1, v2, :cond_3

    .line 162
    iget-object v2, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 166
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdbm/recman/BlockIo;

    .line 168
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v3}, Ljdbm/recman/BlockIo;->decrementTransactionCount()V

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    iget-object v2, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljdbm/recman/TransactionManager;->synchronizeBlocks(Ljava/util/Iterator;Z)V

    .line 183
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->owner:Ljdbm/recman/RecordFile;

    invoke-virtual {v0}, Ljdbm/recman/RecordFile;->sync()V

    .line 184
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->open()V

    return-void
.end method


# virtual methods
.method add(Ljdbm/recman/BlockIo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p1}, Ljdbm/recman/BlockIo;->incrementTransactionCount()V

    .line 302
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v1, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v2, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 310
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->sync()V

    .line 313
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v1, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljdbm/recman/TransactionManager;->setClean(Ljava/util/ArrayList;)V

    .line 317
    new-instance v0, Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    return-void
.end method

.method forceClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 353
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Ljdbm/recman/TransactionManager;->oos:Ljava/io/ObjectOutputStream;

    .line 355
    iput-object v0, p0, Ljdbm/recman/TransactionManager;->fos:Ljava/io/FileOutputStream;

    return-void
.end method

.method public setMaximumTransactionsInLog(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_1

    .line 138
    iget v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    iput p1, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    .line 143
    new-array p1, p1, [Ljava/util/ArrayList;

    iput-object p1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change setting while transactions are pending in the log"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \'maxTxns\' must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromMemory()V

    .line 333
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->close()V

    return-void
.end method

.method start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 290
    iget v1, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    if-ne v0, v1, :cond_0

    .line 291
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromMemory()V

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    .line 294
    :cond_0
    iget-object v0, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    iget v1, p0, Ljdbm/recman/TransactionManager;->curTxn:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method

.method public synchronizeLog()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->synchronizeLogFromMemory()V

    return-void
.end method

.method synchronizeLogFromDisk()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->close()V

    const/4 v0, 0x0

    .line 366
    :goto_0
    iget v1, p0, Ljdbm/recman/TransactionManager;->_maxTxns:I

    if-ge v0, v1, :cond_1

    .line 367
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    invoke-direct {p0, v1}, Ljdbm/recman/TransactionManager;->discardBlocks(Ljava/util/ArrayList;)V

    .line 370
    iget-object v1, p0, Ljdbm/recman/TransactionManager;->txns:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->recover()V

    .line 374
    invoke-direct {p0}, Ljdbm/recman/TransactionManager;->open()V

    return-void
.end method
