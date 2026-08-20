.class public final Lcom/appodeal/ads/k0$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k0;->a(Lcom/appodeal/ads/r;Lcom/appodeal/ads/l;Ljava/lang/Integer;Ljava/lang/Double;Lcom/appodeal/ads/unified/UnifiedAdCallbackClickTrackListener;)V
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
    c = "com.appodeal.ads.AppodealNetworkRequestApi$clickRequest$1"
    f = "AppodealNetworkRequestApi.kt"
    i = {}
    l = {
        0x9b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/appodeal/ads/s1$a$a;

.field public final synthetic c:Lcom/appodeal/ads/u1;

.field public final synthetic d:Lcom/appodeal/ads/y1;

.field public final synthetic e:Lcom/appodeal/ads/x1;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s1$a$a;Lcom/appodeal/ads/u1;Lcom/appodeal/ads/y1;Lcom/appodeal/ads/x1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/s1$a$a;",
            "Lcom/appodeal/ads/u1;",
            "Lcom/appodeal/ads/y1;",
            "Lcom/appodeal/ads/x1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/k0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/k0$a;->b:Lcom/appodeal/ads/s1$a$a;

    iput-object p2, p0, Lcom/appodeal/ads/k0$a;->c:Lcom/appodeal/ads/u1;

    iput-object p3, p0, Lcom/appodeal/ads/k0$a;->d:Lcom/appodeal/ads/y1;

    iput-object p4, p0, Lcom/appodeal/ads/k0$a;->e:Lcom/appodeal/ads/x1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/appodeal/ads/k0$a;

    iget-object v1, p0, Lcom/appodeal/ads/k0$a;->b:Lcom/appodeal/ads/s1$a$a;

    iget-object v2, p0, Lcom/appodeal/ads/k0$a;->c:Lcom/appodeal/ads/u1;

    iget-object v3, p0, Lcom/appodeal/ads/k0$a;->d:Lcom/appodeal/ads/y1;

    iget-object v4, p0, Lcom/appodeal/ads/k0$a;->e:Lcom/appodeal/ads/x1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/k0$a;-><init>(Lcom/appodeal/ads/s1$a$a;Lcom/appodeal/ads/u1;Lcom/appodeal/ads/y1;Lcom/appodeal/ads/x1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/k0$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/k0$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/k0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/k0$a;->a:I

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

    iget-object p1, p0, Lcom/appodeal/ads/k0$a;->b:Lcom/appodeal/ads/s1$a$a;

    iput v2, p0, Lcom/appodeal/ads/k0$a;->a:I

    invoke-static {p1, p0}, Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/k0$a;->c:Lcom/appodeal/ads/u1;

    iget-object v1, p0, Lcom/appodeal/ads/k0$a;->d:Lcom/appodeal/ads/y1;

    iget-object v2, p0, Lcom/appodeal/ads/k0$a;->e:Lcom/appodeal/ads/x1;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lcom/appodeal/ads/u1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/appodeal/ads/y1;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/appodeal/ads/x1;->a(Lorg/json/JSONObject;)V

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/k0$a;->c:Lcom/appodeal/ads/u1;

    iget-object v1, p0, Lcom/appodeal/ads/k0$a;->d:Lcom/appodeal/ads/y1;

    iget-object v2, p0, Lcom/appodeal/ads/k0$a;->e:Lcom/appodeal/ads/x1;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v0}, Lcom/appodeal/ads/u1;->a()V

    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/appodeal/ads/networking/f;->a(Ljava/lang/Throwable;)Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
