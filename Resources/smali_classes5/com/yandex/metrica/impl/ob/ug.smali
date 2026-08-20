.class public Lcom/yandex/metrica/impl/ob/ug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/sg$a;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/metrica/impl/ob/cg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/yandex/metrica/impl/ob/dg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->m()Lcom/yandex/metrica/impl/ob/sg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ug;-><init>(Lcom/yandex/metrica/impl/ob/sg;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/sg;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ug;->a:Ljava/util/Set;

    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/yg;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/yg;-><init>(Lcom/yandex/metrica/impl/ob/sg$a;)V

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/sg;->a(Lcom/yandex/metrica/impl/ob/tg;)V

    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/sg;->b()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/cg;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ug;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ug;->b:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ug;->c:Lcom/yandex/metrica/impl/ob/dg;

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/cg;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ug;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
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

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ug;->c:Lcom/yandex/metrica/impl/ob/dg;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ug;->b:Z

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ug;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/cg;

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ug;->c:Lcom/yandex/metrica/impl/ob/dg;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/cg;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ug;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
