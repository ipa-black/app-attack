.class public final Lcom/criteo/publisher/f0/y;
.super Lcom/criteo/publisher/x;
.source "MetricSendingTask.kt"


# instance fields
.field private final c:Lcom/criteo/publisher/f0/u;

.field private final d:Lcom/criteo/publisher/k0/g;

.field private final e:Lcom/criteo/publisher/n0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f0/u;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/n0/g;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/f0/y;->c:Lcom/criteo/publisher/f0/u;

    iput-object p2, p0, Lcom/criteo/publisher/f0/y;->d:Lcom/criteo/publisher/k0/g;

    iput-object p3, p0, Lcom/criteo/publisher/f0/y;->e:Lcom/criteo/publisher/n0/g;

    return-void
.end method

.method private final a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/criteo/publisher/f0/n;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/criteo/publisher/f0/t;",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/f0/n;",
            ">;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/f0/y;->e:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildConfigWrapper.sdkVersion"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 76
    move-object v3, v2

    check-cast v3, Lcom/criteo/publisher/f0/n;

    .line 53
    invoke-virtual {v3}, Lcom/criteo/publisher/f0/n;->f()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/criteo/publisher/i0/a;->b:Lcom/criteo/publisher/i0/a;

    invoke-virtual {v3}, Lcom/criteo/publisher/i0/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 78
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 85
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 89
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 91
    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "it.key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 57
    invoke-static {v3, v0, v4}, Lcom/criteo/publisher/f0/t;->a(Ljava/util/Collection;Ljava/lang/String;I)Lcom/criteo/publisher/f0/t;

    move-result-object v3

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method private final b(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/criteo/publisher/f0/n;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/f0/n;

    .line 67
    iget-object v1, p0, Lcom/criteo/publisher/f0/y;->c:Lcom/criteo/publisher/f0/u;

    invoke-interface {v1, v0}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/criteo/publisher/f0/y;->c:Lcom/criteo/publisher/f0/u;

    iget-object v1, p0, Lcom/criteo/publisher/f0/y;->e:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v1}, Lcom/criteo/publisher/n0/g;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/criteo/publisher/f0/k;->a(I)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 37
    :try_start_0
    invoke-direct {p0, v0}, Lcom/criteo/publisher/f0/y;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    iget-object v3, p0, Lcom/criteo/publisher/f0/y;->d:Lcom/criteo/publisher/k0/g;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/criteo/publisher/f0/t;

    invoke-virtual {v3, v4}, Lcom/criteo/publisher/k0/g;->a(Lcom/criteo/publisher/f0/t;)V

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 44
    invoke-direct {p0, v1}, Lcom/criteo/publisher/f0/y;->b(Ljava/util/Collection;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 44
    invoke-direct {p0, v1}, Lcom/criteo/publisher/f0/y;->b(Ljava/util/Collection;)V

    :cond_3
    throw v0
.end method
