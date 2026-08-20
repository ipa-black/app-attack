.class public final Lcom/appodeal/ads/regulator/f;
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
    c = "com.appodeal.ads.regulator.ConsentSdkImpl$loadCurrentConsent$1"
    f = "ConsentSdk.kt"
    i = {}
    l = {
        0xbb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/appodeal/ads/regulator/d;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/appodeal/consent/Consent$Status;

.field public final synthetic e:Lcom/appodeal/consent/Consent$Zone;

.field public final synthetic f:Lcom/appodeal/consent/Consent;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/regulator/d;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/regulator/d;",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Consent$Status;",
            "Lcom/appodeal/consent/Consent$Zone;",
            "Lcom/appodeal/consent/Consent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/regulator/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/regulator/f;->b:Lcom/appodeal/ads/regulator/d;

    iput-object p2, p0, Lcom/appodeal/ads/regulator/f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/regulator/f;->d:Lcom/appodeal/consent/Consent$Status;

    iput-object p4, p0, Lcom/appodeal/ads/regulator/f;->e:Lcom/appodeal/consent/Consent$Zone;

    iput-object p5, p0, Lcom/appodeal/ads/regulator/f;->f:Lcom/appodeal/consent/Consent;

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

    new-instance p1, Lcom/appodeal/ads/regulator/f;

    iget-object v1, p0, Lcom/appodeal/ads/regulator/f;->b:Lcom/appodeal/ads/regulator/d;

    iget-object v2, p0, Lcom/appodeal/ads/regulator/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appodeal/ads/regulator/f;->d:Lcom/appodeal/consent/Consent$Status;

    iget-object v4, p0, Lcom/appodeal/ads/regulator/f;->e:Lcom/appodeal/consent/Consent$Zone;

    iget-object v5, p0, Lcom/appodeal/ads/regulator/f;->f:Lcom/appodeal/consent/Consent;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/appodeal/ads/regulator/f;-><init>(Lcom/appodeal/ads/regulator/d;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/regulator/f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/regulator/f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/regulator/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/regulator/f;->a:I

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

    iget-object p1, p0, Lcom/appodeal/ads/regulator/f;->b:Lcom/appodeal/ads/regulator/d;

    invoke-static {p1}, Lcom/appodeal/ads/regulator/d;->c(Lcom/appodeal/ads/regulator/d;)Lcom/appodeal/ads/regulator/usecases/a;

    move-result-object v3

    iget-object p1, p0, Lcom/appodeal/ads/regulator/f;->b:Lcom/appodeal/ads/regulator/d;

    invoke-static {p1}, Lcom/appodeal/ads/regulator/d;->b(Lcom/appodeal/ads/regulator/d;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/appodeal/ads/regulator/f;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/appodeal/ads/regulator/f;->d:Lcom/appodeal/consent/Consent$Status;

    iget-object v7, p0, Lcom/appodeal/ads/regulator/f;->e:Lcom/appodeal/consent/Consent$Zone;

    iget-object v8, p0, Lcom/appodeal/ads/regulator/f;->f:Lcom/appodeal/consent/Consent;

    iput v2, p0, Lcom/appodeal/ads/regulator/f;->a:I

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/appodeal/ads/regulator/usecases/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/regulator/f;->b:Lcom/appodeal/ads/regulator/d;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/appodeal/ads/regulator/data/a;

    new-instance v2, Lcom/appodeal/ads/regulator/a$b;

    invoke-virtual {v1}, Lcom/appodeal/ads/regulator/data/a;->a()Lcom/appodeal/consent/Consent;

    move-result-object v3

    invoke-virtual {v1}, Lcom/appodeal/ads/regulator/data/a;->b()Z

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/appodeal/ads/regulator/a$b;-><init>(Lcom/appodeal/consent/Consent;Z)V

    invoke-static {v0, v2}, Lcom/appodeal/ads/regulator/d;->a(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;)V

    :cond_3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/f;->b:Lcom/appodeal/ads/regulator/d;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/appodeal/ads/regulator/a$d;

    invoke-direct {v1, p1}, Lcom/appodeal/ads/regulator/a$d;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/regulator/d;->a(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
