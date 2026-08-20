.class Lcom/yandex/metrica/impl/ob/zk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Tk;

.field private final b:Lcom/yandex/metrica/impl/ob/il;

.field private final c:Lcom/yandex/metrica/impl/ob/il;

.field private final d:Lcom/yandex/metrica/impl/ob/il;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Tk;Lcom/yandex/metrica/impl/ob/il;Lcom/yandex/metrica/impl/ob/il;Lcom/yandex/metrica/impl/ob/il;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/zk;->a:Lcom/yandex/metrica/impl/ob/Tk;

    .line 9
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/zk;->b:Lcom/yandex/metrica/impl/ob/il;

    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/zk;->c:Lcom/yandex/metrica/impl/ob/il;

    .line 11
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/zk;->d:Lcom/yandex/metrica/impl/ob/il;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fl;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Tk;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    :goto_0
    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/Tk;-><init>(Lcom/yandex/metrica/impl/ob/wl;)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/il;

    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    :goto_1
    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/il;-><init>(Lcom/yandex/metrica/impl/ob/hl;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/il;

    if-nez p1, :cond_2

    move-object v4, v1

    goto :goto_2

    .line 4
    :cond_2
    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    :goto_2
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/il;-><init>(Lcom/yandex/metrica/impl/ob/hl;)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/il;

    if-nez p1, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    :goto_3
    invoke-direct {v4, v1}, Lcom/yandex/metrica/impl/ob/il;-><init>(Lcom/yandex/metrica/impl/ob/hl;)V

    .line 6
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/zk;-><init>(Lcom/yandex/metrica/impl/ob/Tk;Lcom/yandex/metrica/impl/ob/il;Lcom/yandex/metrica/impl/ob/il;Lcom/yandex/metrica/impl/ob/il;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a()Lcom/yandex/metrica/impl/ob/yk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/yk<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->d:Lcom/yandex/metrica/impl/ob/il;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/fl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->a:Lcom/yandex/metrica/impl/ob/Tk;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/yk;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->b:Lcom/yandex/metrica/impl/ob/il;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/yk;->d(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->c:Lcom/yandex/metrica/impl/ob/il;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/yk;->d(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->d:Lcom/yandex/metrica/impl/ob/il;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/yk;->d(Ljava/lang/Object;)V

    return-void
.end method

.method b()Lcom/yandex/metrica/impl/ob/yk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/yk<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->b:Lcom/yandex/metrica/impl/ob/il;

    return-object v0
.end method

.method c()Lcom/yandex/metrica/impl/ob/yk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/yk<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->a:Lcom/yandex/metrica/impl/ob/Tk;

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/yk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/yk<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zk;->c:Lcom/yandex/metrica/impl/ob/il;

    return-object v0
.end method
