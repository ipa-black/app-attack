.class public final Lcom/appodeal/ads/regulator/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/appodeal/ads/regulator/usecases/a;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/appodeal/ads/regulator/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/appodeal/ads/regulator/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/ads/regulator/usecases/a;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadConsent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/regulator/d;->b:Lcom/appodeal/ads/regulator/usecases/a;

    iput-object p3, p0, Lcom/appodeal/ads/regulator/d;->c:Lkotlinx/coroutines/CoroutineScope;

    sget-object p1, Lcom/appodeal/ads/regulator/b$c;->a:Lcom/appodeal/ads/regulator/b$c;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/regulator/d;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p2, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, v1, p2, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/appodeal/ads/regulator/d;->e:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lcom/appodeal/ads/regulator/d$c;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/regulator/d$c;-><init>(Lcom/appodeal/ads/regulator/d;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/regulator/d;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/appodeal/ads/regulator/d$a;

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/regulator/d$a;-><init>(Lcom/appodeal/ads/regulator/d;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->scan(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/appodeal/ads/regulator/d$b;

    invoke-direct {p2, p0, v1}, Lcom/appodeal/ads/regulator/d$b;-><init>(Lcom/appodeal/ads/regulator/d;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/ads/regulator/d;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/regulator/d;->e:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final a(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/regulator/d;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    new-instance v3, Lcom/appodeal/ads/regulator/g;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/appodeal/ads/regulator/g;-><init>(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/regulator/d;Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/d;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    new-instance v8, Lcom/appodeal/ads/regulator/f;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/appodeal/ads/regulator/f;-><init>(Lcom/appodeal/ads/regulator/d;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lcom/appodeal/ads/regulator/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/regulator/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/appodeal/ads/regulator/d;)Lcom/appodeal/ads/regulator/usecases/a;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/regulator/d;->b:Lcom/appodeal/ads/regulator/usecases/a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/appodeal/ads/regulator/d;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/regulator/d;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final e(Lcom/appodeal/ads/regulator/d;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Lcom/appodeal/consent/ConsentForm;

    iget-object v1, p0, Lcom/appodeal/ads/regulator/d;->a:Landroid/content/Context;

    .line 2
    iget-object p0, p0, Lcom/appodeal/ads/regulator/d;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/regulator/e;

    .line 3
    invoke-direct {v0, v1, p0}, Lcom/appodeal/consent/ConsentForm;-><init>(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;)V

    invoke-virtual {v0}, Lcom/appodeal/consent/ConsentForm;->load()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Consent;",
            "Lcom/appodeal/consent/Consent$Status;",
            "Lcom/appodeal/consent/Consent$Zone;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/consent/Consent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcom/appodeal/ads/regulator/d$d;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/appodeal/ads/regulator/d$d;

    iget v3, v2, Lcom/appodeal/ads/regulator/d$d;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/appodeal/ads/regulator/d$d;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/appodeal/ads/regulator/d$d;

    invoke-direct {v2, p0, v1}, Lcom/appodeal/ads/regulator/d$d;-><init>(Lcom/appodeal/ads/regulator/d;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/appodeal/ads/regulator/d$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/appodeal/ads/regulator/d$d;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

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

    new-instance v1, Lcom/appodeal/ads/regulator/a$f;

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct {v1, p1, p2, v8, v9}, Lcom/appodeal/ads/regulator/a$f;-><init>(Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V

    .line 5
    iget-object v7, v0, Lcom/appodeal/ads/regulator/d;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v10, Lcom/appodeal/ads/regulator/g;

    invoke-direct {v10, p0, v1, v6}, Lcom/appodeal/ads/regulator/g;-><init>(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 6
    iget-object v1, v0, Lcom/appodeal/ads/regulator/d;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Lcom/appodeal/ads/regulator/d$e;

    invoke-direct {v4, v6}, Lcom/appodeal/ads/regulator/d$e;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v5, v2, Lcom/appodeal/ads/regulator/d$d;->c:I

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lcom/appodeal/ads/regulator/b;

    instance-of v2, v1, Lcom/appodeal/ads/regulator/b$f$b;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/appodeal/ads/regulator/b$f$b;

    goto :goto_2

    :cond_4
    move-object v1, v6

    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/appodeal/ads/regulator/b$f$b;->a()Lcom/appodeal/consent/Consent;

    move-result-object v6

    :goto_3
    return-object v6
.end method
