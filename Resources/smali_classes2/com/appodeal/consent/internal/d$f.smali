.class public final Lcom/appodeal/consent/internal/d$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/d;->h()V
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
    c = "com.appodeal.consent.internal.InternalForm$show$1"
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
            "Lcom/appodeal/consent/internal/d$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

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

    new-instance p1, Lcom/appodeal/consent/internal/d$f;

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    invoke-direct {p1, v0, p2}, Lcom/appodeal/consent/internal/d$f;-><init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/consent/internal/d$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/consent/internal/d$f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/consent/internal/d$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {p1}, Lcom/appodeal/consent/internal/d;->f()Z

    move-result p1

    sget-object v0, Lcom/appodeal/consent/view/ConsentActivity;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lcom/appodeal/consent/view/ConsentActivity$a;->a()Z

    move-result v0

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    const-string v0, "Consent form is already displayed."

    :goto_0
    invoke-virtual {p1, v0}, Lcom/appodeal/consent/internal/d;->a(Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    invoke-virtual {p1}, Lcom/appodeal/consent/internal/d;->d()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    const-string v0, "Consent form is not ready to be displayed."

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/appodeal/consent/internal/d;->a(Lcom/appodeal/consent/internal/d;I)V

    new-instance p1, Lcom/appodeal/consent/internal/d$f$a;

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    invoke-direct {p1, v0}, Lcom/appodeal/consent/internal/d$f$a;-><init>(Lcom/appodeal/consent/internal/d;)V

    invoke-static {p1}, Lcom/appodeal/consent/view/ConsentActivity$a;->a(Lcom/appodeal/consent/internal/d$f$a;)V

    new-instance p1, Lcom/appodeal/consent/internal/d$f$b;

    iget-object v0, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    invoke-direct {p1, v0}, Lcom/appodeal/consent/internal/d$f$b;-><init>(Lcom/appodeal/consent/internal/d;)V

    invoke-static {p1}, Lcom/appodeal/consent/view/ConsentActivity$a;->a(Lcom/appodeal/consent/internal/d$f$b;)V

    iget-object p1, p0, Lcom/appodeal/consent/internal/d$f;->a:Lcom/appodeal/consent/internal/d;

    invoke-static {p1}, Lcom/appodeal/consent/internal/d;->d(Lcom/appodeal/consent/internal/d;)Lcom/appodeal/consent/view/b;

    move-result-object p1

    invoke-static {p1}, Lcom/appodeal/consent/view/ConsentActivity$a;->a(Lcom/appodeal/consent/view/b;)V

    goto :goto_1
.end method
