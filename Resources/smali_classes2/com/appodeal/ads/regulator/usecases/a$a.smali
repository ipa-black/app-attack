.class public final Lcom/appodeal/ads/regulator/usecases/a$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/regulator/usecases/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.regulator.usecases.LoadConsentUseCase"
    f = "LoadConsentUseCase.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x30
    }
    m = "invoke-hUnOzRk"
    n = {
        "this",
        "context",
        "appKey",
        "status",
        "zone",
        "publisherConsent"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5"
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/appodeal/ads/regulator/usecases/a;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/regulator/usecases/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/regulator/usecases/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/regulator/usecases/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/regulator/usecases/a$a;->b:Lcom/appodeal/ads/regulator/usecases/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/appodeal/ads/regulator/usecases/a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/regulator/usecases/a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/regulator/usecases/a$a;->c:I

    iget-object v0, p0, Lcom/appodeal/ads/regulator/usecases/a$a;->b:Lcom/appodeal/ads/regulator/usecases/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/appodeal/ads/regulator/usecases/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
