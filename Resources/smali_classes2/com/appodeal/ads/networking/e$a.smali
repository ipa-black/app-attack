.class public final Lcom/appodeal/ads/networking/e$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networking/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$4$1"
    f = "JsonRequestExt.kt"
    i = {}
    l = {
        0x45
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

.field public b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public c:I

.field public final synthetic d:Lcom/appodeal/ads/y2;

.field public final synthetic e:Lcom/appodeal/ads/y2;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/y2;Lcom/appodeal/ads/y2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/y2;",
            "Lcom/appodeal/ads/y2;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/networking/e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/networking/e$a;->d:Lcom/appodeal/ads/y2;

    iput-object p2, p0, Lcom/appodeal/ads/networking/e$a;->e:Lcom/appodeal/ads/y2;

    iput-object p3, p0, Lcom/appodeal/ads/networking/e$a;->f:Ljava/lang/String;

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

    new-instance p1, Lcom/appodeal/ads/networking/e$a;

    iget-object v0, p0, Lcom/appodeal/ads/networking/e$a;->d:Lcom/appodeal/ads/y2;

    iget-object v1, p0, Lcom/appodeal/ads/networking/e$a;->e:Lcom/appodeal/ads/y2;

    iget-object v2, p0, Lcom/appodeal/ads/networking/e$a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/appodeal/ads/networking/e$a;-><init>(Lcom/appodeal/ads/y2;Lcom/appodeal/ads/y2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/networking/e$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/networking/e$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/networking/e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/networking/e$a;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/networking/e$a;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iget-object v1, p0, Lcom/appodeal/ads/networking/e$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/networking/e$a;->d:Lcom/appodeal/ads/y2;

    invoke-virtual {p1}, Lcom/appodeal/ads/y2;->b()Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

    move-result-object v1

    iget-object p1, p0, Lcom/appodeal/ads/networking/e$a;->d:Lcom/appodeal/ads/y2;

    invoke-virtual {p1}, Lcom/appodeal/ads/y2;->c()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object p1

    iget-object v3, p0, Lcom/appodeal/ads/networking/e$a;->d:Lcom/appodeal/ads/y2;

    iput-object v1, p0, Lcom/appodeal/ads/networking/e$a;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

    iput-object p1, p0, Lcom/appodeal/ads/networking/e$a;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iput v2, p0, Lcom/appodeal/ads/networking/e$a;->c:I

    invoke-virtual {v3, p0}, Lcom/appodeal/ads/y2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    move-object v1, p1

    move-object p1, v2

    :goto_0
    check-cast p1, Lcom/appodeal/ads/api/Request$Builder;

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request$Builder;->build()Lcom/appodeal/ads/api/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Request;->toByteArray()[B

    move-result-object v3

    iget-object p1, p0, Lcom/appodeal/ads/networking/e$a;->d:Lcom/appodeal/ads/y2;

    .line 1
    const-string v2, "Request body size to "

    invoke-static {v2}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/y2;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " bytes."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ProtoRequest"

    invoke-static {v2, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appodeal/ads/networking/e$a;->e:Lcom/appodeal/ads/y2;

    instance-of v5, p1, Lcom/appodeal/ads/i5;

    iget-object v2, p0, Lcom/appodeal/ads/networking/e$a;->f:Ljava/lang/String;

    sget-object v4, Lcom/appodeal/ads/networking/e$a$a;->a:Lcom/appodeal/ads/networking/e$a$a;

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/modules/libs/network/HttpClient;->enqueue-yxL6bBk(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
