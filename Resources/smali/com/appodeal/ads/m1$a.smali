.class public final Lcom/appodeal/ads/m1$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/m1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.InitRequestUseCase"
    f = "InitRequestUseCase.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0xd,
        0x10
    }
    m = "invoke-IoAF18A"
    n = {
        "this",
        "this",
        "jObject"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/m1;

.field public b:Lorg/json/JSONObject;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/appodeal/ads/m1;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/m1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/m1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/m1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/m1$a;->d:Lcom/appodeal/ads/m1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/m1$a;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/m1$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/m1$a;->e:I

    iget-object p1, p0, Lcom/appodeal/ads/m1$a;->d:Lcom/appodeal/ads/m1;

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/m1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
