.class public Lcom/yandex/metrica/impl/ob/sg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/sg$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/metrica/impl/ob/tg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/dg;

.field private c:Z

.field private final d:Lcom/yandex/metrica/impl/ob/a8;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e8;->a()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/sg;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/a8;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/a8;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/sg;->a:Ljava/util/Set;

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/sg;->e:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/sg;->d:Lcom/yandex/metrica/impl/ob/a8;

    .line 23
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/a8;->g()Lcom/yandex/metrica/impl/ob/dg;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/sg;->b:Lcom/yandex/metrica/impl/ob/dg;

    .line 24
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/a8;->h()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/sg;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/dg;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sg;->b:Lcom/yandex/metrica/impl/ob/dg;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/sg;->b:Lcom/yandex/metrica/impl/ob/dg;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/sg;->c:Z

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/sg;->d:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/a8;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/sg;->d:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a8;->a(Z)V

    .line 5
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/sg;->b:Lcom/yandex/metrica/impl/ob/dg;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/tg;

    .line 7
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/tg;->a(Lcom/yandex/metrica/impl/ob/dg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/tg;)V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sg;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/sg;->c:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/sg;->b:Lcom/yandex/metrica/impl/ob/dg;

    .line 14
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/tg;->a(Lcom/yandex/metrica/impl/ob/dg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/sg;->c:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/mg;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/sg;->e:Landroid/content/Context;

    .line 3
    new-instance v2, Lcom/yandex/metrica/impl/ob/wg;

    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v3

    const-string v4, "GlobalServiceLocator.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v3

    const-string v4, "GlobalServiceLocator.get\u2026).serviceExecutorProvider"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/yandex/metrica/impl/ob/wg;-><init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 4
    new-instance v3, Lcom/yandex/metrica/impl/ob/gg;

    invoke-direct {v3, v1}, Lcom/yandex/metrica/impl/ob/gg;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v4, Lcom/yandex/metrica/impl/ob/xg;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v6, v5}, Lcom/yandex/metrica/impl/ob/xg;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/mn;Lcom/yandex/metrica/impl/ob/M0;I)V

    .line 6
    invoke-direct {v0, p0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/mg;-><init>(Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/wg;Lcom/yandex/metrica/impl/ob/gg;Lcom/yandex/metrica/impl/ob/xg;)V

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mg;->b()V

    :cond_0
    return-void
.end method
