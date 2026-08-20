.class public Lcom/yandex/metrica/impl/ob/qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/E$c;
.implements Lcom/yandex/metrica/impl/ob/w$b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/oc;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/E;

.field private final c:Lcom/yandex/metrica/impl/ob/vc;

.field private final d:Lcom/yandex/metrica/impl/ob/w;

.field private volatile e:Lcom/yandex/metrica/impl/ob/mc;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/metrica/impl/ob/nc;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->c()Lcom/yandex/metrica/impl/ob/E;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/vc;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/vc;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/pi$b;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->b()Lcom/yandex/metrica/impl/ob/w;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/qc;-><init>(Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/w;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/pi$b;Lcom/yandex/metrica/impl/ob/w;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->f:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->g:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/qc;->b:Lcom/yandex/metrica/impl/ob/E;

    .line 27
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/qc;->c:Lcom/yandex/metrica/impl/ob/vc;

    .line 28
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/qc;->d:Lcom/yandex/metrica/impl/ob/w;

    .line 29
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/pi$b;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->w()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/qc;->a:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/yandex/metrica/impl/ob/mc;
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->d:Lcom/yandex/metrica/impl/ob/w;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/w;->c()Lcom/yandex/metrica/impl/ob/w$a;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->b:Lcom/yandex/metrica/impl/ob/E;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/E;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qc;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/metrica/impl/ob/oc;

    .line 16
    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/oc;->b:Lcom/yandex/metrica/impl/ob/Ac;

    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/Ac;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/oc;->b:Lcom/yandex/metrica/impl/ob/Ac;

    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/Ac;->b:Ljava/util/List;

    .line 17
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    iget-object v0, v3, Lcom/yandex/metrica/impl/ob/oc;->a:Lcom/yandex/metrica/impl/ob/mc;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/qc;->a()Lcom/yandex/metrica/impl/ob/mc;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->e:Lcom/yandex/metrica/impl/ob/mc;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->c:Lcom/yandex/metrica/impl/ob/vc;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    .line 4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->e:Lcom/yandex/metrica/impl/ob/mc;

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->e:Lcom/yandex/metrica/impl/ob/mc;

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/nc;

    .line 9
    invoke-interface {v2, v0}, Lcom/yandex/metrica/impl/ob/nc;->a(Lcom/yandex/metrica/impl/ob/mc;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/E$b$a;)V
    .locals 0

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/qc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/nc;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->a:Ljava/util/List;

    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/qc;->a()Lcom/yandex/metrica/impl/ob/mc;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->e:Lcom/yandex/metrica/impl/ob/mc;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->c:Lcom/yandex/metrica/impl/ob/vc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->e:Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/vc;->a(Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/qc;->e:Lcom/yandex/metrica/impl/ob/mc;

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/nc;

    .line 8
    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/nc;->a(Lcom/yandex/metrica/impl/ob/mc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/w$a;)V
    .locals 0

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/qc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qc;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->b:Lcom/yandex/metrica/impl/ob/E;

    invoke-virtual {v1, p0}, Lcom/yandex/metrica/impl/ob/E;->a(Lcom/yandex/metrica/impl/ob/E$c;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qc;->d:Lcom/yandex/metrica/impl/ob/w;

    invoke-virtual {v1, p0}, Lcom/yandex/metrica/impl/ob/w;->a(Lcom/yandex/metrica/impl/ob/w$b;)Lcom/yandex/metrica/impl/ob/w$a;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/qc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
