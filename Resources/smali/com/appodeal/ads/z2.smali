.class public final Lcom/appodeal/ads/z2;
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
        "Ljava/util/List<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;",
        "+",
        "Lkotlin/Result<",
        "+",
        "Lcom/appodeal/ads/modules/common/internal/service/Service<",
        "*>;>;>;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.RegisterServicesUseCase$invoke$2"
    f = "RegisterServicesUseCase.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x40,
        0x42
    }
    m = "invokeSuspend"
    n = {
        "registeredServices",
        "variant",
        "registeredServices",
        "variant",
        "it"
    }
    s = {
        "L$0",
        "L$2",
        "L$0",
        "L$2",
        "L$4"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Iterator;

.field public b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public c:Ljava/lang/Object;

.field public d:Lcom/appodeal/ads/modules/common/internal/service/Service;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/appodeal/ads/a3;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lcom/appodeal/ads/networking/b;

.field public final synthetic j:Z

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

.field public final synthetic m:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

.field public final synthetic n:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

.field public final synthetic o:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/a3;Landroid/content/Context;Lcom/appodeal/ads/networking/b;ZLjava/lang/String;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/a3;",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/networking/b;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;",
            "Lcom/appodeal/ads/modules/common/internal/data/DeviceData;",
            "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;",
            "Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/z2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/z2;->g:Lcom/appodeal/ads/a3;

    iput-object p2, p0, Lcom/appodeal/ads/z2;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/appodeal/ads/z2;->i:Lcom/appodeal/ads/networking/b;

    iput-boolean p4, p0, Lcom/appodeal/ads/z2;->j:Z

    iput-object p5, p0, Lcom/appodeal/ads/z2;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/appodeal/ads/z2;->l:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    iput-object p7, p0, Lcom/appodeal/ads/z2;->m:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    iput-object p8, p0, Lcom/appodeal/ads/z2;->n:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    iput-object p9, p0, Lcom/appodeal/ads/z2;->o:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v11, Lcom/appodeal/ads/z2;

    iget-object v1, p0, Lcom/appodeal/ads/z2;->g:Lcom/appodeal/ads/a3;

    iget-object v2, p0, Lcom/appodeal/ads/z2;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/appodeal/ads/z2;->i:Lcom/appodeal/ads/networking/b;

    iget-boolean v4, p0, Lcom/appodeal/ads/z2;->j:Z

    iget-object v5, p0, Lcom/appodeal/ads/z2;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/appodeal/ads/z2;->l:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    iget-object v7, p0, Lcom/appodeal/ads/z2;->m:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    iget-object v8, p0, Lcom/appodeal/ads/z2;->n:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    iget-object v9, p0, Lcom/appodeal/ads/z2;->o:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    move-object v0, v11

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/appodeal/ads/z2;-><init>(Lcom/appodeal/ads/a3;Landroid/content/Context;Lcom/appodeal/ads/networking/b;ZLjava/lang/String;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v11, Lcom/appodeal/ads/z2;->f:Ljava/lang/Object;

    return-object v11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/z2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/z2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/z2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/appodeal/ads/z2;->d:Lcom/appodeal/ads/modules/common/internal/service/Service;

    iget-object v6, v0, Lcom/appodeal/ads/z2;->c:Ljava/lang/Object;

    iget-object v7, v0, Lcom/appodeal/ads/z2;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    iget-object v8, v0, Lcom/appodeal/ads/z2;->a:Ljava/util/Iterator;

    iget-object v9, v0, Lcom/appodeal/ads/z2;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v10, v3

    move-object v3, v6

    const/4 v6, 0x0

    move-object/from16 v28, v7

    move v7, v4

    move-object/from16 v4, v28

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/appodeal/ads/z2;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    iget-object v6, v0, Lcom/appodeal/ads/z2;->a:Ljava/util/Iterator;

    iget-object v7, v0, Lcom/appodeal/ads/z2;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v9, v7

    const/4 v6, 0x0

    move v7, v4

    move-object/from16 v4, p1

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/appodeal/ads/z2;->f:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v15, Lcom/appodeal/ads/b5;

    invoke-direct {v15}, Lcom/appodeal/ads/b5;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->values()[Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    move-result-object v14

    iget-object v13, v0, Lcom/appodeal/ads/z2;->g:Lcom/appodeal/ads/a3;

    iget-object v12, v0, Lcom/appodeal/ads/z2;->h:Landroid/content/Context;

    iget-object v11, v0, Lcom/appodeal/ads/z2;->i:Lcom/appodeal/ads/networking/b;

    iget-boolean v10, v0, Lcom/appodeal/ads/z2;->j:Z

    iget-object v9, v0, Lcom/appodeal/ads/z2;->k:Ljava/lang/String;

    iget-object v8, v0, Lcom/appodeal/ads/z2;->l:Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;

    iget-object v7, v0, Lcom/appodeal/ads/z2;->m:Lcom/appodeal/ads/modules/common/internal/data/DeviceData;

    iget-object v6, v0, Lcom/appodeal/ads/z2;->n:Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;

    iget-object v3, v0, Lcom/appodeal/ads/z2;->o:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v14

    const/16 v17, 0x0

    move-object/from16 p1, v6

    move/from16 v6, v17

    :goto_0
    if-ge v6, v5, :cond_5

    move/from16 v17, v5

    aget-object v5, v14, v6

    add-int/lit8 v18, v6, 0x1

    invoke-static {v13}, Lcom/appodeal/ads/a3;->a(Lcom/appodeal/ads/a3;)Lcom/appodeal/ads/l1;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, p1

    move-object v6, v12

    move-object/from16 v20, v7

    move-object v7, v5

    move-object/from16 v21, v8

    move-object v8, v11

    move-object/from16 v22, v9

    move v9, v10

    move/from16 v23, v10

    move-object v10, v15

    move-object/from16 v24, v11

    move-object/from16 v11, v22

    move-object/from16 v25, v12

    move-object/from16 v12, v21

    move-object/from16 v26, v13

    move-object/from16 v13, v20

    move-object/from16 v27, v14

    move-object/from16 v14, v19

    invoke-static/range {v6 .. v14}, Lcom/appodeal/ads/l1;->a(Landroid/content/Context;Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;Lcom/appodeal/ads/networking/b;ZLcom/appodeal/ads/b5;Ljava/lang/String;Lcom/appodeal/ads/modules/common/internal/data/ApplicationData;Lcom/appodeal/ads/modules/common/internal/data/DeviceData;Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;)Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;

    move-result-object v10

    if-nez v10, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v12

    new-instance v13, Lcom/appodeal/ads/z2$a;

    const/4 v11, 0x0

    move-object v6, v13

    move-object v7, v5

    move-object/from16 v8, v24

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/appodeal/ads/z2$a;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;Lcom/appodeal/ads/networking/b;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v8, 0x0

    move-object v6, v2

    move-object v7, v12

    move-object v9, v13

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 p1, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v3, v16

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Deferred;

    iput-object v3, v0, Lcom/appodeal/ads/z2;->f:Ljava/lang/Object;

    iput-object v2, v0, Lcom/appodeal/ads/z2;->a:Ljava/util/Iterator;

    iput-object v5, v0, Lcom/appodeal/ads/z2;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/appodeal/ads/z2;->c:Ljava/lang/Object;

    iput-object v6, v0, Lcom/appodeal/ads/z2;->d:Lcom/appodeal/ads/modules/common/internal/service/Service;

    const/4 v7, 0x1

    iput v7, v0, Lcom/appodeal/ads/z2;->e:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, v2

    move-object v9, v3

    move-object v2, v5

    :goto_4
    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Lcom/appodeal/ads/modules/common/internal/service/Service;

    instance-of v5, v4, Lcom/appodeal/ads/modules/common/internal/service/ServiceInitializationAwaiter;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Lcom/appodeal/ads/modules/common/internal/service/ServiceInitializationAwaiter;

    goto :goto_5

    :cond_7
    move-object v5, v6

    :goto_5
    if-nez v5, :cond_8

    const/4 v10, 0x2

    goto :goto_6

    :cond_8
    iput-object v9, v0, Lcom/appodeal/ads/z2;->f:Ljava/lang/Object;

    iput-object v8, v0, Lcom/appodeal/ads/z2;->a:Ljava/util/Iterator;

    iput-object v2, v0, Lcom/appodeal/ads/z2;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    iput-object v3, v0, Lcom/appodeal/ads/z2;->c:Ljava/lang/Object;

    iput-object v4, v0, Lcom/appodeal/ads/z2;->d:Lcom/appodeal/ads/modules/common/internal/service/Service;

    const/4 v10, 0x2

    iput v10, v0, Lcom/appodeal/ads/z2;->e:I

    invoke-interface {v5, v0}, Lcom/appodeal/ads/modules/common/internal/service/ServiceInitializationAwaiter;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_9

    return-object v1

    :cond_9
    :goto_6
    move-object/from16 v28, v4

    move-object v4, v2

    move-object/from16 v2, v28

    :goto_7
    invoke-static {v2}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/appodeal/ads/modules/common/internal/service/Service;->getInfo()Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " - ver. "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/appodeal/ads/modules/common/internal/service/Service;->getInfo()Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " initialized"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v11, "Service"

    const-string v12, "Info"

    invoke-static {v11, v12, v2, v5}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    move-object v2, v4

    goto :goto_8

    :cond_a
    const/4 v10, 0x2

    :goto_8
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {v3}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_3

    :cond_c
    return-object v3
.end method
