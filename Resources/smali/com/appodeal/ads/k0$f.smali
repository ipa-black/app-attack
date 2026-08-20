.class public final Lcom/appodeal/ads/k0$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k0;->a(Landroid/content/Context;DLjava/lang/String;)V
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
    c = "com.appodeal.ads.AppodealNetworkRequestApi$iapRequest$1"
    f = "AppodealNetworkRequestApi.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x4f
    }
    m = "invokeSuspend"
    n = {
        "callback",
        "userTokenCallback"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/v1;

.field public b:Lcom/appodeal/ads/x1;

.field public c:I

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/appodeal/ads/s1$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/s1$d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/s1$d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/k0$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/k0$f;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/k0$f;->e:Lcom/appodeal/ads/s1$d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/appodeal/ads/k0$f;

    iget-object v0, p0, Lcom/appodeal/ads/k0$f;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/appodeal/ads/k0$f;->e:Lcom/appodeal/ads/s1$d;

    invoke-direct {p1, v0, v1, p2}, Lcom/appodeal/ads/k0$f;-><init>(Landroid/content/Context;Lcom/appodeal/ads/s1$d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/k0$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/k0$f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/k0$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/k0$f;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/k0$f;->b:Lcom/appodeal/ads/x1;

    iget-object v1, p0, Lcom/appodeal/ads/k0$f;->a:Lcom/appodeal/ads/v1;

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

    new-instance v1, Lcom/appodeal/ads/v1;

    iget-object p1, p0, Lcom/appodeal/ads/k0$f;->d:Landroid/content/Context;

    invoke-direct {v1, p1}, Lcom/appodeal/ads/v1;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/appodeal/ads/x1;

    invoke-direct {p1}, Lcom/appodeal/ads/x1;-><init>()V

    iget-object v3, p0, Lcom/appodeal/ads/k0$f;->e:Lcom/appodeal/ads/s1$d;

    iput-object v1, p0, Lcom/appodeal/ads/k0$f;->a:Lcom/appodeal/ads/v1;

    iput-object p1, p0, Lcom/appodeal/ads/k0$f;->b:Lcom/appodeal/ads/x1;

    iput v2, p0, Lcom/appodeal/ads/k0$f;->c:I

    invoke-static {v3, p0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v2

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/appodeal/ads/v1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/appodeal/ads/x1;->a(Lorg/json/JSONObject;)V

    :cond_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
