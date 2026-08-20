.class public Ljdbm/htree/HTree;
.super Ljava/lang/Object;
.source "HTree.java"


# instance fields
.field private _root:Ljdbm/htree/HashDirectory;


# direct methods
.method private constructor <init>(Ljdbm/htree/HashDirectory;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    return-void
.end method

.method public static createInstance(Ljdbm/RecordManager;)Ljdbm/htree/HTree;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljdbm/htree/HashDirectory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljdbm/htree/HashDirectory;-><init>(B)V

    .line 94
    invoke-interface {p0, v0}, Ljdbm/RecordManager;->insert(Ljava/lang/Object;)J

    move-result-wide v1

    .line 95
    invoke-virtual {v0, p0, v1, v2}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 97
    new-instance p0, Ljdbm/htree/HTree;

    invoke-direct {p0, v0}, Ljdbm/htree/HTree;-><init>(Ljdbm/htree/HashDirectory;)V

    return-object p0
.end method

.method public static load(Ljdbm/RecordManager;J)Ljdbm/htree/HTree;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p0, p1, p2}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/htree/HashDirectory;

    .line 114
    invoke-virtual {v0, p0, p1, p2}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 115
    new-instance p0, Ljdbm/htree/HTree;

    invoke-direct {p0, v0}, Ljdbm/htree/HTree;-><init>(Ljdbm/htree/HashDirectory;)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0, p1}, Ljdbm/htree/HashDirectory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRecid()J
    .locals 2

    .line 184
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0}, Ljdbm/htree/HashDirectory;->getRecid()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized keys()Ljdbm/helper/FastIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0}, Ljdbm/htree/HashDirectory;->keys()Ljdbm/helper/FastIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0, p1, p2}, Ljdbm/htree/HashDirectory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0, p1}, Ljdbm/htree/HashDirectory;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized values()Ljdbm/helper/FastIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Ljdbm/htree/HTree;->_root:Ljdbm/htree/HashDirectory;

    invoke-virtual {v0}, Ljdbm/htree/HashDirectory;->values()Ljdbm/helper/FastIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
