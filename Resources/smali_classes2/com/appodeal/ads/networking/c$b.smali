.class public final Lcom/appodeal/ads/networking/c$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/networking/c;->a(Lcom/appodeal/ads/s1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$2"
    f = "JsonRequestExt.kt"
    i = {}
    l = {
        0x1b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/appodeal/ads/s1;

.field public final synthetic d:Lcom/appodeal/ads/s1;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/appodeal/ads/s1;Lcom/appodeal/ads/s1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/appodeal/ads/s1;",
            "Lcom/appodeal/ads/s1;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/networking/c$b;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/appodeal/ads/networking/c$b;->b:I

    iput-object p2, p0, Lcom/appodeal/ads/networking/c$b;->c:Lcom/appodeal/ads/s1;

    iput-object p3, p0, Lcom/appodeal/ads/networking/c$b;->d:Lcom/appodeal/ads/s1;

    iput-object p4, p0, Lcom/appodeal/ads/networking/c$b;->e:Ljava/lang/String;

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

    new-instance p1, Lcom/appodeal/ads/networking/c$b;

    iget v1, p0, Lcom/appodeal/ads/networking/c$b;->b:I

    iget-object v2, p0, Lcom/appodeal/ads/networking/c$b;->c:Lcom/appodeal/ads/s1;

    iget-object v3, p0, Lcom/appodeal/ads/networking/c$b;->d:Lcom/appodeal/ads/s1;

    iget-object v4, p0, Lcom/appodeal/ads/networking/c$b;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/networking/c$b;-><init>(ILcom/appodeal/ads/s1;Lcom/appodeal/ads/s1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/networking/c$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/networking/c$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/networking/c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/networking/c$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/appodeal/ads/networking/c$b;->b:I

    int-to-long v3, p1

    new-instance p1, Lcom/appodeal/ads/networking/c$b$a;

    iget-object v1, p0, Lcom/appodeal/ads/networking/c$b;->c:Lcom/appodeal/ads/s1;

    iget-object v5, p0, Lcom/appodeal/ads/networking/c$b;->d:Lcom/appodeal/ads/s1;

    iget-object v6, p0, Lcom/appodeal/ads/networking/c$b;->e:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p1, v1, v5, v6, v7}, Lcom/appodeal/ads/networking/c$b$a;-><init>(Lcom/appodeal/ads/s1;Lcom/appodeal/ads/s1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/appodeal/ads/networking/c$b;->a:I

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lkotlin/Result;

    if-nez p1, :cond_3

    sget-object p1, Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;

    invoke-static {p1}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
