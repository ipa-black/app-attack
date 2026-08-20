.class public final Lcom/appodeal/ads/x4$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/x4;->a(Landroid/app/Application;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.SdkCoreInitializerImpl$invoke$2"
    f = "SdkCoreInitializer.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3,
        0x4,
        0x5
    }
    l = {
        0x56,
        0x5a,
        0x60,
        0x61,
        0x65,
        0x69
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "$this$withContext",
        "$this$withContext",
        "$this$withContext",
        "$this$withContext",
        "$this$withContext"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/appodeal/ads/x4;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/appodeal/ads/x4;

.field public final synthetic f:Landroid/app/Application;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lcom/appodeal/consent/Consent;

.field public final synthetic j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x4;Landroid/app/Application;Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/x4;",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/appodeal/consent/Consent;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/x4$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    iput-object p2, p0, Lcom/appodeal/ads/x4$b;->f:Landroid/app/Application;

    iput-object p3, p0, Lcom/appodeal/ads/x4$b;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/x4$b;->h:Landroid/content/Context;

    iput-object p5, p0, Lcom/appodeal/ads/x4$b;->i:Lcom/appodeal/consent/Consent;

    iput-object p6, p0, Lcom/appodeal/ads/x4$b;->j:Ljava/lang/Boolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v8, Lcom/appodeal/ads/x4$b;

    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    iget-object v2, p0, Lcom/appodeal/ads/x4$b;->f:Landroid/app/Application;

    iget-object v3, p0, Lcom/appodeal/ads/x4$b;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/appodeal/ads/x4$b;->h:Landroid/content/Context;

    iget-object v5, p0, Lcom/appodeal/ads/x4$b;->i:Lcom/appodeal/consent/Consent;

    iget-object v6, p0, Lcom/appodeal/ads/x4$b;->j:Ljava/lang/Boolean;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/x4$b;-><init>(Lcom/appodeal/ads/x4;Landroid/app/Application;Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/x4$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/x4$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/x4$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/x4$b;->c:I

    const-string v2, "applicationContext"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-object v5, v0

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v2

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->b:Lcom/appodeal/ads/x4;

    iget-object v2, p0, Lcom/appodeal/ads/x4$b;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    move-object v4, v1

    move-object v1, p1

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    iget-object v4, p0, Lcom/appodeal/ads/x4$b;->f:Landroid/app/Application;

    iget-object v5, p0, Lcom/appodeal/ads/x4$b;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p0, Lcom/appodeal/ads/x4$b;->c:I

    invoke-static {v1, v4, v5, p0}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;Landroid/app/Application;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object v4, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    iget-object v5, p0, Lcom/appodeal/ads/x4$b;->h:Landroid/content/Context;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/appodeal/ads/x4$b;->i:Lcom/appodeal/consent/Consent;

    iget-object v7, p0, Lcom/appodeal/ads/x4$b;->j:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/appodeal/ads/x4$b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/appodeal/ads/x4$b;->c:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    invoke-static {p1}, Lcom/appodeal/ads/x4;->b(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/networking/usecases/a;

    move-result-object p1

    iput-object v1, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p0, Lcom/appodeal/ads/x4$b;->c:I

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/networking/usecases/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :goto_2
    iget-object p1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    iget-object v5, p0, Lcom/appodeal/ads/x4$b;->h:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v1

    check-cast v6, Lcom/appodeal/ads/networking/b;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/appodeal/ads/x4$b;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/appodeal/ads/x4$b;->b:Lcom/appodeal/ads/x4;

    const/4 v2, 0x4

    iput v2, p0, Lcom/appodeal/ads/x4$b;->c:I

    invoke-static {p1, v5, v6, p0}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lcom/appodeal/ads/networking/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object v11, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v11

    :goto_3
    check-cast p1, Ljava/util/List;

    invoke-static {v1}, Lcom/appodeal/ads/x4;->d(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/services/c$a;

    move-result-object v1

    iput-object v4, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    iput-object v2, p0, Lcom/appodeal/ads/x4$b;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/appodeal/ads/x4$b;->b:Lcom/appodeal/ads/x4;

    const/4 v5, 0x5

    iput v5, p0, Lcom/appodeal/ads/x4$b;->c:I

    invoke-interface {v1, p1, p0}, Lcom/appodeal/ads/services/c$a;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, v2

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {p1}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/initializing/a;

    move-result-object p1

    new-instance v2, Lcom/appodeal/ads/initializing/ApdInitializationError$InternalError$SdkConfigurationError;

    invoke-direct {v2, v1}, Lcom/appodeal/ads/initializing/ApdInitializationError$InternalError$SdkConfigurationError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v2}, Lcom/appodeal/ads/initializing/a;->a(Lcom/appodeal/ads/initializing/ApdInitializationError;)V

    :goto_5
    iget-object p1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    invoke-static {p1}, Lcom/appodeal/ads/x4;->c(Lcom/appodeal/ads/x4;)Lcom/appodeal/ads/m1;

    move-result-object p1

    iput-object v4, p0, Lcom/appodeal/ads/x4$b;->d:Ljava/lang/Object;

    iput-object v3, p0, Lcom/appodeal/ads/x4$b;->a:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, p0, Lcom/appodeal/ads/x4$b;->c:I

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/m1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v5, v4

    :goto_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    new-instance v8, Lcom/appodeal/ads/x4$b$a;

    iget-object p1, p0, Lcom/appodeal/ads/x4$b;->e:Lcom/appodeal/ads/x4;

    iget-object v0, p0, Lcom/appodeal/ads/x4$b;->h:Landroid/content/Context;

    invoke-direct {v8, p1, v0, v3}, Lcom/appodeal/ads/x4$b$a;-><init>(Lcom/appodeal/ads/x4;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
