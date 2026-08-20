.class public final Lcom/appodeal/ads/n0$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/n0;->d(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DLjava/lang/String;Ljava/lang/String;)V
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
    c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onRequestStart$1"
    f = "AppodealRequestCallbacksWrapper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/n0;

.field public final synthetic b:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:D


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/n0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Ljava/lang/String;Ljava/lang/String;DLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/n0;",
            "Lcom/appodeal/ads/modules/common/internal/adtype/AdType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/n0$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/n0$d;->a:Lcom/appodeal/ads/n0;

    iput-object p2, p0, Lcom/appodeal/ads/n0$d;->b:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    iput-object p3, p0, Lcom/appodeal/ads/n0$d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/n0$d;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/appodeal/ads/n0$d;->e:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/appodeal/ads/n0$d;

    iget-object v1, p0, Lcom/appodeal/ads/n0$d;->a:Lcom/appodeal/ads/n0;

    iget-object v2, p0, Lcom/appodeal/ads/n0$d;->b:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    iget-object v3, p0, Lcom/appodeal/ads/n0$d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/appodeal/ads/n0$d;->d:Ljava/lang/String;

    iget-wide v5, p0, Lcom/appodeal/ads/n0$d;->e:D

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/n0$d;-><init>(Lcom/appodeal/ads/n0;Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Ljava/lang/String;Ljava/lang/String;DLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/n0$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/n0$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/n0$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appodeal/ads/n0$d;->a:Lcom/appodeal/ads/n0;

    invoke-static {p1}, Lcom/appodeal/ads/n0;->b(Lcom/appodeal/ads/n0;)Lcom/appodeal/ads/AppodealRequestCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/n0$d;->b:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/n0$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appodeal/ads/n0$d;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/appodeal/ads/n0$d;->e:D

    invoke-interface/range {v0 .. v5}, Lcom/appodeal/ads/AppodealRequestCallbacks;->onRequestStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
