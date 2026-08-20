.class public final Lcom/appodeal/ads/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/b;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

.field public c:J

.field public d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/appodeal/ads/context/b;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/d;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/appodeal/ads/d;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/appodeal/ads/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/d;)Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/d;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    return-object p0
.end method

.method public static final synthetic a(Lcom/appodeal/ads/d;J)V
    .locals 0

    iput-wide p1, p0, Lcom/appodeal/ads/d;->c:J

    return-void
.end method

.method public static final synthetic b(Lcom/appodeal/ads/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/d;->c:J

    return-wide v0
.end method

.method public static b()Ljava/util/List;
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/appodeal/ads/u;

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/u;

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/appodeal/ads/r;->r()Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/appodeal/ads/r;->h()Lcom/appodeal/ads/l;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/appodeal/ads/Native;->c()Lcom/appodeal/ads/n2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/n2;->a()Ljava/util/HashSet;

    move-result-object v0

    const-string v2, "getNativeAdBox().adObjects"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/appodeal/ads/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/appodeal/ads/d;->d:J

    return-wide v0
.end method

.method public static final synthetic d(Lcom/appodeal/ads/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final e(Lcom/appodeal/ads/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/d;->f:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/appodeal/ads/d;->a:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcom/appodeal/ads/e;

    invoke-direct {v6, p0, v1}, Lcom/appodeal/ads/e;-><init>(Lcom/appodeal/ads/d;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/d;->f:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final f(Lcom/appodeal/ads/d;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appodeal/ads/d;->d:J

    iget-object v0, p0, Lcom/appodeal/ads/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/appodeal/ads/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/l;

    invoke-static {v1}, Lcom/appodeal/ads/utils/o;->a(Lcom/appodeal/ads/l;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appodeal/ads/q4;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/u;

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->j()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/appodeal/ads/d;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/appodeal/ads/f;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/appodeal/ads/f;-><init>(Lcom/appodeal/ads/d;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method public static final g(Lcom/appodeal/ads/d;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Lcom/appodeal/ads/d;->b()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/l;

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/appodeal/ads/utils/o;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/appodeal/ads/utils/o;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/appodeal/ads/utils/o;->a:Landroid/os/Handler;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/d;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getTopActivityFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/appodeal/ads/d$a;-><init>(Lcom/appodeal/ads/d;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/d;->a:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
