.class public final Lcom/appodeal/ads/services/e;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.services.ServicesSolutionImpl"
    f = "ServicesSolutionImpl.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x2f
    }
    m = "validatePurchase"
    n = {
        "purchase",
        "callback"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/inapp/InAppPurchase;

.field public b:Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/appodeal/ads/services/d;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/services/d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/services/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/services/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/services/e;->d:Lcom/appodeal/ads/services/d;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/services/e;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/services/e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/services/e;->e:I

    iget-object p1, p0, Lcom/appodeal/ads/services/e;->d:Lcom/appodeal/ads/services/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/appodeal/ads/services/d;->a(Lcom/appodeal/ads/inapp/InAppPurchase;Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;Lcom/appodeal/ads/q4$h$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
