.class public Lorg/apache/mina/util/BlockingSet;
.super Ljava/util/HashSet;
.source "BlockingSet.java"


# static fields
.field private static final serialVersionUID:J = 0x2d37383838373735L


# instance fields
.field private waiters:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget v0, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I

    if-lez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 46
    invoke-super {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForNewItem()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget v0, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/util/BlockingSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_2
    iget v0, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 66
    :try_start_3
    iget v1, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/mina/util/BlockingSet;->waiters:I

    .line 67
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
