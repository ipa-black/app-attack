.class public final Lcom/appodeal/ads/context/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;
.implements Lcom/appodeal/ads/modules/common/internal/context/ContextProvider$Synchronizer;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lkotlin/Lazy;

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/appodeal/ads/context/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/app/Activity;

.field public final e:Lcom/appodeal/ads/context/f$b;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/context/f$a;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/context/f$a;-><init>(Lcom/appodeal/ads/context/f;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/context/f;->b:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/appodeal/ads/context/f;->a()Lcom/appodeal/ads/context/a$a;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lcom/appodeal/ads/context/f$b;

    invoke-direct {v1, v0}, Lcom/appodeal/ads/context/f$b;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iput-object v1, p0, Lcom/appodeal/ads/context/f;->e:Lcom/appodeal/ads/context/f$b;

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/context/f;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final a(Lcom/appodeal/ads/context/f;Landroid/app/Activity;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Activity is destroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "ContextProvider"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput-object v3, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/a;

    invoke-interface {v0}, Lcom/appodeal/ads/context/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/context/a;

    instance-of v0, p1, Lcom/appodeal/ads/context/a$b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p1, Lcom/appodeal/ads/context/a$b;

    invoke-direct {p1, v3}, Lcom/appodeal/ads/context/a$b;-><init>(Landroid/app/Activity;)V

    :goto_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    instance-of p1, p1, Lcom/appodeal/ads/context/a$a;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p1, Lcom/appodeal/ads/context/a$a;

    invoke-direct {p1, v3}, Lcom/appodeal/ads/context/a$a;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static final b(Lcom/appodeal/ads/context/f;Landroid/app/Activity;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Resumed Activity updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "ContextProvider"

    invoke-static {v3, v0, v1, v2, v1}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    .line 4
    iget-object v0, p0, Lcom/appodeal/ads/context/f;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 5
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->tryEmit(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/a;

    instance-of v1, v0, Lcom/appodeal/ads/context/a$b;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/appodeal/ads/context/a$b;

    invoke-direct {v0, p1}, Lcom/appodeal/ads/context/a$b;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p0, v0, Lcom/appodeal/ads/context/a$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/ads/context/a$a;
    .locals 2

    new-instance v0, Lcom/appodeal/ads/context/a$a;

    iget-object v1, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/context/a$a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/a;

    invoke-interface {v0}, Lcom/appodeal/ads/context/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->e:Lcom/appodeal/ads/context/f$b;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context not provided"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getApplicationContextOrNull()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getTopActivityFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/context/f;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/a;

    instance-of v1, v0, Lcom/appodeal/ads/context/a$b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/appodeal/ads/context/a$a;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/appodeal/ads/context/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lcom/appodeal/ads/context/a$a;

    invoke-direct {v1, p1}, Lcom/appodeal/ads/context/a$a;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/appodeal/ads/context/f;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {p0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/context/f;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/h;

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setAutomaticActivityObserving(Z)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/context/a;

    if-eqz p1, :cond_0

    instance-of p1, v0, Lcom/appodeal/ads/context/a$b;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/appodeal/ads/context/a$b;

    iget-object v1, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/context/a$b;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    instance-of p1, v0, Lcom/appodeal/ads/context/a$a;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/appodeal/ads/context/f;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/appodeal/ads/context/a$a;

    iget-object v1, p0, Lcom/appodeal/ads/context/f;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/context/a$a;-><init>(Landroid/app/Activity;)V

    :goto_0
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
