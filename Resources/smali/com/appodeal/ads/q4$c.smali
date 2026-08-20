.class public final Lcom/appodeal/ads/q4$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/segments/g;D)V
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
    c = "com.appodeal.ads.SdkCore$onImpression$1"
    f = "SdkCore.kt"
    i = {
        0x0
    }
    l = {
        0x353
    }
    m = "invokeSuspend"
    n = {
        "revenueInfo"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/revenue/RevenueInfo;

.field public b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/appodeal/ads/segments/g;

.field public final synthetic g:D

.field public final synthetic h:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/segments/g;DLcom/appodeal/ads/modules/common/internal/adtype/AdType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/segments/g;",
            "D",
            "Lcom/appodeal/ads/modules/common/internal/adtype/AdType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/q4$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/q4$c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/q4$c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/q4$c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/appodeal/ads/q4$c;->f:Lcom/appodeal/ads/segments/g;

    iput-wide p5, p0, Lcom/appodeal/ads/q4$c;->g:D

    iput-object p7, p0, Lcom/appodeal/ads/q4$c;->h:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/appodeal/ads/q4$c;

    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/appodeal/ads/q4$c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/appodeal/ads/q4$c;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/appodeal/ads/q4$c;->f:Lcom/appodeal/ads/segments/g;

    iget-wide v5, p0, Lcom/appodeal/ads/q4$c;->g:D

    iget-object v7, p0, Lcom/appodeal/ads/q4$c;->h:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/appodeal/ads/q4$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/segments/g;DLcom/appodeal/ads/modules/common/internal/adtype/AdType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/q4$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/q4$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/appodeal/ads/q4$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/appodeal/ads/q4$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/appodeal/ads/q4$c;->a:Lcom/appodeal/ads/revenue/RevenueInfo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/appodeal/ads/revenue/RevenueInfo;

    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->c:Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_2

    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v5, v3

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v6, v3

    goto :goto_2

    :cond_4
    move-object v6, v1

    :goto_2
    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->f:Lcom/appodeal/ads/segments/g;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/appodeal/ads/segments/g;->b()Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_6

    move-object v7, v3

    goto :goto_4

    :cond_6
    move-object v7, v1

    :goto_4
    iget-wide v8, p0, Lcom/appodeal/ads/q4$c;->g:D

    const/16 v1, 0x3e8

    int-to-double v10, v1

    div-double/2addr v8, v10

    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->h:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCode()I

    move-result v10

    iget-object v1, p0, Lcom/appodeal/ads/q4$c;->h:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    invoke-virtual {v1}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->getCodeName()Ljava/lang/String;

    move-result-object v11

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/appodeal/ads/revenue/RevenueInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;)V

    sget-object v1, Lcom/appodeal/ads/q4;->a:Lcom/appodeal/ads/q4;

    invoke-static {v1}, Lcom/appodeal/ads/q4;->c(Lcom/appodeal/ads/q4;)Lcom/appodeal/ads/services/c;

    move-result-object v1

    iput-object p1, p0, Lcom/appodeal/ads/q4$c;->a:Lcom/appodeal/ads/revenue/RevenueInfo;

    iput v2, p0, Lcom/appodeal/ads/q4$c;->b:I

    invoke-interface {v1, p1, p0}, Lcom/appodeal/ads/services/c;->a(Lcom/appodeal/ads/revenue/RevenueInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    :goto_5
    invoke-static {}, Lcom/appodeal/ads/q4;->e()Lcom/appodeal/ads/revenue/AdRevenueCallbacks;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p1, v0}, Lcom/appodeal/ads/revenue/AdRevenueCallbacks;->onAdRevenueReceive(Lcom/appodeal/ads/revenue/RevenueInfo;)V

    :goto_6
    invoke-static {}, Lcom/appodeal/ads/q4;->k()Lcom/appodeal/ads/n0;

    move-result-object v1

    iget-object v2, p0, Lcom/appodeal/ads/q4$c;->h:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    iget-wide v3, p0, Lcom/appodeal/ads/q4$c;->g:D

    iget-object v5, p0, Lcom/appodeal/ads/q4$c;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/appodeal/ads/q4$c;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/appodeal/ads/n0;->b(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;DLjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
