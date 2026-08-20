.class public Lcom/yandex/metrica/impl/ob/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/N0;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yandex/metrica/impl/ob/A3;

.field private c:Lcom/yandex/metrica/impl/ob/T1;

.field private d:Landroid/os/Handler;

.field private e:Lcom/yandex/metrica/impl/ob/hi;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/M0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/impl/ob/T1;Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/hi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->f:Ljava/util/Map;

    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v2, Lcom/yandex/metrica/impl/ob/Mn;

    invoke-direct {v2, v0}, Lcom/yandex/metrica/impl/ob/Mn;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/R1;->g:Lcom/yandex/metrica/impl/ob/Kn;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->h:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/R1;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/R1;->b:Lcom/yandex/metrica/impl/ob/A3;

    .line 18
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/R1;->c:Lcom/yandex/metrica/impl/ob/T1;

    .line 19
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/R1;->d:Landroid/os/Handler;

    .line 20
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/R1;->e:Lcom/yandex/metrica/impl/ob/hi;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/B;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/b1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R1;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/b1;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/B;)V

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/B;->a(Lcom/yandex/metrica/impl/ob/b1;)V

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->e:Lcom/yandex/metrica/impl/ob/hi;

    .line 48
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/Q1;->a(Lcom/yandex/metrica/impl/ob/ji;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/i;)Lcom/yandex/metrica/impl/ob/R0;
    .locals 4

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/M0;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/d0;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/R1;->b:Lcom/yandex/metrica/impl/ob/A3;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/R1;->c:Lcom/yandex/metrica/impl/ob/T1;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/metrica/impl/ob/d0;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/i;Lcom/yandex/metrica/impl/ob/T1;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/R1;->a(Lcom/yandex/metrica/impl/ob/B;)V

    .line 44
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/B;->a(Ljava/util/Map;)V

    .line 45
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/B;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/i;ZLcom/yandex/metrica/impl/ob/b9;)Lcom/yandex/metrica/impl/ob/j1;
    .locals 15

    move-object v0, p0

    move-object/from16 v13, p1

    .line 1
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/R1;->g:Lcom/yandex/metrica/impl/ob/Kn;

    iget-object v2, v13, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 3
    new-instance v14, Lcom/yandex/metrica/impl/ob/j1;

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/R1;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/R1;->b:Lcom/yandex/metrica/impl/ob/A3;

    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/R1;->c:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/R1;->e:Lcom/yandex/metrica/impl/ob/hi;

    new-instance v8, Lcom/yandex/metrica/impl/ob/y2;

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-direct {v8, p0, v1}, Lcom/yandex/metrica/impl/ob/y2;-><init>(Lcom/yandex/metrica/impl/ob/O0;Ljava/lang/String;)V

    new-instance v9, Lcom/yandex/metrica/impl/ob/y2;

    const-string v1, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"

    invoke-direct {v9, p0, v1}, Lcom/yandex/metrica/impl/ob/y2;-><init>(Lcom/yandex/metrica/impl/ob/O0;Ljava/lang/String;)V

    .line 4
    new-instance v6, Lcom/yandex/metrica/impl/ob/j7;

    invoke-direct {v6, v2, v3}, Lcom/yandex/metrica/impl/ob/j7;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;)V

    .line 14
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v11

    new-instance v12, Lcom/yandex/metrica/impl/ob/A0;

    invoke-direct {v12, v2}, Lcom/yandex/metrica/impl/ob/A0;-><init>(Landroid/content/Context;)V

    move-object v1, v14

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    .line 15
    invoke-direct/range {v1 .. v12}, Lcom/yandex/metrica/impl/ob/j1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/i;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/j7;Lcom/yandex/metrica/impl/ob/hi;Lcom/yandex/metrica/impl/ob/y2;Lcom/yandex/metrica/impl/ob/y2;Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/P;Lcom/yandex/metrica/impl/ob/A0;)V

    .line 16
    invoke-direct {p0, v14}, Lcom/yandex/metrica/impl/ob/R1;->a(Lcom/yandex/metrica/impl/ob/B;)V

    if-eqz p2, :cond_0

    .line 17
    iget-object v1, v14, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v2, v14, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/T1;->c(Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 18
    :cond_0
    iget-object v1, v13, Lcom/yandex/metrica/i;->h:Ljava/util/Map;

    .line 19
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    iget-object v4, v14, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v4}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    iget-object v4, v14, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Invalid App Environment (key,value) pair: (%s,%s)."

    invoke-virtual {v4, v3, v2}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object v4, v14, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v5, v14, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v4, v3, v2, v5}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Q1;)V

    goto :goto_0

    .line 28
    :cond_3
    iget-object v1, v13, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    invoke-virtual {v14, v1}, Lcom/yandex/metrica/impl/ob/B;->a(Ljava/util/Map;)V

    .line 29
    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/B;->f()V

    .line 31
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/R1;->c:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1, v14}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/j1;)V

    .line 33
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/R1;->f:Ljava/util/Map;

    iget-object v2, v13, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v14
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/impl/ob/M0;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/M0;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/R1;->e:Lcom/yandex/metrica/impl/ob/hi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hi;->g()V

    .line 7
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/l1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/R1;->b:Lcom/yandex/metrica/impl/ob/A3;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/R1;->c:Lcom/yandex/metrica/impl/ob/T1;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/yandex/metrica/impl/ob/l1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/T1;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/R1;->a(Lcom/yandex/metrica/impl/ob/B;)V

    .line 12
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/B;->f()V

    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R1;->f:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/yandex/metrica/impl/ob/N0;
    .locals 0

    return-object p0
.end method

.method public declared-synchronized c(Lcom/yandex/metrica/e;)V
    .locals 3

    const-string v0, "Activate reporter with APIKey "

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/R1;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Reporter with apiKey=%s already exists."

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/coreutils/logger/BaseLogger;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/R1;->b(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/impl/ob/M0;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppMetrica"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
