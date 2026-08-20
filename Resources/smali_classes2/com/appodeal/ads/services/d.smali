.class public final Lcom/appodeal/ads/services/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/services/c;
.implements Lcom/appodeal/ads/services/c$a;


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/Set<",
            "Lcom/appodeal/ads/modules/common/internal/service/Service<",
            "+",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/services/d;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/services/d;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/services/d;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Lcom/appodeal/ads/q4$h$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/appodeal/ads/services/e;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/appodeal/ads/services/e;

    iget v1, v0, Lcom/appodeal/ads/services/e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/services/e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/services/e;

    invoke-direct {v0, p0, p4}, Lcom/appodeal/ads/services/e;-><init>(Lcom/appodeal/ads/services/d;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/appodeal/ads/services/e;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/services/e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lcom/appodeal/ads/services/e;->b:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    iget-object p1, v0, Lcom/appodeal/ads/services/e;->a:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p4, Lcom/appodeal/ads/services/f;

    const/4 v9, 0x0

    move-object v4, p4

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/appodeal/ads/services/f;-><init>(Lcom/appodeal/ads/services/d;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Lcom/appodeal/ads/inapp/InAppPurchase;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/appodeal/ads/services/e;->a:Lcom/appodeal/ads/inapp/InAppPurchase;

    iput-object p2, v0, Lcom/appodeal/ads/services/e;->b:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    iput v3, v0, Lcom/appodeal/ads/services/e;->e:I

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3, p4, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lkotlin/Unit;

    if-nez p4, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    sget-object p3, Lcom/appodeal/ads/service/ServiceError$IAPValidationTimeout;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$IAPValidationTimeout;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;->onInAppPurchaseValidateFail(Lcom/appodeal/ads/inapp/InAppPurchase;Ljava/util/List;)V

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lcom/appodeal/ads/revenue/RevenueInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/revenue/RevenueInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/services/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/appodeal/ads/services/d$b;-><init>(Lcom/appodeal/ads/services/d;Lcom/appodeal/ads/revenue/RevenueInfo;Lkotlin/coroutines/Continuation;)V

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2, v0, p2}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/appodeal/ads/services/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/appodeal/ads/services/d$a;-><init>(Lcom/appodeal/ads/services/d;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const-wide/16 p1, 0x2710

    invoke-static {p1, p2, v0, p3}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/modules/common/internal/service/Service<",
            "+",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/services/d;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getServicesData()Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/services/d;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const-class v1, Lcom/appodeal/ads/modules/common/internal/service/ServiceDataProvider;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/modules/common/internal/service/ServiceDataProvider;

    invoke-interface {v2}, Lcom/appodeal/ads/modules/common/internal/service/ServiceDataProvider;->getServiceData()Lcom/appodeal/ads/modules/common/internal/service/ServiceData;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
