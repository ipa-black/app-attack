.class public final Lcom/appodeal/ads/r4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.SdkCore$initializeSdkCore$1"
    f = "SdkCore.kt"
    i = {}
    l = {
        0x369,
        0x37c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/appodeal/ads/initializing/ApdInitializationCallback;

.field public final synthetic c:Lcom/appodeal/ads/t4;

.field public final synthetic d:Landroid/app/Application;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/appodeal/consent/Consent;

.field public final synthetic g:Ljava/lang/Boolean;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/initializing/ApdInitializationCallback;Lcom/appodeal/ads/t4;Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/initializing/ApdInitializationCallback;",
            "Lcom/appodeal/ads/t4;",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Consent;",
            "Ljava/lang/Boolean;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/r4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/r4;->b:Lcom/appodeal/ads/initializing/ApdInitializationCallback;

    iput-object p2, p0, Lcom/appodeal/ads/r4;->c:Lcom/appodeal/ads/t4;

    iput-object p3, p0, Lcom/appodeal/ads/r4;->d:Landroid/app/Application;

    iput-object p4, p0, Lcom/appodeal/ads/r4;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/appodeal/ads/r4;->f:Lcom/appodeal/consent/Consent;

    iput-object p6, p0, Lcom/appodeal/ads/r4;->g:Ljava/lang/Boolean;

    iput p7, p0, Lcom/appodeal/ads/r4;->h:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/appodeal/ads/r4;

    iget-object v1, p0, Lcom/appodeal/ads/r4;->b:Lcom/appodeal/ads/initializing/ApdInitializationCallback;

    iget-object v2, p0, Lcom/appodeal/ads/r4;->c:Lcom/appodeal/ads/t4;

    iget-object v3, p0, Lcom/appodeal/ads/r4;->d:Landroid/app/Application;

    iget-object v4, p0, Lcom/appodeal/ads/r4;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/appodeal/ads/r4;->f:Lcom/appodeal/consent/Consent;

    iget-object v6, p0, Lcom/appodeal/ads/r4;->g:Ljava/lang/Boolean;

    iget v7, p0, Lcom/appodeal/ads/r4;->h:I

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/r4;-><init>(Lcom/appodeal/ads/initializing/ApdInitializationCallback;Lcom/appodeal/ads/t4;Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/r4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/r4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/r4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/r4;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/r4;->b:Lcom/appodeal/ads/initializing/ApdInitializationCallback;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/q4;->a()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :goto_0
    sget-boolean p1, Lcom/appodeal/ads/q4;->c:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/appodeal/ads/q4;->b:Z

    if-nez p1, :cond_8

    sput-boolean v4, Lcom/appodeal/ads/q4;->b:Z

    iget-object v5, p0, Lcom/appodeal/ads/r4;->c:Lcom/appodeal/ads/t4;

    iget-object v6, p0, Lcom/appodeal/ads/r4;->d:Landroid/app/Application;

    iget-object v7, p0, Lcom/appodeal/ads/r4;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/appodeal/ads/r4;->f:Lcom/appodeal/consent/Consent;

    iget-object v9, p0, Lcom/appodeal/ads/r4;->g:Ljava/lang/Boolean;

    iput v4, p0, Lcom/appodeal/ads/r4;->a:I

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lcom/appodeal/ads/t4;->a(Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-static {}, Lcom/appodeal/ads/q4;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    instance-of v1, p1, Lcom/appodeal/ads/initializing/ApdInitializationError;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/appodeal/ads/q4;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    sput-boolean p1, Lcom/appodeal/ads/q4;->b:Z

    sput-boolean v4, Lcom/appodeal/ads/q4;->c:Z

    invoke-static {}, Lcom/appodeal/ads/q4;->c()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_8
    invoke-static {}, Lcom/appodeal/ads/q4;->c()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance v1, Lcom/appodeal/ads/r4$a;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/r4$a;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/appodeal/ads/r4;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    sget-object p1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {p1}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/context/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/context/b;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/r4;->h:I

    invoke-static {}, Lcom/appodeal/ads/q4;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/q4;Landroid/content/Context;ILjava/util/List;)V

    invoke-static {}, Lcom/appodeal/ads/q4;->a()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/initializing/ApdInitializationCallback;

    invoke-static {}, Lcom/appodeal/ads/q4;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, v2

    :goto_5
    invoke-interface {v0, v1}, Lcom/appodeal/ads/initializing/ApdInitializationCallback;->onInitializationFinished(Ljava/util/List;)V

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/appodeal/ads/q4;->a()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
