.class public Lcom/criteo/publisher/k0/b;
.super Ljava/lang/Object;
.source "BidRequestSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/k0/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/model/p;

.field private final b:Lcom/criteo/publisher/model/x;

.field private final c:Lcom/criteo/publisher/i;

.field private final d:Lcom/criteo/publisher/k0/g;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/criteo/publisher/model/n;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/model/x;Lcom/criteo/publisher/i;Lcom/criteo/publisher/k0/g;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/k0/b;->g:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/criteo/publisher/k0/b;->a:Lcom/criteo/publisher/model/p;

    .line 72
    iput-object p2, p0, Lcom/criteo/publisher/k0/b;->b:Lcom/criteo/publisher/model/x;

    .line 73
    iput-object p3, p0, Lcom/criteo/publisher/k0/b;->c:Lcom/criteo/publisher/i;

    .line 74
    iput-object p4, p0, Lcom/criteo/publisher/k0/b;->d:Lcom/criteo/publisher/k0/g;

    .line 75
    iput-object p5, p0, Lcom/criteo/publisher/k0/b;->e:Ljava/util/concurrent/Executor;

    .line 76
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/k0/b;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/k0/b;)Lcom/criteo/publisher/model/x;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/criteo/publisher/k0/b;->b:Lcom/criteo/publisher/model/x;

    return-object p0
.end method

.method private a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)Ljava/util/concurrent/FutureTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            "Lcom/criteo/publisher/h;",
            ")",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v7, Lcom/criteo/publisher/k0/c;

    iget-object v1, p0, Lcom/criteo/publisher/k0/b;->d:Lcom/criteo/publisher/k0/g;

    iget-object v2, p0, Lcom/criteo/publisher/k0/b;->a:Lcom/criteo/publisher/model/p;

    iget-object v3, p0, Lcom/criteo/publisher/k0/b;->c:Lcom/criteo/publisher/i;

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/criteo/publisher/k0/c;-><init>(Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/i;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)V

    .line 150
    new-instance p2, Lcom/criteo/publisher/k0/b$a;

    invoke-direct {p2, p0, v7, p1}, Lcom/criteo/publisher/k0/b$a;-><init>(Lcom/criteo/publisher/k0/b;Lcom/criteo/publisher/k0/c;Ljava/util/List;)V

    .line 161
    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lcom/criteo/publisher/k0/b;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/criteo/publisher/k0/b;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/criteo/publisher/k0/b;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/k0/b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/criteo/publisher/k0/b;)Lcom/criteo/publisher/k0/g;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/criteo/publisher/k0/b;->d:Lcom/criteo/publisher/k0/g;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/criteo/publisher/k0/b;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/k0/b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    .line 176
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/k0/b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/criteo/publisher/model/t;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/criteo/publisher/k0/b;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/k0/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/criteo/publisher/k0/b$b;-><init>(Lcom/criteo/publisher/k0/b;Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/k0/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            "Lcom/criteo/publisher/h;",
            ")V"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    iget-object p1, p0, Lcom/criteo/publisher/k0/b;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/k0/b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    monitor-exit p1

    return-void

    .line 123
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/k0/b;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)Ljava/util/concurrent/FutureTask;

    move-result-object p2

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/n;

    .line 126
    iget-object v2, p0, Lcom/criteo/publisher/k0/b;->f:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    iget-object p1, p0, Lcom/criteo/publisher/k0/b;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 137
    invoke-direct {p0, v0}, Lcom/criteo/publisher/k0/b;->a(Ljava/util/List;)V

    .line 139
    :cond_2
    throw p1

    :catchall_1
    move-exception p2

    .line 128
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method
