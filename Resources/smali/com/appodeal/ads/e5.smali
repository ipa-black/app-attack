.class public final Lcom/appodeal/ads/e5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/c5;


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/appodeal/ads/context/b;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/e5;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/appodeal/ads/e5;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/e5;->b:Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getTopActivityFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/appodeal/ads/e5$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appodeal/ads/e5$a;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/e5;->a:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
