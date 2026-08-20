.class public final Lcom/appodeal/ads/k0$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k0;->a(Landroid/content/Context;Lcom/appodeal/ads/u;Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u$e;)V
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
    c = "com.appodeal.ads.AppodealNetworkRequestApi$getRequest$1"
    f = "AppodealNetworkRequestApi.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x7b
    }
    m = "invokeSuspend"
    n = {
        "baseCallback",
        "userTokenCallback"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/t1;

.field public b:Lcom/appodeal/ads/x1;

.field public c:I

.field public final synthetic d:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/r<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lcom/appodeal/ads/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/s<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lcom/appodeal/ads/u$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "***>.e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;Landroid/content/Context;Lcom/appodeal/ads/u$e;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/s<",
            "*>;",
            "Lcom/appodeal/ads/u<",
            "***>;",
            "Landroid/content/Context;",
            "Lcom/appodeal/ads/u<",
            "***>.e;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/k0$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/k0$e;->d:Lcom/appodeal/ads/r;

    iput-object p2, p0, Lcom/appodeal/ads/k0$e;->e:Lcom/appodeal/ads/s;

    iput-object p3, p0, Lcom/appodeal/ads/k0$e;->f:Lcom/appodeal/ads/u;

    iput-object p4, p0, Lcom/appodeal/ads/k0$e;->g:Landroid/content/Context;

    iput-object p5, p0, Lcom/appodeal/ads/k0$e;->h:Lcom/appodeal/ads/u$e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/appodeal/ads/k0$e;

    iget-object v1, p0, Lcom/appodeal/ads/k0$e;->d:Lcom/appodeal/ads/r;

    iget-object v2, p0, Lcom/appodeal/ads/k0$e;->e:Lcom/appodeal/ads/s;

    iget-object v3, p0, Lcom/appodeal/ads/k0$e;->f:Lcom/appodeal/ads/u;

    iget-object v4, p0, Lcom/appodeal/ads/k0$e;->g:Landroid/content/Context;

    iget-object v5, p0, Lcom/appodeal/ads/k0$e;->h:Lcom/appodeal/ads/u$e;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/k0$e;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;Landroid/content/Context;Lcom/appodeal/ads/u$e;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/k0$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/k0$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/k0$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/k0$e;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/k0$e;->b:Lcom/appodeal/ads/x1;

    iget-object v1, p0, Lcom/appodeal/ads/k0$e;->a:Lcom/appodeal/ads/t1;

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

    new-instance p1, Lcom/appodeal/ads/s1$c;

    iget-object v1, p0, Lcom/appodeal/ads/k0$e;->d:Lcom/appodeal/ads/r;

    iget-object v3, p0, Lcom/appodeal/ads/k0$e;->e:Lcom/appodeal/ads/s;

    iget-object v4, p0, Lcom/appodeal/ads/k0$e;->f:Lcom/appodeal/ads/u;

    invoke-direct {p1, v1, v3, v4}, Lcom/appodeal/ads/s1$c;-><init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;)V

    new-instance v1, Lcom/appodeal/ads/t1;

    iget-object v3, p0, Lcom/appodeal/ads/k0$e;->g:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/appodeal/ads/t1;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/appodeal/ads/x1;

    invoke-direct {v3}, Lcom/appodeal/ads/x1;-><init>()V

    iput-object v1, p0, Lcom/appodeal/ads/k0$e;->a:Lcom/appodeal/ads/t1;

    iput-object v3, p0, Lcom/appodeal/ads/k0$e;->b:Lcom/appodeal/ads/x1;

    iput v2, p0, Lcom/appodeal/ads/k0$e;->c:I

    invoke-static {p1, p0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    :goto_0
    iget-object v2, p0, Lcom/appodeal/ads/k0$e;->h:Lcom/appodeal/ads/u$e;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lcom/appodeal/ads/t1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/appodeal/ads/x1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/appodeal/ads/u$e;->a(Lorg/json/JSONObject;)V

    :cond_3
    iget-object v2, p0, Lcom/appodeal/ads/k0$e;->h:Lcom/appodeal/ads/u$e;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/appodeal/ads/u$e;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
