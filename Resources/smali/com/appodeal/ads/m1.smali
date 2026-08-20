.class public final Lcom/appodeal/ads/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/k0;

.field public final b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    sget-object p1, Lcom/appodeal/ads/k0;->a:Lcom/appodeal/ads/k0;

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-direct {p0, p1, v0}, Lcom/appodeal/ads/m1;-><init>(Lcom/appodeal/ads/k0;Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/k0;Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;)V
    .locals 1

    const-string v0, "appodealNetworkRequestApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/m1;->a:Lcom/appodeal/ads/k0;

    iput-object p2, p0, Lcom/appodeal/ads/m1;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/appodeal/ads/m1$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/m1$a;

    iget v1, v0, Lcom/appodeal/ads/m1$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/m1$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/m1$a;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/m1$a;-><init>(Lcom/appodeal/ads/m1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/appodeal/ads/m1$a;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/m1$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/appodeal/ads/m1$a;->b:Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/appodeal/ads/m1$a;->a:Lcom/appodeal/ads/m1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/appodeal/ads/m1$a;->a:Lcom/appodeal/ads/m1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/m1;->a:Lcom/appodeal/ads/k0;

    iput-object p0, v0, Lcom/appodeal/ads/m1$a;->a:Lcom/appodeal/ads/m1;

    iput v4, v0, Lcom/appodeal/ads/m1$a;->e:I

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/k0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iput-object v2, v0, Lcom/appodeal/ads/m1$a;->a:Lcom/appodeal/ads/m1;

    iput-object p1, v0, Lcom/appodeal/ads/m1$a;->b:Lorg/json/JSONObject;

    iput v3, v0, Lcom/appodeal/ads/m1$a;->e:I

    invoke-virtual {v2, p1, v0}, Lcom/appodeal/ads/m1;->a(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, p1

    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string p1, "init"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {}, Lcom/appodeal/ads/ApdServiceRegistry;->getInstance()Lcom/appodeal/ads/ApdServiceRegistry;

    move-result-object v1

    iget-object v0, v0, Lcom/appodeal/ads/m1;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/appodeal/ads/ApdServiceRegistry;->initialize(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 2
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/appodeal/ads/m1$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/appodeal/ads/m1$b;

    iget v1, v0, Lcom/appodeal/ads/m1$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/m1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/m1$b;

    invoke-direct {v0, p0, p2}, Lcom/appodeal/ads/m1$b;-><init>(Lcom/appodeal/ads/m1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/appodeal/ads/m1$b;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/m1$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/appodeal/ads/m1$b;->b:Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/appodeal/ads/m1$b;->a:Lcom/appodeal/ads/m1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p2, Lcom/appodeal/ads/r0;->a:Lcom/appodeal/ads/r0;

    invoke-static {p1}, Lcom/appodeal/ads/r0;->a(Lorg/json/JSONObject;)V

    iput-object p0, v0, Lcom/appodeal/ads/m1$b;->a:Lcom/appodeal/ads/m1;

    iput-object p1, v0, Lcom/appodeal/ads/m1$b;->b:Lorg/json/JSONObject;

    iput v3, v0, Lcom/appodeal/ads/m1$b;->e:I

    invoke-virtual {p2, p1, v0}, Lcom/appodeal/ads/r0;->a(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    sget-object p2, Lcom/appodeal/ads/r0;->a:Lcom/appodeal/ads/r0;

    invoke-static {p1}, Lcom/appodeal/ads/r0;->b(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/appodeal/ads/i0;->a(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/appodeal/ads/x2;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object p2

    iget-object v0, v0, Lcom/appodeal/ads/m1;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/appodeal/ads/utils/x;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
