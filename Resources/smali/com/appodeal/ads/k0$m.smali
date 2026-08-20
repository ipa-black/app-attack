.class public final Lcom/appodeal/ads/k0$m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k0;->a(Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.AppodealNetworkRequestApi$statsRequest$1"
    f = "AppodealNetworkRequestApi.kt"
    i = {}
    l = {
        0xf2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/appodeal/ads/y2$a;

.field public final synthetic c:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/y2$a;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/y2$a;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;TAdRequestType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/k0$m;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/k0$m;->b:Lcom/appodeal/ads/y2$a;

    iput-object p2, p0, Lcom/appodeal/ads/k0$m;->c:Lcom/appodeal/ads/u;

    iput-object p3, p0, Lcom/appodeal/ads/k0$m;->d:Lcom/appodeal/ads/r;

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

    new-instance p1, Lcom/appodeal/ads/k0$m;

    iget-object v0, p0, Lcom/appodeal/ads/k0$m;->b:Lcom/appodeal/ads/y2$a;

    iget-object v1, p0, Lcom/appodeal/ads/k0$m;->c:Lcom/appodeal/ads/u;

    iget-object v2, p0, Lcom/appodeal/ads/k0$m;->d:Lcom/appodeal/ads/r;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/appodeal/ads/k0$m;-><init>(Lcom/appodeal/ads/y2$a;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/k0$m;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/k0$m;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/k0$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/k0$m;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/k0$m;->b:Lcom/appodeal/ads/y2$a;

    iput v2, p0, Lcom/appodeal/ads/k0$m;->a:I

    invoke-static {p1, p0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/y2$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/k0$m;->c:Lcom/appodeal/ads/u;

    iget-object v1, p0, Lcom/appodeal/ads/k0$m;->d:Lcom/appodeal/ads/r;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "PostBid"

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "ApiNetworkRequest: onSuccess"

    invoke-static {v3, v4}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v5, "SDK"

    const-string v6, "Response"

    invoke-static {v5, v6, v2, v4}, Lcom/appodeal/ads/utils/Log;->logObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-virtual {v0, v1, v2}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;Lorg/json/JSONObject;)V

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/k0$m;->c:Lcom/appodeal/ads/u;

    iget-object v1, p0, Lcom/appodeal/ads/k0$m;->d:Lcom/appodeal/ads/r;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "ApiNetworkRequest: onFail"

    invoke-static {v3, p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/r;Lorg/json/JSONObject;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
