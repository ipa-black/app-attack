.class final Ljdbm/htree/HashDirectory;
.super Ljdbm/htree/HashNode;
.source "HashDirectory.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/htree/HashDirectory$HDIterator;
    }
.end annotation


# static fields
.field static final BIT_SIZE:I = 0x8

.field static final MAX_CHILDREN:I = 0x100

.field static final MAX_DEPTH:I = 0x3

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private _children:[J

.field private _depth:B

.field private transient _recid:J

.field private transient _recman:Ljdbm/RecordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljdbm/htree/HashNode;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljdbm/htree/HashNode;-><init>()V

    .line 137
    iput-byte p1, p0, Ljdbm/htree/HashDirectory;->_depth:B

    const/16 p1, 0x100

    .line 138
    new-array p1, p1, [J

    iput-object p1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    return-void
.end method

.method static synthetic access$000(Ljdbm/htree/HashDirectory;)[J
    .locals 0

    .line 68
    iget-object p0, p0, Ljdbm/htree/HashDirectory;->_children:[J

    return-object p0
.end method

.method static synthetic access$100(Ljdbm/htree/HashDirectory;)Ljdbm/RecordManager;
    .locals 0

    .line 68
    iget-object p0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    return-object p0
.end method

.method private hashCode(Ljava/lang/Object;)I
    .locals 1

    .line 342
    invoke-virtual {p0}, Ljdbm/htree/HashDirectory;->hashMask()I

    move-result v0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    and-int/2addr p1, v0

    .line 345
    iget-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    rsub-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x8

    ushr-int/2addr p1, v0

    .line 346
    rem-int/lit16 p1, p1, 0x100

    return p1
.end method


# virtual methods
.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Ljdbm/htree/HashDirectory;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 187
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aget-wide v0, v1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_0
    iget-object v2, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v2, v0, v1}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdbm/htree/HashNode;

    .line 195
    instance-of v3, v2, Ljdbm/htree/HashDirectory;

    if-eqz v3, :cond_1

    .line 197
    check-cast v2, Ljdbm/htree/HashDirectory;

    .line 198
    iget-object v3, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v2, v3, v0, v1}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 199
    invoke-virtual {v2, p1}, Ljdbm/htree/HashDirectory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    check-cast v2, Ljdbm/htree/HashBucket;

    .line 203
    invoke-virtual {v2, p1}, Ljdbm/htree/HashBucket;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getRecid()J
    .locals 2

    .line 160
    iget-wide v0, p0, Ljdbm/htree/HashDirectory;->_recid:J

    return-wide v0
.end method

.method hashMask()I
    .locals 2

    .line 363
    iget-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    rsub-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    shl-int v0, v1, v0

    return v0
.end method

.method isEmpty()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 169
    :goto_0
    iget-object v2, p0, Ljdbm/htree/HashDirectory;->_children:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 170
    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method keys()Ljdbm/helper/FastIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    new-instance v0, Ljdbm/htree/HashDirectory$HDIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljdbm/htree/HashDirectory$HDIterator;-><init>(Ljdbm/htree/HashDirectory;Z)V

    return-object v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Ljdbm/htree/HashDirectory;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Ljdbm/htree/HashDirectory;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 223
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Ljdbm/htree/HashBucket;

    iget-byte v2, p0, Ljdbm/htree/HashDirectory;->_depth:B

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljdbm/htree/HashBucket;-><init>(I)V

    .line 229
    invoke-virtual {v1, p1, p2}, Ljdbm/htree/HashBucket;->addElement(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 231
    iget-object p2, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {p2, v1}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 232
    iget-object p2, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v1, p2, v0

    .line 234
    iget-object p2, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v0, p0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {p2, v0, v1, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    return-object p1

    .line 239
    :cond_1
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v1, v2, v3}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/htree/HashNode;

    .line 241
    instance-of v4, v1, Ljdbm/htree/HashDirectory;

    if-eqz v4, :cond_2

    .line 243
    check-cast v1, Ljdbm/htree/HashDirectory;

    .line 244
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v1, v0, v2, v3}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 245
    invoke-virtual {v1, p1, p2}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 248
    :cond_2
    check-cast v1, Ljdbm/htree/HashBucket;

    .line 249
    invoke-virtual {v1}, Ljdbm/htree/HashBucket;->hasRoom()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    invoke-virtual {v1, p1, p2}, Ljdbm/htree/HashBucket;->addElement(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 251
    iget-object p2, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {p2, v2, v3, v1}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    return-object p1

    .line 256
    :cond_3
    iget-byte v4, p0, Ljdbm/htree/HashDirectory;->_depth:B

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 260
    new-instance v5, Ljdbm/htree/HashDirectory;

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    invoke-direct {v5, v4}, Ljdbm/htree/HashDirectory;-><init>(B)V

    .line 261
    iget-object v4, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v4, v5}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v6

    .line 262
    iget-object v4, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v5, v4, v6, v7}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 264
    iget-object v4, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v6, v4, v0

    .line 265
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v6, p0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v0, v6, v7, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, v2, v3}, Ljdbm/RecordManager;->delete(J)V

    .line 271
    invoke-virtual {v1}, Ljdbm/htree/HashBucket;->getKeys()Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    invoke-virtual {v1}, Ljdbm/htree/HashBucket;->getValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 275
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v5, p1, p2}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 257
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Cannot create deeper directory. Depth="

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    .line 406
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Ljdbm/htree/HashDirectory;->_children:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Ljdbm/htree/HashDirectory;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 296
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 301
    :cond_0
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v1, v2, v3}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/htree/HashNode;

    .line 304
    instance-of v6, v1, Ljdbm/htree/HashDirectory;

    if-eqz v6, :cond_2

    .line 306
    check-cast v1, Ljdbm/htree/HashDirectory;

    .line 307
    iget-object v6, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-virtual {v1, v6, v2, v3}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 308
    invoke-virtual {v1, p1}, Ljdbm/htree/HashDirectory;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {v1}, Ljdbm/htree/HashDirectory;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v1, v2, v3}, Ljdbm/RecordManager;->delete(J)V

    .line 313
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v4, v1, v0

    .line 314
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v1, p0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v0, v1, v2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    :cond_1
    return-object p1

    .line 320
    :cond_2
    check-cast v1, Ljdbm/htree/HashBucket;

    .line 321
    invoke-virtual {v1, p1}, Ljdbm/htree/HashBucket;->removeElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 323
    invoke-virtual {v1}, Ljdbm/htree/HashBucket;->getElementCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_3

    .line 324
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v0, v2, v3, v1}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_3
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    invoke-interface {v1, v2, v3}, Ljdbm/RecordManager;->delete(J)V

    .line 328
    iget-object v1, p0, Ljdbm/htree/HashDirectory;->_children:[J

    aput-wide v4, v1, v0

    .line 329
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    iget-wide v1, p0, Ljdbm/htree/HashDirectory;->_recid:J

    invoke-interface {v0, v1, v2, p0}, Ljdbm/RecordManager;->update(JLjava/lang/Object;)V

    :cond_4
    :goto_0
    return-object p1
.end method

.method setPersistenceContext(Ljdbm/RecordManager;J)V
    .locals 0

    .line 151
    iput-object p1, p0, Ljdbm/htree/HashDirectory;->_recman:Ljdbm/RecordManager;

    .line 152
    iput-wide p2, p0, Ljdbm/htree/HashDirectory;->_recid:J

    return-void
.end method

.method values()Ljdbm/helper/FastIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljdbm/htree/HashDirectory$HDIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljdbm/htree/HashDirectory$HDIterator;-><init>(Ljdbm/htree/HashDirectory;Z)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-byte v0, p0, Ljdbm/htree/HashDirectory;->_depth:B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 396
    iget-object v0, p0, Ljdbm/htree/HashDirectory;->_children:[J

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
