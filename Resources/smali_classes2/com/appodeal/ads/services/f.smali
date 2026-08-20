.class public final Lcom/appodeal/ads/services/f;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.services.ServicesSolutionImpl$validatePurchase$2"
    f = "ServicesSolutionImpl.kt"
    i = {
        0x1,
        0x1,
        0x1
    }
    l = {
        0x30,
        0x39
    }
    m = "invokeSuspend"
    n = {
        "services",
        "destination$iv$iv",
        "service"
    }
    s = {
        "L$0",
        "L$2",
        "L$4"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:Lcom/appodeal/ads/inapp/InAppPurchase;

.field public c:Ljava/util/Collection;

.field public d:Ljava/util/Iterator;

.field public e:Lcom/appodeal/ads/modules/common/internal/service/Purchasable;

.field public f:I

.field public final synthetic g:Lcom/appodeal/ads/services/d;

.field public final synthetic h:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

.field public final synthetic i:Lcom/appodeal/ads/inapp/InAppPurchase;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/services/d;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Lcom/appodeal/ads/inapp/InAppPurchase;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/services/d;",
            "Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;",
            "Lcom/appodeal/ads/inapp/InAppPurchase;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/services/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/services/f;->g:Lcom/appodeal/ads/services/d;

    iput-object p2, p0, Lcom/appodeal/ads/services/f;->h:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    iput-object p3, p0, Lcom/appodeal/ads/services/f;->i:Lcom/appodeal/ads/inapp/InAppPurchase;

    iput-object p4, p0, Lcom/appodeal/ads/services/f;->j:Lkotlin/jvm/functions/Function0;

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

    new-instance p1, Lcom/appodeal/ads/services/f;

    iget-object v1, p0, Lcom/appodeal/ads/services/f;->g:Lcom/appodeal/ads/services/d;

    iget-object v2, p0, Lcom/appodeal/ads/services/f;->h:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    iget-object v3, p0, Lcom/appodeal/ads/services/f;->i:Lcom/appodeal/ads/inapp/InAppPurchase;

    iget-object v4, p0, Lcom/appodeal/ads/services/f;->j:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/services/f;-><init>(Lcom/appodeal/ads/services/d;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Lcom/appodeal/ads/inapp/InAppPurchase;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/services/f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/services/f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/services/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/services/f;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/appodeal/ads/services/f;->e:Lcom/appodeal/ads/modules/common/internal/service/Purchasable;

    iget-object v3, p0, Lcom/appodeal/ads/services/f;->d:Ljava/util/Iterator;

    iget-object v5, p0, Lcom/appodeal/ads/services/f;->c:Ljava/util/Collection;

    iget-object v6, p0, Lcom/appodeal/ads/services/f;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    iget-object v7, p0, Lcom/appodeal/ads/services/f;->a:Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/services/f;->g:Lcom/appodeal/ads/services/d;

    invoke-static {p1}, Lcom/appodeal/ads/services/d;->a(Lcom/appodeal/ads/services/d;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance v1, Lcom/appodeal/ads/services/f$a;

    invoke-direct {v1, v4}, Lcom/appodeal/ads/services/f$a;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/appodeal/ads/services/f;->f:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    const-class v1, Lcom/appodeal/ads/modules/common/internal/service/Purchasable;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->filterIsInstance(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/appodeal/ads/services/f;->h:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    if-nez p1, :cond_4

    goto/16 :goto_b

    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/services/f;->i:Lcom/appodeal/ads/inapp/InAppPurchase;

    sget-object v1, Lcom/appodeal/ads/service/ServiceError$PurchaseValidationServiceNotFound;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$PurchaseValidationServiceNotFound;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;->onInAppPurchaseValidateFail(Lcom/appodeal/ads/inapp/InAppPurchase;Ljava/util/List;)V

    :goto_1
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_b

    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/services/f;->i:Lcom/appodeal/ads/inapp/InAppPurchase;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, p1

    move-object v6, v1

    move-object v13, v5

    move-object v5, v3

    move-object v3, v13

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/appodeal/ads/modules/common/internal/service/Purchasable;

    iput-object v7, p0, Lcom/appodeal/ads/services/f;->a:Ljava/util/List;

    iput-object v6, p0, Lcom/appodeal/ads/services/f;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    iput-object v5, p0, Lcom/appodeal/ads/services/f;->c:Ljava/util/Collection;

    iput-object v3, p0, Lcom/appodeal/ads/services/f;->d:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/appodeal/ads/services/f;->e:Lcom/appodeal/ads/modules/common/internal/service/Purchasable;

    iput v2, p0, Lcom/appodeal/ads/services/f;->f:I

    invoke-interface {v1, v6, p0}, Lcom/appodeal/ads/modules/common/internal/service/Purchasable;->validatePurchase(Lcom/appodeal/ads/inapp/InAppPurchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult;

    instance-of v8, p1, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Success;

    const/16 v9, 0x20

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, p1

    check-cast v10, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Success;

    invoke-virtual {v10}, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Success;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " - Success "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    instance-of v8, p1, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;

    if-eqz v8, :cond_f

    move-object v8, p1

    check-cast v8, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;

    invoke-virtual {v8}, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;->getError()Lcom/appodeal/ads/service/ServiceError;

    move-result-object v10

    instance-of v11, v10, Lcom/appodeal/ads/service/ServiceError$Adjust$PurchaseValidationError;

    const-string v12, "trackInApp - Fail "

    if-eqz v11, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;->getError()Lcom/appodeal/ads/service/ServiceError;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appodeal/ads/service/ServiceError;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_4

    :cond_8
    sget-object v11, Lcom/appodeal/ads/service/ServiceError$Adjust$SubscriptionTrackError;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$Adjust$SubscriptionTrackError;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "trackSubscription - Fail "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    instance-of v8, v10, Lcom/appodeal/ads/service/ServiceError$Appsflyer$PurchaseValidationError;

    if-eqz v8, :cond_a

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_a
    move-object v8, v4

    :goto_6
    if-nez v8, :cond_b

    goto :goto_7

    :cond_b
    check-cast v1, Lcom/appodeal/ads/modules/common/internal/service/Service;

    invoke-interface {v1}, Lcom/appodeal/ads/modules/common/internal/service/Service;->getInfo()Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/n5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "capitalize((service as Service<*>).info.name)"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "Service"

    const-string v9, "Info"

    invoke-static {v8, v9, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    instance-of v1, p1, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;

    if-eqz v1, :cond_c

    check-cast p1, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;

    goto :goto_8

    :cond_c
    move-object p1, v4

    :goto_8
    if-nez p1, :cond_d

    move-object p1, v4

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/service/InAppPurchaseValidationResult$Failure;->getError()Lcom/appodeal/ads/service/ServiceError;

    move-result-object p1

    :goto_9
    if-nez p1, :cond_e

    goto/16 :goto_2

    :cond_e
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_10
    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/appodeal/ads/services/f;->h:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    if-nez p1, :cond_11

    goto :goto_b

    :cond_11
    iget-object v0, p0, Lcom/appodeal/ads/services/f;->i:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-interface {p1, v0, v5}, Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;->onInAppPurchaseValidateFail(Lcom/appodeal/ads/inapp/InAppPurchase;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_12
    iget-object p1, p0, Lcom/appodeal/ads/services/f;->h:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    if-nez p1, :cond_13

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/appodeal/ads/services/f;->i:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-interface {p1, v0, v5}, Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;->onInAppPurchaseValidateSuccess(Lcom/appodeal/ads/inapp/InAppPurchase;Ljava/util/List;)V

    :goto_a
    iget-object p1, p0, Lcom/appodeal/ads/services/f;->j:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto/16 :goto_1

    :goto_b
    return-object v4
.end method
