.class public final Lcom/appodeal/advertising/AdvertisingInfo$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/advertising/AdvertisingInfo;->fetchAdvertisingProfile(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.appodeal.advertising.AdvertisingInfo$fetchAdvertisingProfile$2"
    f = "AdvertisingInfo.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/advertising/AdvertisingInfo$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/advertising/AdvertisingInfo$a;->a:Landroid/content/Context;

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

    new-instance p1, Lcom/appodeal/advertising/AdvertisingInfo$a;

    iget-object v0, p0, Lcom/appodeal/advertising/AdvertisingInfo$a;->a:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/appodeal/advertising/AdvertisingInfo$a;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/advertising/AdvertisingInfo$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/advertising/AdvertisingInfo$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/advertising/AdvertisingInfo$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lcom/appodeal/advertising/AdvertisingInfo;->access$getState$p()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/appodeal/advertising/b$b;->a:Lcom/appodeal/advertising/b$b;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/appodeal/advertising/AdvertisingInfo;->access$getState$p()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {}, Lcom/appodeal/advertising/AdvertisingInfo;->access$getSupportedAdvertisingProfiles$p()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/advertising/AdvertisingInfo$a;->a:Landroid/content/Context;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->isEnabled$apd_advertising(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;->extractParams$apd_advertising(Landroid/content/Context;)V

    new-instance v4, Lcom/appodeal/advertising/b$a;

    invoke-direct {v4, v2}, Lcom/appodeal/advertising/b$a;-><init>(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    :catchall_0
    :cond_1
    if-eqz v3, :cond_0

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Lcom/appodeal/advertising/b$a;

    sget-object v0, Lcom/appodeal/advertising/AdvertisingInfo;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo;

    iget-object v1, p0, Lcom/appodeal/advertising/AdvertisingInfo$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/appodeal/advertising/AdvertisingInfo;->access$getDefaultProfile(Lcom/appodeal/advertising/AdvertisingInfo;Landroid/content/Context;)Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/appodeal/advertising/b$a;-><init>(Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;)V

    :cond_3
    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
