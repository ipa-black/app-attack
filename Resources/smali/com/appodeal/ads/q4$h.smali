.class public final Lcom/appodeal/ads/q4$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/q4;->a(Landroid/content/Context;Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;)V
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
    c = "com.appodeal.ads.SdkCore$validateInAppPurchase$1"
    f = "SdkCore.kt"
    i = {}
    l = {
        0x336
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/appodeal/ads/inapp/InAppPurchase;

.field public final synthetic c:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/inapp/InAppPurchase;",
            "Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/q4$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/q4$h;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    iput-object p2, p0, Lcom/appodeal/ads/q4$h;->c:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    iput-object p3, p0, Lcom/appodeal/ads/q4$h;->d:Landroid/content/Context;

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

    new-instance p1, Lcom/appodeal/ads/q4$h;

    iget-object v0, p0, Lcom/appodeal/ads/q4$h;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    iget-object v1, p0, Lcom/appodeal/ads/q4$h;->c:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    iget-object v2, p0, Lcom/appodeal/ads/q4$h;->d:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/appodeal/ads/q4$h;-><init>(Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/q4$h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/q4$h;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/q4$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/q4$h;->a:I

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

    sget-object p1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {p1}, Lcom/appodeal/ads/q4;->c(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/services/c;

    move-result-object p1

    iget-object v1, p0, Lcom/appodeal/ads/q4$h;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    iget-object v3, p0, Lcom/appodeal/ads/q4$h;->c:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

    new-instance v4, Lcom/appodeal/ads/q4$h$a;

    iget-object v5, p0, Lcom/appodeal/ads/q4$h;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/appodeal/ads/q4$h;->b:Lcom/appodeal/ads/inapp/InAppPurchase;

    invoke-direct {v4, v5, v6}, Lcom/appodeal/ads/q4$h$a;-><init>(Landroid/content/Context;Lcom/appodeal/ads/inapp/InAppPurchase;)V

    iput v2, p0, Lcom/appodeal/ads/q4$h;->a:I

    invoke-interface {p1, v1, v3, v4, p0}, Lcom/appodeal/ads/services/c;->a(Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Lcom/appodeal/ads/q4$h$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
