.class public final Lcom/appodeal/consent/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/consent/view/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/consent/internal/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/appodeal/consent/internal/d$a;

.field public c:I

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lkotlin/Lazy;

.field public f:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/consent/internal/d$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/consent/internal/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/consent/internal/d;->b:Lcom/appodeal/consent/internal/d$a;

    const/4 p1, 0x1

    iput p1, p0, Lcom/appodeal/consent/internal/d;->c:I

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/appodeal/consent/internal/d$g;

    invoke-direct {p1, p0}, Lcom/appodeal/consent/internal/d$g;-><init>(Lcom/appodeal/consent/internal/d;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/consent/internal/d;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/consent/internal/d;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/internal/d;->f:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic a(Lcom/appodeal/consent/internal/d;I)V
    .locals 0

    iput p1, p0, Lcom/appodeal/consent/internal/d;->c:I

    return-void
.end method

.method public static final synthetic a(Lcom/appodeal/consent/internal/d;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/consent/internal/d;->f:Landroid/app/Activity;

    return-void
.end method

.method public static final b(Lcom/appodeal/consent/internal/d;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p0, Lcom/appodeal/consent/internal/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/appodeal/consent/internal/d;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final d(Lcom/appodeal/consent/internal/d;)Lcom/appodeal/consent/view/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appodeal/consent/internal/d;->e:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appodeal/consent/view/b;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/appodeal/consent/internal/d$d;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/appodeal/consent/internal/d$d;-><init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/appodeal/consent/internal/d$c;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, v1}, Lcom/appodeal/consent/internal/d$c;-><init>(Ljava/lang/String;Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/appodeal/consent/internal/d$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/appodeal/consent/internal/d$b;-><init>(Lcom/appodeal/consent/internal/d;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/appodeal/consent/internal/d$a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->b:Lcom/appodeal/consent/internal/d$a;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/appodeal/consent/internal/d;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/appodeal/consent/internal/d;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/appodeal/consent/internal/d;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/appodeal/consent/internal/d$e;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/appodeal/consent/internal/d$e;-><init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Lcom/appodeal/consent/internal/d;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/appodeal/consent/internal/d$f;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/appodeal/consent/internal/d$f;-><init>(Lcom/appodeal/consent/internal/d;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
