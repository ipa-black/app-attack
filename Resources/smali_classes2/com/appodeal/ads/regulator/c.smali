.class public final Lcom/appodeal/ads/regulator/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/appodeal/ads/regulator/d;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appodeal/ads/regulator/d;

    new-instance v1, Lcom/appodeal/ads/regulator/usecases/a;

    sget-object v2, Lcom/appodeal/consent/ConsentManager;->INSTANCE:Lcom/appodeal/consent/ConsentManager;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/regulator/usecases/a;-><init>(Lcom/appodeal/consent/ConsentManager;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/appodeal/ads/regulator/d;-><init>(Landroid/content/Context;Lcom/appodeal/ads/regulator/usecases/a;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
