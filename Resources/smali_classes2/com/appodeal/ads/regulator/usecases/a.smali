.class public final Lcom/appodeal/ads/regulator/usecases/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/consent/ConsentManager;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/ConsentManager;)V
    .locals 1

    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/usecases/a;->a:Lcom/appodeal/consent/ConsentManager;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/regulator/usecases/a;)V
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/regulator/usecases/a;->a:Lcom/appodeal/consent/ConsentManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Consent$Status;",
            "Lcom/appodeal/consent/Consent$Zone;",
            "Lcom/appodeal/consent/Consent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/appodeal/ads/regulator/data/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/appodeal/ads/regulator/usecases/a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/appodeal/ads/regulator/usecases/a$a;

    iget v3, v2, Lcom/appodeal/ads/regulator/usecases/a$a;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/appodeal/ads/regulator/usecases/a$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/appodeal/ads/regulator/usecases/a$a;

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/regulator/usecases/a$a;-><init>(Lcom/appodeal/ads/regulator/usecases/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/appodeal/ads/regulator/usecases/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/appodeal/ads/regulator/usecases/a$a;->c:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v5, v2, Lcom/appodeal/ads/regulator/usecases/a$a;->c:I

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v8, Lcom/appodeal/ads/regulator/usecases/a$b;

    invoke-direct {v8, v1, p0}, Lcom/appodeal/ads/regulator/usecases/a$b;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lcom/appodeal/ads/regulator/usecases/a;)V

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v9, p5

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/appodeal/consent/ConsentManager;->requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_3

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
