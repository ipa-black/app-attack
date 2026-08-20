.class public final Lcom/appodeal/consent/internal/f;
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
    c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1"
    f = "InternalManager.kt"
    i = {
        0x1,
        0x2
    }
    l = {
        0x29,
        0x33,
        0x3a,
        0x3e,
        0x4a,
        0x4f,
        0x57
    }
    m = "invokeSuspend"
    n = {
        "appContext",
        "appContext"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public d:Lcom/appodeal/consent/Consent;

.field public e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lcom/appodeal/consent/Consent;

.field public final synthetic i:Lcom/appodeal/consent/IConsentInfoUpdateListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/appodeal/consent/Consent;",
            "Lcom/appodeal/consent/IConsentInfoUpdateListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/consent/internal/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/consent/internal/f;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/consent/internal/f;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/appodeal/consent/internal/f;->h:Lcom/appodeal/consent/Consent;

    iput-object p4, p0, Lcom/appodeal/consent/internal/f;->i:Lcom/appodeal/consent/IConsentInfoUpdateListener;

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

    new-instance p1, Lcom/appodeal/consent/internal/f;

    iget-object v1, p0, Lcom/appodeal/consent/internal/f;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/consent/internal/f;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/appodeal/consent/internal/f;->h:Lcom/appodeal/consent/Consent;

    iget-object v4, p0, Lcom/appodeal/consent/internal/f;->i:Lcom/appodeal/consent/IConsentInfoUpdateListener;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/consent/internal/f;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/consent/internal/f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/consent/internal/f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/consent/internal/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/consent/internal/f;->e:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/appodeal/consent/IConsentInfoUpdateListener;

    iget-object v3, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    move-object v13, v1

    move-object v1, p1

    move-object p1, v13

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/appodeal/consent/internal/f;->d:Lcom/appodeal/consent/Consent;

    iget-object v3, p0, Lcom/appodeal/consent/internal/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v5

    move-object v5, v3

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/f;->f:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/appodeal/consent/internal/f$a;

    iget-object v3, p0, Lcom/appodeal/consent/internal/f;->i:Lcom/appodeal/consent/IConsentInfoUpdateListener;

    invoke-direct {v1, v3, v2}, Lcom/appodeal/consent/internal/f$a;-><init>(Lcom/appodeal/consent/IConsentInfoUpdateListener;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/appodeal/consent/internal/f;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "context.applicationContext"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appodeal/consent/internal/f;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/appodeal/consent/internal/f;->h:Lcom/appodeal/consent/Consent;

    sget-object p1, Lcom/appodeal/advertising/AdvertisingInfo;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo;

    iput-object v4, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    iput-object v4, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    iput-object v3, p0, Lcom/appodeal/consent/internal/f;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/appodeal/consent/internal/f;->d:Lcom/appodeal/consent/Consent;

    const/4 v5, 0x2

    iput v5, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-virtual {p1, v4, p0}, Lcom/appodeal/advertising/AdvertisingInfo;->getAdvertisingProfile(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v1

    move-object v5, v3

    move-object v1, v4

    :goto_1
    move-object v7, p1

    check-cast v7, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getExtraData()Ljava/util/Map;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p1, "MODEL"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p1, "MANUFACTURER"

    invoke-static {v10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p1, "RELEASE"

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    const-string p1, "getDefault().toString()"

    invoke-static {v12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/appodeal/consent/internal/a;

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/appodeal/consent/internal/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/appodeal/consent/internal/c;->a:Lcom/appodeal/consent/internal/c;

    iput-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    iput-object v2, p0, Lcom/appodeal/consent/internal/f;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/appodeal/consent/internal/f;->d:Lcom/appodeal/consent/Consent;

    const/4 v3, 0x3

    iput v3, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-static {p1, p0}, Lcom/appodeal/consent/internal/c;->a(Lcom/appodeal/consent/internal/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :goto_2
    iget-object v3, p0, Lcom/appodeal/consent/internal/f;->i:Lcom/appodeal/consent/IConsentInfoUpdateListener;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v1

    check-cast v4, Lorg/json/JSONObject;

    if-nez v4, :cond_4

    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v4, Lcom/appodeal/consent/internal/f$b;

    invoke-direct {v4, v3, v2}, Lcom/appodeal/consent/internal/f$b;-><init>(Lcom/appodeal/consent/IConsentInfoUpdateListener;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_4
    sget-object v5, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    invoke-static {}, Lcom/appodeal/consent/internal/g;->a()Lcom/appodeal/consent/internal/k;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/appodeal/consent/internal/k;->a(Lorg/json/JSONObject;)Lcom/appodeal/consent/internal/k$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appodeal/consent/internal/k$a;->a()Lcom/appodeal/consent/Consent;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v5}, Lcom/appodeal/consent/internal/g;->a(Lcom/appodeal/consent/Consent;)V

    invoke-static {}, Lcom/appodeal/consent/internal/g;->b()Lcom/appodeal/consent/Consent;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/appodeal/consent/internal/b;->a(Lcom/appodeal/consent/Consent;Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/consent/internal/g;->b()Lcom/appodeal/consent/Consent;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/appodeal/consent/internal/b;->b(Lcom/appodeal/consent/Consent;Landroid/content/Context;)V

    :goto_3
    invoke-virtual {v4}, Lcom/appodeal/consent/internal/k$a;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    invoke-static {p1}, Lcom/appodeal/consent/internal/g;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/appodeal/consent/internal/k$a;->c()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_4
    invoke-static {p1}, Lcom/appodeal/consent/internal/g;->a(Z)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v4, Lcom/appodeal/consent/internal/f$c;

    invoke-direct {v4, v3, v2}, Lcom/appodeal/consent/internal/f$c;-><init>(Lcom/appodeal/consent/IConsentInfoUpdateListener;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_8

    return-object v0

    :catchall_1
    move-exception p1

    :goto_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcom/appodeal/consent/internal/f$d;

    invoke-direct {v5, v3, p1, v2}, Lcom/appodeal/consent/internal/f$d;-><init>(Lcom/appodeal/consent/IConsentInfoUpdateListener;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/appodeal/consent/internal/f;->i:Lcom/appodeal/consent/IConsentInfoUpdateListener;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcom/appodeal/consent/internal/f$e;

    invoke-direct {v5, p1, v3, v2}, Lcom/appodeal/consent/internal/f$e;-><init>(Lcom/appodeal/consent/IConsentInfoUpdateListener;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/appodeal/consent/internal/f;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/appodeal/consent/internal/f;->b:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/appodeal/consent/internal/f;->e:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
