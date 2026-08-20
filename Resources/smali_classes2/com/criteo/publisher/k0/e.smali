.class public Lcom/criteo/publisher/k0/e;
.super Ljava/lang/Object;
.source "LiveBidRequestSender.kt"


# instance fields
.field private final a:Lcom/criteo/publisher/k0/g;

.field private final b:Lcom/criteo/publisher/model/p;

.field private final c:Lcom/criteo/publisher/i;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lcom/criteo/publisher/model/t;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/i;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/criteo/publisher/model/t;)V
    .locals 1

    const-string v0, "pubSdkApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cdbRequestFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduledExecutorService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/k0/e;->a:Lcom/criteo/publisher/k0/g;

    iput-object p2, p0, Lcom/criteo/publisher/k0/e;->b:Lcom/criteo/publisher/model/p;

    iput-object p3, p0, Lcom/criteo/publisher/k0/e;->c:Lcom/criteo/publisher/i;

    iput-object p4, p0, Lcom/criteo/publisher/k0/e;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/criteo/publisher/k0/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/criteo/publisher/k0/e;->f:Lcom/criteo/publisher/model/t;

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/w;)V
    .locals 9

    const-string v0, "cacheAdUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveCdbCallListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/criteo/publisher/k0/e;->a(Lcom/criteo/publisher/w;)V

    .line 48
    iget-object v0, p0, Lcom/criteo/publisher/k0/e;->d:Ljava/util/concurrent/Executor;

    .line 49
    new-instance v8, Lcom/criteo/publisher/k0/c;

    .line 50
    iget-object v2, p0, Lcom/criteo/publisher/k0/e;->a:Lcom/criteo/publisher/k0/g;

    .line 51
    iget-object v3, p0, Lcom/criteo/publisher/k0/e;->b:Lcom/criteo/publisher/model/p;

    .line 52
    iget-object v4, p0, Lcom/criteo/publisher/k0/e;->c:Lcom/criteo/publisher/i;

    .line 53
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v8

    move-object v6, p2

    move-object v7, p3

    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/criteo/publisher/k0/c;-><init>(Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/i;Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)V

    .line 48
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/w;)V
    .locals 4

    const-string v0, "liveCdbCallListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/k0/e;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/criteo/publisher/k0/e$a;

    invoke-direct {v1, p1}, Lcom/criteo/publisher/k0/e$a;-><init>(Lcom/criteo/publisher/w;)V

    .line 64
    iget-object p1, p0, Lcom/criteo/publisher/k0/e;->f:Lcom/criteo/publisher/model/t;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/t;->e()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
