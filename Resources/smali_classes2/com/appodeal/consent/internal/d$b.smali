.class public final Lcom/appodeal/consent/internal/d$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/d;->a(Lorg/json/JSONObject;)V
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
    c = "com.appodeal.consent.internal.InternalForm$handleClose$1"
    f = "InternalForm.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/consent/internal/d;

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/internal/d;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/consent/internal/d;",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/consent/internal/d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    iput-object p2, p0, Lcom/appodeal/consent/internal/d$b;->b:Lorg/json/JSONObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/appodeal/consent/internal/d$b;

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    iget-object v1, p0, Lcom/appodeal/consent/internal/d$b;->b:Lorg/json/JSONObject;

    invoke-direct {p1, v0, v1, p2}, Lcom/appodeal/consent/internal/d$b;-><init>(Lcom/appodeal/consent/internal/d;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/consent/internal/d$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/consent/internal/d$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/consent/internal/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appodeal/consent/internal/d;->a(Lcom/appodeal/consent/internal/d;I)V

    sget-object p1, Lcom/appodeal/consent/view/ConsentActivity;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lcom/appodeal/consent/view/ConsentActivity$a;->b()V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {p1}, Lcom/appodeal/consent/internal/d;->a(Lcom/appodeal/consent/internal/d;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    iget-object p1, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appodeal/consent/internal/d;->a(Lcom/appodeal/consent/internal/d;Landroid/app/Activity;)V

    sget-object p1, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/appodeal/consent/internal/g;->a(Z)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$b;->b:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/appodeal/consent/internal/g;->b()Lcom/appodeal/consent/Consent;

    move-result-object v0

    sget-object v1, Lcom/appodeal/consent/Consent$Status;->NON_PERSONALIZED:Lcom/appodeal/consent/Consent$Status;

    const/16 v12, 0x1fe

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v13}, Lcom/appodeal/consent/Consent;->copy$default(Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/String;JJLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;ILjava/lang/Object;)Lcom/appodeal/consent/Consent;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/appodeal/consent/Consent;

    invoke-direct {v0, p1}, Lcom/appodeal/consent/Consent;-><init>(Lorg/json/JSONObject;)V

    move-object p1, v0

    :goto_1
    invoke-static {p1}, Lcom/appodeal/consent/internal/g;->a(Lcom/appodeal/consent/Consent;)V

    invoke-static {}, Lcom/appodeal/consent/internal/g;->b()Lcom/appodeal/consent/Consent;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/d;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/appodeal/consent/internal/b;->a(Lcom/appodeal/consent/Consent;Landroid/content/Context;)V

    invoke-static {}, Lcom/appodeal/consent/internal/g;->b()Lcom/appodeal/consent/Consent;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/d;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/appodeal/consent/internal/b;->b(Lcom/appodeal/consent/Consent;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$b;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {p1}, Lcom/appodeal/consent/internal/d;->c()Lcom/appodeal/consent/internal/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/appodeal/consent/internal/d$a;->onClosed()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
