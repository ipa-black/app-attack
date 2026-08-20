.class public final Lcom/appodeal/consent/internal/d$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/d;->g()V
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
    c = "com.appodeal.consent.internal.InternalForm$load$1"
    f = "InternalForm.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/consent/internal/d;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/consent/internal/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/consent/internal/d$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/appodeal/consent/internal/d$e;

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-direct {p1, v0, p2}, Lcom/appodeal/consent/internal/d$e;-><init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/consent/internal/d$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/consent/internal/d$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/consent/internal/d$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {p1}, Lcom/appodeal/consent/internal/d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    const-string v0, "Cannot simultaneously load multiple consent forms."

    :goto_0
    invoke-virtual {p1, v0}, Lcom/appodeal/consent/internal/d;->a(Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {p1}, Lcom/appodeal/consent/internal/d;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {p1}, Lcom/appodeal/consent/internal/d;->a()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {p1}, Lcom/appodeal/consent/internal/d;->b(Lcom/appodeal/consent/internal/d;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/consent/view/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    const-string v0, "Consent url is not valid."

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/appodeal/consent/internal/d;->a(Lcom/appodeal/consent/internal/d;I)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {p1}, Lcom/appodeal/consent/internal/d;->d(Lcom/appodeal/consent/internal/d;)Lcom/appodeal/consent/view/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/consent/view/b;->a()V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {p1}, Lcom/appodeal/consent/internal/d;->d(Lcom/appodeal/consent/internal/d;)Lcom/appodeal/consent/view/b;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$e;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {v0}, Lcom/appodeal/consent/internal/d;->b(Lcom/appodeal/consent/internal/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
