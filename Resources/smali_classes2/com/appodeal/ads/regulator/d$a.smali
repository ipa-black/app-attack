.class public final Lcom/appodeal/ads/regulator/d$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/regulator/d;-><init>(Landroid/content/Context;Lcom/appodeal/ads/regulator/usecases/a;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/appodeal/ads/regulator/b;",
        "Lcom/appodeal/ads/regulator/a;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/appodeal/ads/regulator/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.regulator.ConsentSdkImpl$1"
    f = "ConsentSdk.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Lcom/appodeal/ads/regulator/a;

.field public final synthetic b:Lcom/appodeal/ads/regulator/d;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/regulator/d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/regulator/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/regulator/d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/regulator/d$a;->b:Lcom/appodeal/ads/regulator/d;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/appodeal/ads/regulator/b;

    check-cast p2, Lcom/appodeal/ads/regulator/a;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/appodeal/ads/regulator/d$a;

    iget-object v0, p0, Lcom/appodeal/ads/regulator/d$a;->b:Lcom/appodeal/ads/regulator/d;

    invoke-direct {p1, v0, p3}, Lcom/appodeal/ads/regulator/d$a;-><init>(Lcom/appodeal/ads/regulator/d;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/appodeal/ads/regulator/d$a;->a:Lcom/appodeal/ads/regulator/a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/regulator/d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/regulator/d$a;->a:Lcom/appodeal/ads/regulator/a;

    instance-of v0, p1, Lcom/appodeal/ads/regulator/a$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/regulator/d$a;->b:Lcom/appodeal/ads/regulator/d;

    check-cast p1, Lcom/appodeal/ads/regulator/a$f;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$f;->b()Lcom/appodeal/consent/Consent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$f;->c()Lcom/appodeal/consent/Consent$Status;

    move-result-object v3

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$f;->d()Lcom/appodeal/consent/Consent$Zone;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/appodeal/ads/regulator/d;->a(Lcom/appodeal/ads/regulator/d;Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V

    sget-object p1, Lcom/appodeal/ads/regulator/b$d;->a:Lcom/appodeal/ads/regulator/b$d;

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/appodeal/ads/regulator/a$b;

    const/4 v1, 0x4

    const-string v2, "ConsentSdk"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    check-cast p1, Lcom/appodeal/ads/regulator/a$b;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/regulator/d$a;->b:Lcom/appodeal/ads/regulator/d;

    invoke-static {p1}, Lcom/appodeal/ads/regulator/d;->e(Lcom/appodeal/ads/regulator/d;)V

    sget-object p1, Lcom/appodeal/ads/regulator/b$e;->a:Lcom/appodeal/ads/regulator/b$e;

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/regulator/d$a;->b:Lcom/appodeal/ads/regulator/d;

    new-instance v1, Lcom/appodeal/ads/regulator/a$c;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$b;->a()Lcom/appodeal/consent/Consent;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/appodeal/ads/regulator/a$c;-><init>(Lcom/appodeal/consent/Consent;)V

    invoke-static {v0, v1}, Lcom/appodeal/ads/regulator/d;->a(Lcom/appodeal/ads/regulator/d;Lcom/appodeal/ads/regulator/a;)V

    sget-object p1, Lcom/appodeal/ads/regulator/b$a;->a:Lcom/appodeal/ads/regulator/b$a;

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Lcom/appodeal/ads/regulator/a$e;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/appodeal/ads/regulator/a$e;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$e;->a()Lcom/appodeal/consent/ConsentForm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/consent/ConsentForm;->show()V

    sget-object p1, Lcom/appodeal/ads/regulator/b$b;->a:Lcom/appodeal/ads/regulator/b$b;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/appodeal/ads/regulator/a$c;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/appodeal/ads/regulator/b$f$b;

    check-cast p1, Lcom/appodeal/ads/regulator/a$c;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$c;->a()Lcom/appodeal/consent/Consent;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appodeal/ads/regulator/b$f$b;-><init>(Lcom/appodeal/consent/Consent;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lcom/appodeal/ads/regulator/a$a;

    if-eqz v0, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/appodeal/ads/regulator/b$f$b;

    check-cast p1, Lcom/appodeal/ads/regulator/a$a;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$a;->a()Lcom/appodeal/consent/Consent;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appodeal/ads/regulator/b$f$b;-><init>(Lcom/appodeal/consent/Consent;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/appodeal/ads/regulator/a$d;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/appodeal/ads/regulator/a$d;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$d;->a()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/appodeal/ads/regulator/b$f$a;

    invoke-virtual {p1}, Lcom/appodeal/ads/regulator/a$d;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appodeal/ads/regulator/b$f$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    return-object p1

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
