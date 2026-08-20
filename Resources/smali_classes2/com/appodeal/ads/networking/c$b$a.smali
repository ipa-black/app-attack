.class public final Lcom/appodeal/ads/networking/c$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networking/c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lorg/json/JSONObject;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$2$1"
    f = "JsonRequestExt.kt"
    i = {}
    l = {
        0x1f,
        0x2f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

.field public b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public c:I

.field public final synthetic d:Lcom/appodeal/ads/s1;

.field public final synthetic e:Lcom/appodeal/ads/s1;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s1;Lcom/appodeal/ads/s1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/s1;",
            "Lcom/appodeal/ads/s1;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/networking/c$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/networking/c$b$a;->d:Lcom/appodeal/ads/s1;

    iput-object p2, p0, Lcom/appodeal/ads/networking/c$b$a;->e:Lcom/appodeal/ads/s1;

    iput-object p3, p0, Lcom/appodeal/ads/networking/c$b$a;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/appodeal/ads/networking/c$b$a;

    iget-object v0, p0, Lcom/appodeal/ads/networking/c$b$a;->d:Lcom/appodeal/ads/s1;

    iget-object v1, p0, Lcom/appodeal/ads/networking/c$b$a;->e:Lcom/appodeal/ads/s1;

    iget-object v2, p0, Lcom/appodeal/ads/networking/c$b$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/appodeal/ads/networking/c$b$a;-><init>(Lcom/appodeal/ads/s1;Lcom/appodeal/ads/s1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/networking/c$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/networking/c$b$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/networking/c$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/networking/c$b$a;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/networking/c$b$a;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iget-object v3, p0, Lcom/appodeal/ads/networking/c$b$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/networking/c$b$a;->d:Lcom/appodeal/ads/s1;

    invoke-virtual {p1}, Lcom/appodeal/ads/s1;->e()Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    move-result-object p1

    iget-object v1, p0, Lcom/appodeal/ads/networking/c$b$a;->d:Lcom/appodeal/ads/s1;

    invoke-virtual {v1}, Lcom/appodeal/ads/s1;->f()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object v1

    iget-object v4, p0, Lcom/appodeal/ads/networking/c$b$a;->d:Lcom/appodeal/ads/s1;

    iput-object p1, p0, Lcom/appodeal/ads/networking/c$b$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    iput-object v1, p0, Lcom/appodeal/ads/networking/c$b$a;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iput v3, p0, Lcom/appodeal/ads/networking/c$b$a;->c:I

    invoke-virtual {v4, p0}, Lcom/appodeal/ads/s1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v4, v1

    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    :goto_0
    check-cast p1, Lcom/appodeal/ads/b3;

    invoke-virtual {p1}, Lcom/appodeal/ads/b3;->a()[B

    move-result-object v6

    iget-object p1, p0, Lcom/appodeal/ads/networking/c$b$a;->d:Lcom/appodeal/ads/s1;

    .line 1
    const-string v1, "Request body size to "

    invoke-static {v1}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/s1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JsonRequest"

    invoke-static {v1, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appodeal/ads/networking/c$b$a;->e:Lcom/appodeal/ads/s1;

    instance-of v8, p1, Lcom/appodeal/ads/i5;

    iget-object v5, p0, Lcom/appodeal/ads/networking/c$b$a;->f:Ljava/lang/String;

    sget-object v7, Lcom/appodeal/ads/networking/c$b$a$a;->a:Lcom/appodeal/ads/networking/c$b$a$a;

    invoke-interface/range {v3 .. v8}, Lcom/appodeal/ads/modules/libs/network/HttpClient;->enqueue-yxL6bBk(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/appodeal/ads/networking/c$b$a;->e:Lcom/appodeal/ads/s1;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lorg/json/JSONObject;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    instance-of v5, v1, Lcom/appodeal/ads/x0;

    if-eqz v5, :cond_5

    check-cast v1, Lcom/appodeal/ads/x0;

    goto :goto_1

    :cond_5
    move-object v1, v4

    :goto_1
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1, v3}, Lcom/appodeal/ads/x0;->a(Lorg/json/JSONObject;)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/appodeal/ads/networking/c$b$a;->e:Lcom/appodeal/ads/s1;

    iget-object v3, p0, Lcom/appodeal/ads/networking/c$b$a;->f:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_8

    goto/16 :goto_a

    :cond_8
    instance-of p1, v1, Lcom/appodeal/ads/k4;

    if-eqz p1, :cond_9

    move-object p1, v1

    check-cast p1, Lcom/appodeal/ads/k4;

    goto :goto_3

    :cond_9
    move-object p1, v4

    :goto_3
    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_4

    :cond_a
    invoke-interface {p1}, Lcom/appodeal/ads/k4;->b()Z

    move-result p1

    :goto_4
    instance-of v6, v1, Lcom/appodeal/ads/j5;

    if-eqz v6, :cond_b

    move-object v6, v1

    check-cast v6, Lcom/appodeal/ads/j5;

    goto :goto_5

    :cond_b
    move-object v6, v4

    :goto_5
    if-nez v6, :cond_c

    move-object v6, v4

    goto :goto_6

    :cond_c
    invoke-interface {v6}, Lcom/appodeal/ads/j5;->c()Ljava/lang/String;

    move-result-object v6

    :goto_6
    const-string v7, "JsonRequestExt"

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Applying retry logic (Failed at "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v5}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcom/appodeal/ads/networking/c$b$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    iput-object v4, p0, Lcom/appodeal/ads/networking/c$b$a;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iput v2, p0, Lcom/appodeal/ads/networking/c$b$a;->c:I

    invoke-static {v1, p0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_14

    return-object v0

    :cond_e
    :goto_7
    const-string p1, "Request failed: "

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v5}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of p1, v1, Lcom/appodeal/ads/x0;

    if-eqz p1, :cond_f

    check-cast v1, Lcom/appodeal/ads/x0;

    goto :goto_8

    :cond_f
    move-object v1, v4

    :goto_8
    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    invoke-interface {v1}, Lcom/appodeal/ads/x0;->a()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {p1}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v0, v4

    :cond_12
    const-string v1, "Using cached result: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v7, v0, v4, v1, v4}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v4, p1

    :goto_9
    if-nez v4, :cond_13

    invoke-static {v5}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_a

    :cond_13
    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :cond_14
    :goto_a
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
