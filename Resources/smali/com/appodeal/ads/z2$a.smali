.class public final Lcom/appodeal/ads/z2$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/z2$a$b;
    }
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
        "Lcom/appodeal/ads/modules/common/internal/service/Service<",
        "*>;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.RegisterServicesUseCase$invoke$2$deferredInitServices$1$1$1"
    f = "RegisterServicesUseCase.kt"
    i = {}
    l = {
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

.field public final synthetic c:Lcom/appodeal/ads/networking/b;

.field public final synthetic d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

.field public final synthetic e:Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;Lcom/appodeal/ads/networking/b;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;",
            "Lcom/appodeal/ads/networking/b;",
            "Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;",
            "Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/z2$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/z2$a;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    iput-object p2, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    iput-object p3, p0, Lcom/appodeal/ads/z2$a;->d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    iput-object p4, p0, Lcom/appodeal/ads/z2$a;->e:Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;

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

    new-instance p1, Lcom/appodeal/ads/z2$a;

    iget-object v1, p0, Lcom/appodeal/ads/z2$a;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    iget-object v2, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    iget-object v3, p0, Lcom/appodeal/ads/z2$a;->d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    iget-object v4, p0, Lcom/appodeal/ads/z2$a;->e:Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/ads/z2$a;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;Lcom/appodeal/ads/networking/b;Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/z2$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/z2$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/z2$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/z2$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->b:Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;

    sget-object v1, Lcom/appodeal/ads/z2$a$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/service/ServiceVariant;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b;->e()Lcom/appodeal/ads/networking/b$e;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b$e;->a()J

    move-result-wide v3

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b;->f()Lcom/appodeal/ads/networking/b$f;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b$f;->b()J

    move-result-wide v3

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b;->d()Lcom/appodeal/ads/networking/b$d;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b$d;->d()J

    move-result-wide v3

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b;->c()Lcom/appodeal/ads/networking/b$c;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b$c;->a()J

    move-result-wide v3

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b;->a()Lcom/appodeal/ads/networking/b$a;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b$a;->d()J

    move-result-wide v3

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/appodeal/ads/z2$a;->c:Lcom/appodeal/ads/networking/b;

    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b;->b()Lcom/appodeal/ads/networking/b$b;

    move-result-object p1

    if-nez p1, :cond_7

    :goto_0
    move-object p1, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/appodeal/ads/networking/b$b;->d()J

    move-result-wide v3

    :goto_1
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_8

    const-wide/16 v3, 0x3a98

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_3
    new-instance p1, Lcom/appodeal/ads/z2$a$a;

    iget-object v5, p0, Lcom/appodeal/ads/z2$a;->d:Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;

    iget-object v6, p0, Lcom/appodeal/ads/z2$a;->e:Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;

    invoke-direct {p1, v5, v6, v1}, Lcom/appodeal/ads/z2$a$a;-><init>(Lcom/appodeal/ads/modules/common/internal/service/ServicesRegistry;Lcom/appodeal/ads/modules/common/internal/service/ServiceOptions;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/appodeal/ads/z2$a;->a:I

    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    check-cast p1, Lkotlin/Result;

    if-nez p1, :cond_a

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/appodeal/ads/service/ServiceError$InitializationTimeout;->INSTANCE:Lcom/appodeal/ads/service/ServiceError$InitializationTimeout;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
