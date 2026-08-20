.class public final Lcom/appodeal/ads/regulator/usecases/a$b;
.super Lcom/appodeal/consent/ConsentInfoUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/regulator/usecases/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;Lcom/appodeal/consent/Consent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Result<",
            "Lcom/appodeal/ads/regulator/data/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/appodeal/ads/regulator/usecases/a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lcom/appodeal/ads/regulator/usecases/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/regulator/usecases/a$b;->a:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/appodeal/ads/regulator/usecases/a$b;->b:Lcom/appodeal/ads/regulator/usecases/a;

    invoke-direct {p0}, Lcom/appodeal/consent/ConsentInfoUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdated(Lcom/appodeal/consent/Consent;)V
    .locals 3

    const-string v0, "consent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/regulator/usecases/a$b;->a:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/appodeal/ads/regulator/data/a;

    iget-object v2, p0, Lcom/appodeal/ads/regulator/usecases/a$b;->b:Lcom/appodeal/ads/regulator/usecases/a;

    invoke-static {v2}, Lcom/appodeal/ads/regulator/usecases/a;->a(Lcom/appodeal/ads/regulator/usecases/a;)V

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getShouldShow()Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/appodeal/ads/regulator/data/a;-><init>(Lcom/appodeal/consent/Consent;Z)V

    invoke-static {v1}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFailedToUpdateConsentInfo(Lcom/appodeal/consent/ConsentManagerError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/regulator/usecases/a$b;->a:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/appodeal/consent/ConsentManagerError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
