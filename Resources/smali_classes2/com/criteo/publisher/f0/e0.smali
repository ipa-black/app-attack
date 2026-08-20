.class Lcom/criteo/publisher/f0/e0;
.super Ljava/lang/Object;
.source "TapeSendingQueue.java"

# interfaces
.implements Lcom/criteo/publisher/f0/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/f0/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/squareup/tape/ObjectQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/tape/ObjectQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Method;

.field private e:Lcom/squareup/tape/QueueFile;

.field private final f:Lcom/criteo/publisher/f0/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/criteo/publisher/f0/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/z;Lcom/criteo/publisher/f0/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f0/z<",
            "TT;>;",
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/criteo/publisher/f0/e0;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e0;->a:Lcom/criteo/publisher/logging/g;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/f0/e0;->b:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/criteo/publisher/f0/e0;->f:Lcom/criteo/publisher/f0/z;

    .line 66
    iput-object p2, p0, Lcom/criteo/publisher/f0/e0;->g:Lcom/criteo/publisher/f0/a0;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/criteo/publisher/f0/e0;->d:Ljava/lang/reflect/Method;

    .line 68
    iput-object p1, p0, Lcom/criteo/publisher/f0/e0;->e:Lcom/squareup/tape/QueueFile;

    return-void
.end method

.method private b()Lcom/squareup/tape/ObjectQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tape/ObjectQueue<",
            "TT;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->c:Lcom/squareup/tape/ObjectQueue;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->f:Lcom/criteo/publisher/f0/z;

    invoke-virtual {v0}, Lcom/criteo/publisher/f0/z;->a()Lcom/squareup/tape/ObjectQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e0;->c:Lcom/squareup/tape/ObjectQueue;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->c:Lcom/squareup/tape/ObjectQueue;

    return-object v0
.end method

.method private c()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/squareup/tape/QueueFile;

    const-string v2, "usedBytes"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e0;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/f0/e0;->b()Lcom/squareup/tape/ObjectQueue;

    move-result-object v1

    .line 153
    instance-of v2, v1, Lcom/squareup/tape/FileObjectQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 155
    :try_start_1
    invoke-direct {p0}, Lcom/criteo/publisher/f0/e0;->c()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 156
    move-object v3, v1

    check-cast v3, Lcom/squareup/tape/FileObjectQueue;

    invoke-virtual {p0, v3}, Lcom/criteo/publisher/f0/e0;->a(Lcom/squareup/tape/FileObjectQueue;)Lcom/squareup/tape/QueueFile;

    move-result-object v3

    const/4 v4, 0x0

    .line 157
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 159
    invoke-static {v2}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    .line 164
    :cond_0
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/criteo/publisher/f0/e0;->g:Lcom/criteo/publisher/f0/a0;

    invoke-interface {v2}, Lcom/criteo/publisher/f0/a0;->a()I

    move-result v2

    mul-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 165
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method a(Lcom/squareup/tape/FileObjectQueue;)Lcom/squareup/tape/QueueFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/tape/FileObjectQueue<",
            "*>;)",
            "Lcom/squareup/tape/QueueFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->e:Lcom/squareup/tape/QueueFile;

    if-nez v0, :cond_0

    .line 183
    const-class v0, Lcom/squareup/tape/FileObjectQueue;

    const-string v1, "queueFile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/tape/QueueFile;

    iput-object p1, p0, Lcom/criteo/publisher/f0/e0;->e:Lcom/squareup/tape/QueueFile;

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/f0/e0;->e:Lcom/squareup/tape/QueueFile;

    return-object p1
.end method

.method public a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/f0/e0;->b()Lcom/squareup/tape/ObjectQueue;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_7

    .line 97
    :try_start_1
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->peek()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Lcom/squareup/tape/FileException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 117
    :try_start_2
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->remove()V
    :try_end_2
    .catch Lcom/squareup/tape/FileException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catch_0
    move-exception p1

    if-nez v3, :cond_0

    move-object v3, p1

    goto :goto_6

    .line 124
    :cond_0
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 103
    :cond_1
    :try_start_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/squareup/tape/FileException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->remove()V
    :try_end_5
    .catch Lcom/squareup/tape/FileException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-nez v3, :cond_2

    goto :goto_2

    .line 124
    :cond_2
    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v5

    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_1

    .line 108
    :cond_3
    :try_start_7
    invoke-virtual {v3, v5}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    :goto_1
    :try_start_8
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->remove()V
    :try_end_8
    .catch Lcom/squareup/tape/FileException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v5

    if-nez v3, :cond_2

    :goto_2
    move-object v3, v5

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :goto_4
    :try_start_9
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 118
    invoke-interface {v1}, Lcom/squareup/tape/ObjectQueue;->remove()V
    :try_end_9
    .catch Lcom/squareup/tape/FileException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catch_4
    move-exception v1

    if-nez v3, :cond_5

    goto :goto_5

    .line 124
    :cond_5
    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    :cond_6
    :goto_5
    throw p1

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 131
    iget-object p1, p0, Lcom/criteo/publisher/f0/e0;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v3}, Lcom/criteo/publisher/f0/c0;->a(Ljava/lang/Exception;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 134
    :cond_8
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p1

    .line 135
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/f0/e0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/f0/e0;->b()Lcom/squareup/tape/ObjectQueue;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-interface {v1, p1}, Lcom/squareup/tape/ObjectQueue;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/squareup/tape/FileException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 80
    invoke-static {p1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    .line 81
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
